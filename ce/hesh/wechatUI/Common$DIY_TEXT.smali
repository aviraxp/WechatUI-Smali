.class public Lce/hesh/wechatUI/Common$DIY_TEXT;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DIY_TEXT"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDT_card_package()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 173
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 176
    :goto_5
    return-object v0

    .line 175
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 176
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_card_package"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_collect()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 161
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 164
    :goto_5
    return-object v0

    .line 163
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 164
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_collect"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_contact()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 97
    :goto_5
    return-object v0

    .line 96
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 97
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_contact"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_discovery()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 100
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 103
    :goto_5
    return-object v0

    .line 102
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 103
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_discovery"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_drift_bottle()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 130
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 133
    :goto_5
    return-object v0

    .line 132
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 133
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_drift_bottle"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_emoj()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 179
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 182
    :goto_5
    return-object v0

    .line 181
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 182
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_emoj"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_games()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 143
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 146
    :goto_5
    return-object v0

    .line 145
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 146
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_games"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_main_chat()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 88
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 91
    :goto_5
    return-object v0

    .line 90
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 91
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_main_chat"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_me()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 149
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 152
    :goto_5
    return-object v0

    .line 151
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 152
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_me"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_moments()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 106
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 109
    :goto_5
    return-object v0

    .line 108
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 109
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_moments"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_nearby_people()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 127
    :goto_5
    return-object v0

    .line 126
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 127
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_nearby_people"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_photo()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 155
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 158
    :goto_5
    return-object v0

    .line 157
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 158
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_photo"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_setting()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 185
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 188
    :goto_5
    return-object v0

    .line 187
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 188
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_setting"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_shopping()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 136
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 140
    :goto_5
    return-object v0

    .line 139
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 140
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_shopping"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_sns_scan()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 112
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 115
    :goto_5
    return-object v0

    .line 114
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 115
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_sns_scan"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_sns_shake()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 118
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 121
    :goto_5
    return-object v0

    .line 120
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 121
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_sns_shake"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getDT_wallet()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 167
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_6

    .line 170
    :goto_5
    return-object v0

    .line 169
    :cond_6
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 170
    sget-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "DT_wallet"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
