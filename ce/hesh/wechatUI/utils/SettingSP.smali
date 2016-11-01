.class public Lce/hesh/wechatUI/utils/SettingSP;
.super Ljava/lang/Object;
.source "SettingSP.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawerGravity()Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "drawer_gravity"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBubble()Z
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "enable_bubble"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnableActionBarColor()Z
    .registers 3

    .prologue
    .line 11
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "enable_actionbar_color"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isForceStatusBarColor()Z
    .registers 3

    .prologue
    .line 19
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "force_statusbar_color"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNoAvatar()Z
    .registers 3

    .prologue
    .line 7
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "no_avatar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNoNavigationBar()Z
    .registers 3

    .prologue
    .line 15
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "no_navigationbar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNowechatID()Z
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "no_wechatid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
