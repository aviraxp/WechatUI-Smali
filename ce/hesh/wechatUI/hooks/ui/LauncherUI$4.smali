.class final Lce/hesh/wechatUI/hooks/ui/LauncherUI$4;
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
    .line 262
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isForceStatusBarColor()Z

    move-result v3

    if-nez v3, :cond_e

    .line 277
    :cond_d
    :goto_d
    return-void

    .line 267
    :cond_e
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v3, v5

    check-cast v2, Landroid/view/ViewGroup;

    .line 268
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 269
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 270
    .local v0, "bom":I
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isNoNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 271
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 272
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aput-object v2, v3, v5

    goto :goto_d

    .line 275
    :cond_29
    sget-object v3, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-static {v3}, Lce/hesh/wechatUI/utils/DisplayUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-static {v4}, Lce/hesh/wechatUI/utils/DisplayUtils;->getNavigationBarHeight2(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 276
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aput-object v2, v3, v5

    goto :goto_d
.end method
