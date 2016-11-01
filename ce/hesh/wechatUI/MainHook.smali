.class public Lce/hesh/wechatUI/MainHook;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "MainHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookInitPackageResources;


# static fields
.field private static MODULE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lce/hesh/wechatUI/MainHook;->MODULE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
    .registers 4
    .param p1, "resparam"    # Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    if-nez v0, :cond_18

    .line 48
    sget-object v0, Lce/hesh/wechatUI/MainHook;->MODULE_PATH:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->res:Landroid/content/res/XResources;

    invoke-static {v0, v1}, Landroid/content/res/XModuleResources;->createInstance(Ljava/lang/String;Landroid/content/res/XResources;)Landroid/content/res/XModuleResources;

    move-result-object v0

    sput-object v0, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    .line 50
    :cond_18
    return-void
.end method

.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 8
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 33
    :try_start_14
    const-string v2, "android.app.ActivityThread"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getSystemContext"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 34
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.tencent.mm"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lce/hesh/wechatUI/ObfuscationHelper;->init(ILjava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 35
    invoke-static {p1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 36
    invoke-static {p1}, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 37
    invoke-static {p1}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 38
    invoke-static {p1}, Lce/hesh/wechatUI/hooks/Hack_Resources;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_5b} :catch_5c

    .line 44
    .end local v0    # "context":Landroid/content/Context;
    :cond_5b
    :goto_5b
    return-void

    .line 40
    :catch_5c
    move-exception v1

    .line 41
    .local v1, "l":Ljava/lang/Throwable;
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_5b
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .registers 5
    .param p1, "startupParam"    # Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p1, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    sput-object v0, Lce/hesh/wechatUI/MainHook;->MODULE_PATH:Ljava/lang/String;

    .line 27
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "ce.hesh.wechatUI"

    const-string v2, "mod_settings"

    invoke-direct {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    .line 28
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->makeWorldReadable()Z

    .line 29
    return-void
.end method
