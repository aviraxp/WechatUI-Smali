.class final Lce/hesh/wechatUI/hooks/ui/LauncherUI$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "LauncherUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUI;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 248
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isForceStatusBarColor()Z

    move-result v0

    if-nez v0, :cond_e

    .line 258
    :cond_d
    :goto_d
    return-void

    .line 253
    :cond_e
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isNoNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 254
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_d

    .line 257
    :cond_1d
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-static {v2}, Lce/hesh/wechatUI/utils/DisplayUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-static {v3}, Lce/hesh/wechatUI/utils/DisplayUtils;->getNavigationBarHeight2(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_d
.end method
