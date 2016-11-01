.class final Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$2;
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
    .line 25
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
    .line 27
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    .local v0, "i":I
    sget-object v2, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->tabViews:Ljava/util/WeakHashMap;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 29
    .local v1, "launcherUI":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    if-eqz v1, :cond_33

    const-string v2, "navidrawer"

    sget-object v3, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v4, "setnav"

    const-string v5, "default"

    invoke-virtual {v3, v4, v5}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    if-eqz v2, :cond_33

    .line 30
    iget-object v2, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-virtual {v2, v0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setContactUnread(I)V

    .line 34
    :cond_32
    :goto_32
    return-void

    .line 31
    :cond_33
    if-eqz v1, :cond_32

    const-string v2, "tabs"

    sget-object v3, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v4, "setnav"

    const-string v5, "default"

    invoke-virtual {v3, v4, v5}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    if-eqz v2, :cond_32

    .line 32
    iget-object v2, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->contactTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    invoke-virtual {v2, v0}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    goto :goto_32
.end method
