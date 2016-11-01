.class Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;
.super Ljava/lang/Object;
.source "LauncherUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "callMMFragmentFeatureRunnable"
.end annotation


# instance fields
.field private final key:I

.field final synthetic this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;


# direct methods
.method public constructor <init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;I)V
    .registers 3
    .param p2, "key"    # I

    .prologue
    .line 102
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p2, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;->key:I

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 107
    iget-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->LauncherUI_INSTANCE_WeakRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$000(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 108
    .local v0, "LauncherUI_INSTANCE":Landroid/app/Activity;
    if-eqz v0, :cond_15

    .line 109
    iget v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;->key:I

    packed-switch v1, :pswitch_data_76

    .line 164
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 111
    :pswitch_16
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->switchMMFragment(Landroid/app/Activity;I)V

    goto :goto_15

    .line 114
    :pswitch_1b
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->switchMMFragment(Landroid/app/Activity;I)V

    goto :goto_15

    .line 117
    :pswitch_20
    invoke-static {v0, v2}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->switchMMFragment(Landroid/app/Activity;I)V

    goto :goto_15

    .line 120
    :pswitch_24
    const-string v1, "album_dyna_photo_ui_title"

    invoke-static {v0, v2, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 123
    :pswitch_2a
    const-string v1, "find_friends_by_qrcode"

    invoke-static {v0, v2, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 126
    :pswitch_30
    const-string v1, "find_friends_by_shake"

    invoke-static {v0, v2, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 129
    :pswitch_36
    const-string v1, "find_friends_by_near"

    invoke-static {v0, v2, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 132
    :pswitch_3c
    const-string v1, "voice_bottle"

    invoke-static {v0, v2, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 135
    :pswitch_42
    const-string v1, "jd_market_entrance"

    invoke-static {v0, v2, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 138
    :pswitch_48
    const-string v1, "more_tab_game_recommend"

    invoke-static {v0, v2, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 141
    :pswitch_4e
    invoke-static {v0, v3}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->switchMMFragment(Landroid/app/Activity;I)V

    goto :goto_15

    .line 144
    :pswitch_52
    const-string v1, "settings_my_album"

    invoke-static {v0, v3, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 147
    :pswitch_58
    const-string v1, "settings_mm_favorite"

    invoke-static {v0, v3, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 150
    :pswitch_5e
    const-string v1, "settings_mm_wallet"

    invoke-static {v0, v3, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 153
    :pswitch_64
    const-string v1, "settings_mm_cardpackage"

    invoke-static {v0, v3, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 156
    :pswitch_6a
    const-string v1, "settings_emoji_store"

    invoke-static {v0, v3, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 159
    :pswitch_70
    const-string v1, "more_setting"

    invoke-static {v0, v3, v1}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_15

    .line 109
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_20
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_15
        :pswitch_15
        :pswitch_4e
        :pswitch_52
        :pswitch_58
        :pswitch_5e
        :pswitch_64
        :pswitch_6a
        :pswitch_70
    .end packed-switch
.end method
