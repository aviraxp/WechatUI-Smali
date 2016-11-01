.class public Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;
.super Ljava/lang/Object;
.source "ObfuscationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/ObfuscationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MM_Methods"
.end annotation


# static fields
.field public static createTabView:Ljava/lang/String;

.field public static getAccStg:Ljava/lang/String;

.field public static getActionBarColor:Ljava/lang/String;

.field public static getBottleUnreadCount:Ljava/lang/String;

.field public static getFragment:Ljava/lang/String;

.field public static getLBSVerifyMessage:Ljava/lang/String;

.field public static getMomentsUnreadCount:Ljava/lang/String;

.field public static getNickname:Ljava/lang/String;

.field public static getOrigUsername:Ljava/lang/String;

.field public static getShakeVerifyMessage:Ljava/lang/String;

.field public static getUserInfoFromDB:Ljava/lang/String;

.field public static getUsername:Ljava/lang/String;

.field public static getVerifyMessageCount:Ljava/lang/String;

.field public static initActionBar:Ljava/lang/String;

.field public static isMMcoreReady:Ljava/lang/String;

.field public static setActionBarView:Ljava/lang/String;

.field public static setAvatarByOrigUsername:Ljava/lang/String;

.field public static setContactTabUnread:Ljava/lang/String;

.field public static setCurrentPagerItem:Ljava/lang/String;

.field public static setFriendTabUnread:Ljava/lang/String;

.field public static setMainTabUnread:Ljava/lang/String;

.field public static setShowFriendPoint:Ljava/lang/String;

.field public static startMMActivity:Ljava/lang/String;

.field public static startMainUI:Ljava/lang/String;

.field public static startPluginActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)V
    .registers 1
    .param p0, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->init(I)V

    return-void
.end method

