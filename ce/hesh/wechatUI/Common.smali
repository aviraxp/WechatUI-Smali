.class public Lce/hesh/wechatUI/Common;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/hesh/wechatUI/Common$DrawerListItem;,
        Lce/hesh/wechatUI/Common$DIY_TEXT;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACTIONBAR_COLOR:Ljava/lang/String; = "#22292C"

.field public static final DRAWER_BG_PNG:Ljava/lang/String; = "drawer_bg.jpg"

.field public static final KEY_ACTIONBAR_COLOR:Ljava/lang/String; = "actionbar_color"

.field public static final KEY_BUBBLE:Ljava/lang/String; = "enable_bubble"

.field public static final KEY_DISABLED_ITEMS:Ljava/lang/String; = "disabled_items"

.field public static final KEY_DONATE:Ljava/lang/String; = "donate"

.field public static final KEY_DRAWER_GRAVITY:Ljava/lang/String; = "drawer_gravity"

.field public static final KEY_DT_card_package:Ljava/lang/String; = "DT_card_package"

.field public static final KEY_DT_collect:Ljava/lang/String; = "DT_collect"

.field public static final KEY_DT_contact:Ljava/lang/String; = "DT_contact"

.field public static final KEY_DT_discovery:Ljava/lang/String; = "DT_discovery"

.field public static final KEY_DT_drift_bottle:Ljava/lang/String; = "DT_drift_bottle"

.field public static final KEY_DT_emoj:Ljava/lang/String; = "DT_emoj"

.field public static final KEY_DT_games:Ljava/lang/String; = "DT_games"

.field public static final KEY_DT_main_chat:Ljava/lang/String; = "DT_main_chat"

.field public static final KEY_DT_me:Ljava/lang/String; = "DT_me"

.field public static final KEY_DT_moments:Ljava/lang/String; = "DT_moments"

.field public static final KEY_DT_nearby_people:Ljava/lang/String; = "DT_nearby_people"

.field public static final KEY_DT_photo:Ljava/lang/String; = "DT_photo"

.field public static final KEY_DT_setting:Ljava/lang/String; = "DT_setting"

.field public static final KEY_DT_shopping:Ljava/lang/String; = "DT_shopping"

.field public static final KEY_DT_sns_scan:Ljava/lang/String; = "DT_sns_scan"

.field public static final KEY_DT_sns_shake:Ljava/lang/String; = "DT_sns_shake"

.field public static final KEY_DT_wallet:Ljava/lang/String; = "DT_wallet"

.field public static final KEY_ENABLE_ACTIONBAR_COLOR:Ljava/lang/String; = "enable_actionbar_color"

.field public static final KEY_ENABLE_DIY_COLOR:Ljava/lang/String; = "enable_diy_color"

.field public static final KEY_FORCE_STATUSBAR_COLOR:Ljava/lang/String; = "force_statusbar_color"

.field public static final KEY_KILL_WECHAT:Ljava/lang/String; = "kill_wechat"

.field public static final KEY_NO_AVATAR:Ljava/lang/String; = "no_avatar"

.field public static final KEY_NO_NAVIGATIONBAR:Ljava/lang/String; = "no_navigationbar"

.field public static final KEY_NO_WECHATID:Ljava/lang/String; = "no_wechatid"

.field public static final KEY_SETNAV:Ljava/lang/String; = "setnav"

.field public static MM_Context:Landroid/content/Context; = null

.field public static MOD_Context:Landroid/content/Context; = null

.field public static final MOD_PACKAGENAME:Ljava/lang/String; = "ce.hesh.wechatUI"

.field public static final MOD_PREFS:Ljava/lang/String; = "mod_settings"

.field public static MOD_RES:Landroid/content/res/XModuleResources; = null

.field public static final SYSTEMUI_PACKAGENAME:Ljava/lang/String; = "com.android.systemui"

.field public static final WECHAT_PACKAGENAME:Ljava/lang/String; = "com.tencent.mm"

.field public static XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences; = null

.field public static final item_main_addcontact:I = 0x14

.field public static final item_main_chat:I = 0x0

.field public static final item_main_contact:I = 0x1

.field public static final item_main_more:I = 0x1e

.field public static final item_me_card_package:I = 0x22

.field public static item_me_card_package_enabled:Z = false

.field public static final item_me_emoji_store:I = 0x23

.field public static item_me_emoji_store_enabled:Z = false

.field public static final item_me_favorites:I = 0x20

.field public static final item_me_posts:I = 0x1f

.field public static final item_me_settings:I = 0x24

.field public static final item_me_wallet:I = 0x21

.field public static final item_sns_drift_bottle:I = 0x19

.field public static item_sns_drift_bottle_enabled:Z = false

.field public static final item_sns_games:I = 0x1b

.field public static item_sns_games_enabled:Z = false

.field public static final item_sns_moments:I = 0x15

.field public static item_sns_moments_enabled:Z = false

.field public static final item_sns_people_nearby:I = 0x18

.field public static item_sns_people_nearby_enabled:Z = false

.field public static final item_sns_scan:I = 0x16

.field public static final item_sns_shake:I = 0x17

.field public static item_sns_shake_enabled:Z = false

.field public static final item_sns_shopping:I = 0x1a

.field public static item_sns_shopping_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    sput-object v1, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    .line 53
    sput-object v1, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    .line 56
    sput-object v1, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    .line 59
    sput-object v1, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    .line 65
    sput-boolean v0, Lce/hesh/wechatUI/Common;->item_me_card_package_enabled:Z

    .line 67
    sput-boolean v0, Lce/hesh/wechatUI/Common;->item_me_emoji_store_enabled:Z

    .line 73
    sput-boolean v0, Lce/hesh/wechatUI/Common;->item_sns_drift_bottle_enabled:Z

    .line 75
    sput-boolean v0, Lce/hesh/wechatUI/Common;->item_sns_games_enabled:Z

    .line 77
    sput-boolean v0, Lce/hesh/wechatUI/Common;->item_sns_moments_enabled:Z

    .line 79
    sput-boolean v0, Lce/hesh/wechatUI/Common;->item_sns_people_nearby_enabled:Z

    .line 82
    sput-boolean v0, Lce/hesh/wechatUI/Common;->item_sns_shake_enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method public static dipTopx(Landroid/content/Context;J)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # J

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 238
    .local v0, "dme":Landroid/util/DisplayMetrics;
    long-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getDarkerColor(IF)I
    .registers 5
    .param p0, "color"    # I
    .param p1, "factor"    # F

    .prologue
    const/4 v2, 0x2

    .line 249
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 250
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 251
    aget v1, v0, v2

    mul-float/2addr v1, p1

    aput v1, v0, v2

    .line 252
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getDrawerWidthdip(Landroid/content/Context;)J
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_11

    .line 243
    const-wide/16 v0, 0x104

    .line 245
    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x128

    goto :goto_10
.end method
