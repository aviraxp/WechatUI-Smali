.class final Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "LauncherUIBottomTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
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

    .line 38
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6d

    .line 39
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->tabViews:Ljava/util/WeakHashMap;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 40
    .local v0, "launcherUI":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    sget-boolean v1, Lce/hesh/wechatUI/Common;->item_sns_moments_enabled:Z

    if-nez v1, :cond_27

    sget-boolean v1, Lce/hesh/wechatUI/Common;->item_sns_drift_bottle_enabled:Z

    if-nez v1, :cond_27

    sget-boolean v1, Lce/hesh/wechatUI/Common;->item_sns_people_nearby_enabled:Z

    if-nez v1, :cond_27

    sget-boolean v1, Lce/hesh/wechatUI/Common;->item_sns_shake_enabled:Z

    if-eqz v1, :cond_40

    :cond_27
    if-eqz v0, :cond_40

    const-string v1, "navidrawer"

    sget-object v2, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v3, "setnav"

    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 46
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawer_indicator_poi:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :cond_40
    if-eqz v0, :cond_6d

    const-string v1, "tabs"

    sget-object v2, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v3, "setnav"

    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 49
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    invoke-virtual {v1, v5}, Lce/hesh/wechatUI/view/BadgeView;->setShowBackgroundOnly(Z)V

    .line 50
    iget-object v2, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    .line 51
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    invoke-virtual {v1}, Lce/hesh/wechatUI/view/BadgeView;->show()V

    .line 54
    .end local v0    # "launcherUI":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    :cond_6d
    return-void
.end method