.method private static init(I)V
    .registers 9
    .param p0, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "aKw"

    aput-object v1, v0, v3

    const-string v1, "aLJ"

    aput-object v1, v0, v4

    const-string v1, "aNp"

    aput-object v1, v0, v6

    const-string v1, "aNr"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "aPu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "aPv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aRK"

    aput-object v2, v0, v1

    const-string v1, "aRT"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "ban"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bbu"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bef"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bfI"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "biA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "biI"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bpi"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->startMainUI:Ljava/lang/String;

    .line 119
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "aKC"

    aput-object v1, v0, v3

    aget-object v0, v0, v3

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->createTabView:Ljava/lang/String;

    .line 120
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nc"

    aput-object v1, v0, v3

    const-string v1, "nx"

    aput-object v1, v0, v4

    const-string v1, "nU"

    aput-object v1, v0, v6

    const-string v1, "nU"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "oh"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "oi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "oQ"

    aput-object v2, v0, v1

    const-string v1, "oS"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "qt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ss"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ss"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tW"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setCurrentPagerItem:Ljava/lang/String;

    .line 121
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nd"

    aput-object v1, v0, v3

    const-string v1, "ny"

    aput-object v1, v0, v4

    const-string v1, "nV"

    aput-object v1, v0, v6

    const-string v1, "nV"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "oi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "oj"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "oR"

    aput-object v2, v0, v1

    const-string v1, "oT"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "qv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rq"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tX"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getFragment:Ljava/lang/String;

    .line 122
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "aKD"

    aput-object v1, v0, v3

    const-string v1, "aLP"

    aput-object v1, v0, v4

    const-string v1, "aNv"

    aput-object v1, v0, v6

    const-string v1, "aNx"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "aPA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "aPB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aRQ"

    aput-object v2, v0, v1

    const-string v1, "aRZ"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "bau"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bbB"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bem"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bfP"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "biH"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "biP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bpp"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->initActionBar:Ljava/lang/String;

    .line 123
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "qU"

    aput-object v1, v0, v3

    const-string v1, "rc"

    aput-object v1, v0, v4

    const-string v1, "ri"

    aput-object v1, v0, v6

    const-string v1, "ri"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "rv"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ry"

    aput-object v2, v0, v1

    const-string v1, "rB"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "qw"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "qy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "qW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tf"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "tg"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vK"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->isMMcoreReady:Ljava/lang/String;

    .line 124
    if-gt p0, v5, :cond_1e5

    .line 125
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "aKG"

    aput-object v1, v0, v3

    const-string v1, "aLS"

    aput-object v1, v0, v4

    const-string v1, "aNy"

    aput-object v1, v0, v6

    const-string v1, "aNA"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "aPD"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "aPE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aRT"

    aput-object v2, v0, v1

    const-string v1, "aSc"

    aput-object v1, v0, v5

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getActionBarColor:Ljava/lang/String;

    .line 128
    :cond_1e5
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "aON"

    aput-object v1, v0, v3

    const-string v1, "aQb"

    aput-object v1, v0, v4

    const-string v1, "aRE"

    aput-object v1, v0, v6

    const-string v1, "aRG"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "aTD"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "aTD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aVT"

    aput-object v2, v0, v1

    const-string v1, "aWc"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "beQ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bfU"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "biY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bkC"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bnL"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bnW"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bux"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setActionBarView:Ljava/lang/String;

    .line 130
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mV"

    aput-object v1, v0, v3

    const-string v1, "np"

    aput-object v1, v0, v4

    const-string v1, "nN"

    aput-object v1, v0, v6

    const-string v1, "nN"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "oa"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ob"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "oJ"

    aput-object v2, v0, v1

    const-string v1, "oL"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "qo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "qn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rj"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tQ"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setMainTabUnread:Ljava/lang/String;

    .line 131
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mW"

    aput-object v1, v0, v3

    const-string v1, "nq"

    aput-object v1, v0, v4

    const-string v1, "nO"

    aput-object v1, v0, v6

    const-string v1, "nO"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "ob"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "oc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "oK"

    aput-object v2, v0, v1

    const-string v1, "oM"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "qp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "qo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rk"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rF"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tS"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setContactTabUnread:Ljava/lang/String;

    .line 132
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mX"

    aput-object v1, v0, v3

    const-string v1, "nr"

    aput-object v1, v0, v4

    const-string v1, "nP"

    aput-object v1, v0, v6

    const-string v1, "nP"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "oc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "od"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "oL"

    aput-object v2, v0, v1

    const-string v1, "oN"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "qq"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "qp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rG"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "so"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "so"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tT"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setFriendTabUnread:Ljava/lang/String;

    .line 133
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "eR"

    aput-object v1, v0, v3

    const-string v1, "eV"

    aput-object v1, v0, v4

    const-string v1, "fv"

    aput-object v1, v0, v6

    const-string v1, "fv"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "fF"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fF"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fX"

    aput-object v2, v0, v1

    const-string v1, "fZ"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "gB"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gF"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hB"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hB"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hY"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setShowFriendPoint:Ljava/lang/String;

    .line 135
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v3

    const-string v1, "a"

    aput-object v1, v0, v4

    const-string v1, "a"

    aput-object v1, v0, v6

    const-string v1, "a"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "a"

    aput-object v2, v0, v1

    const-string v1, "a"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "a"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->startMMActivity:Ljava/lang/String;

    .line 137
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rO"

    aput-object v1, v0, v3

    const-string v1, "rW"

    aput-object v1, v0, v4

    const-string v1, "sc"

    aput-object v1, v0, v6

    const-string v1, "sc"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "sp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ss"

    aput-object v2, v0, v1

    const-string v1, "sv"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "rs"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rV"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sf"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ue"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "uf"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "wJ"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getUsername:Ljava/lang/String;

    .line 138
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rN"

    aput-object v1, v0, v3

    const-string v1, "rV"

    aput-object v1, v0, v4

    const-string v1, "sb"

    aput-object v1, v0, v6

    const-string v1, "sb"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "so"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "so"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sr"

    aput-object v2, v0, v1

    const-string v1, "su"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rU"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ud"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ue"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "wI"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getOrigUsername:Ljava/lang/String;

    .line 139
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v3

    const-string v1, "a"

    aput-object v1, v0, v4

    const-string v1, "a"

    aput-object v1, v0, v6

    const-string v1, "a"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "a"

    aput-object v2, v0, v1

    const-string v1, "a"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "a"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getNickname:Ljava/lang/String;

    .line 141
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "b"

    aput-object v1, v0, v3

    const-string v1, "b"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v6

    const-string v1, "b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "a"

    aput-object v2, v0, v1

    const-string v1, "a"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "a"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setAvatarByOrigUsername:Ljava/lang/String;

    .line 144
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tg"

    aput-object v1, v0, v3

    const-string v1, "to"

    aput-object v1, v0, v4

    const-string v1, "tu"

    aput-object v1, v0, v6

    const-string v1, "tu"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "tI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tL"

    aput-object v2, v0, v1

    const-string v1, "tO"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "sP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tu"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "yi"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getAccStg:Ljava/lang/String;

    .line 145
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ra"

    aput-object v1, v0, v3

    const-string v1, "ri"

    aput-object v1, v0, v4

    const-string v1, "ro"

    aput-object v1, v0, v6

    const-string v1, "ro"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "rB"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rE"

    aput-object v2, v0, v1

    const-string v1, "rH"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "qC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "qE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "re"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "to"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vS"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getUserInfoFromDB:Ljava/lang/String;

    .line 147
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BH"

    aput-object v1, v0, v3

    const-string v1, "Cl"

    aput-object v1, v0, v4

    const-string v1, "CB"

    aput-object v1, v0, v6

    const-string v1, "CB"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Dc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Dc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dr"

    aput-object v2, v0, v1

    const-string v1, "Ds"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "CY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Dl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Ec"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Ed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Go"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Gq"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Jb"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getLBSVerifyMessage:Ljava/lang/String;

    .line 148
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BI"

    aput-object v1, v0, v3

    const-string v1, "Cm"

    aput-object v1, v0, v4

    const-string v1, "CC"

    aput-object v1, v0, v6

    const-string v1, "CC"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Dd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Dd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dp"

    aput-object v2, v0, v1

    const-string v1, "Du"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Dm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Ed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Ee"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Gp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Gr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Jc"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getShakeVerifyMessage:Ljava/lang/String;

    .line 150
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BA"

    aput-object v1, v0, v3

    const-string v1, "Ce"

    aput-object v1, v0, v4

    const-string v1, "Ct"

    aput-object v1, v0, v6

    const-string v1, "Ct"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "CU"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dg"

    aput-object v2, v0, v1

    const-string v1, "Dl"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "CQ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Dd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DU"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DV"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Gg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Gi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "IT"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getVerifyMessageCount:Ljava/lang/String;

    .line 152
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sA"

    aput-object v1, v0, v3

    const-string v1, "sI"

    aput-object v1, v0, v4

    const-string v1, "sO"

    aput-object v1, v0, v6

    const-string v1, "sO"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "tb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "te"

    aput-object v2, v0, v1

    const-string v1, "th"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "sh"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sj"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sK"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sU"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "uT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "uU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "xy"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getBottleUnreadCount:Ljava/lang/String;

    .line 154
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BA"

    aput-object v1, v0, v3

    const-string v1, "Ce"

    aput-object v1, v0, v4

    const-string v1, "Ct"

    aput-object v1, v0, v6

    const-string v1, "Ct"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "CU"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dg"

    aput-object v2, v0, v1

    const-string v1, "Dl"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "CQ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Dd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DU"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DV"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Gg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Gi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "IT"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getMomentsUnreadCount:Ljava/lang/String;

    .line 155
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "c"

    aput-object v1, v0, v3

    const-string v1, "c"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v6

    const-string v1, "c"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "c"

    aput-object v2, v0, v1

    const-string v1, "c"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "c"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->startPluginActivity:Ljava/lang/String;

    .line 156
    return-void
.end method
