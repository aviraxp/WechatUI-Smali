.class final Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "MMFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/high16 v5, -0x80000000

    .line 40
    sget-object v3, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v3}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 41
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v3

    if-nez v3, :cond_e

    .line 70
    :cond_d
    :goto_d
    return-void

    .line 44
    :cond_e
    sget v3, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_d

    .line 47
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 48
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 49
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "activityName":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_d

    .line 52
    const-string v3, "com.tencent.mm.plugin.gallery.ui.ImagePreviewUI"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 53
    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 54
    sput-object v0, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->launcherUIActivity:Landroid/app/Activity;

    .line 60
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isForceStatusBarColor()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 61
    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_d

    .line 63
    :cond_4c
    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_d

    .line 66
    :cond_50
    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_d
.end method
