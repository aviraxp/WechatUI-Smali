.class final Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$4;
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
    .line 56
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 9
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->tabViews:Ljava/util/WeakHashMap;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 59
    .local v0, "launcherUI":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    sget-boolean v1, Lce/hesh/wechatUI/Common;->item_sns_moments_enabled:Z

    if-eqz v1, :cond_3a

    if-eqz v0, :cond_3a

    const-string v1, "navidrawer"

    sget-object v2, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v3, "setnav"

    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 62
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 63
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawer_indicator_poi:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-virtual {v1, v6}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V

    .line 71
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_64

    const-string v1, "tabs"

    sget-object v2, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v3, "setnav"

    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 72
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 73
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    invoke-virtual {v1, v6}, Lce/hesh/wechatUI/view/BadgeView;->setShowBackgroundOnly(Z)V

    .line 74
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    invoke-virtual {v1}, Lce/hesh/wechatUI/view/BadgeView;->show()V

    .line 80
    :cond_64
    :goto_64
    return-void

    .line 66
    :cond_65
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawer_indicator_poi:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-virtual {v1, v5}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V

    goto :goto_3a

    .line 77
    :cond_71
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    invoke-virtual {v1, v6}, Lce/hesh/wechatUI/view/BadgeView;->setShowBackgroundOnly(Z)V

    .line 78
    iget-object v1, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    invoke-virtual {v1}, Lce/hesh/wechatUI/view/BadgeView;->hide()V

    goto :goto_64
.end method
