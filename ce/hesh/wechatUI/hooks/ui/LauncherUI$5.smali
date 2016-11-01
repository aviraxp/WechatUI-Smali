.class final Lce/hesh/wechatUI/hooks/ui/LauncherUI$5;
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
    .line 283
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 297
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "launcherUIMod"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 298
    .local v0, "launcherUIMod":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->isMainTabCreated:Z
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$500(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Z

    move-result v1

    if-nez v1, :cond_3e

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->AccountStorage:Ljava/lang/Class;

    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->isMMcoreReady:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 299
    const-string v1, "navidrawer"

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$600(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 300
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->removeMMTabs(Landroid/app/Activity;Z)V
    invoke-static {v0, v1, v4}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$700(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;Z)V

    .line 301
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->addNavigationDrawer(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$800(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;)V

    .line 309
    :cond_3e
    :goto_3e
    return-void

    .line 302
    :cond_3f
    const-string v1, "notabs"

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$600(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 303
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->removeMMTabs(Landroid/app/Activity;Z)V
    invoke-static {v0, v1, v5}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$700(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;Z)V

    goto :goto_3e

    .line 304
    :cond_53
    const-string v1, "tabs"

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$600(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 305
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->removeMMTabs(Landroid/app/Activity;Z)V
    invoke-static {v0, v1, v5}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$700(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;Z)V

    .line 306
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->addTabs(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$900(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;)V

    goto :goto_3e
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "launcherUIMod"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 286
    .local v0, "launcherUIMod":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->isMainTabCreated:Ljava/lang/String;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # setter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->isMainTabCreated:Z
    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$502(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Z)Z

    .line 287
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 288
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3a

    .line 289
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "setnav"

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$602(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    :goto_39
    return-void

    .line 291
    :cond_3a
    const-string v1, "default"

    # setter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$602(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_39
.end method
