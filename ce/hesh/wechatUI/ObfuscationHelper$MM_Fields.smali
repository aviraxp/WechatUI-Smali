.class public Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;
.super Ljava/lang/Object;
.source "ObfuscationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/ObfuscationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MM_Fields"
.end annotation


# static fields
.field public static actionBar:Ljava/lang/String;

.field public static actionBarContainer:Ljava/lang/String;

.field public static curTabNum:Ljava/lang/String;

.field public static customViewPager:Ljava/lang/String;

.field public static discovery_preferenceInterface:Ljava/lang/String;

.field public static isMainTabCreated:Ljava/lang/String;

.field public static main_tab:Ljava/lang/String;

.field public static me_preferenceInterface:Ljava/lang/String;

.field public static moments_jj:Ljava/lang/String;

.field public static preferenceKey:Ljava/lang/String;

.field public static tabView:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(I)V
    .registers 1
    .param p0, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->init(I)V

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
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "imA"

    aput-object v1, v0, v3

    const-string v1, "iwF"

    aput-object v1, v0, v4

    const-string v1, "iHl"

    aput-object v1, v0, v5

    const-string v1, "iHn"

    aput-object v1, v0, v6

    const-string v1, "iUy"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "iUA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jgf"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jgh"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "kfj"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "koj"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "kzq"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "kLw"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lvt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lxa"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mkb"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->customViewPager:Ljava/lang/String;

    .line 72
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "imz"

    aput-object v1, v0, v3

    const-string v1, "iwE"

    aput-object v1, v0, v4

    const-string v1, "iHk"

    aput-object v1, v0, v5

    const-string v1, "iHm"

    aput-object v1, v0, v6

    const-string v1, "iUx"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "iUz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jgg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "kfi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "koi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "kzp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "kLv"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lvs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lwZ"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mka"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->tabView:Ljava/lang/String;

    .line 73
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cuW"

    aput-object v1, v0, v3

    const-string v1, "czt"

    aput-object v1, v0, v4

    const-string v1, "cAI"

    aput-object v1, v0, v5

    const-string v1, "cAI"

    aput-object v1, v0, v6

    const-string v1, "cDq"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cDt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cCk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cCn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cDe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cEo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cHW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cJf"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dlV"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dmp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dZa"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->main_tab:Ljava/lang/String;

    .line 74
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "iZ"

    aput-object v1, v0, v3

    const-string v1, "jA"

    aput-object v1, v0, v4

    const-string v1, "jz"

    aput-object v1, v0, v5

    const-string v1, "jz"

    aput-object v1, v0, v6

    const-string v1, "jz"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "jz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "jB"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "jx"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "tv"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Fy"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->actionBar:Ljava/lang/String;

    .line 75
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "imr"

    aput-object v1, v0, v3

    const-string v1, "iwv"

    aput-object v1, v0, v4

    const-string v1, "iHb"

    aput-object v1, v0, v5

    const-string v1, "iHd"

    aput-object v1, v0, v6

    const-string v1, "iUo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "iUq"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jfV"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jfX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "keZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "knZ"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "kzg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "kLm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lvj"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lwQ"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mjR"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->isMainTabCreated:Ljava/lang/String;

    .line 76
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "imQ"

    aput-object v1, v0, v3

    const-string v1, "iwV"

    aput-object v1, v0, v4

    const-string v1, "iHB"

    aput-object v1, v0, v5

    const-string v1, "iHD"

    aput-object v1, v0, v6

    const-string v1, "iUO"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "iUQ"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jgv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jgx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "kfF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "koF"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "kzI"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "kLO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lvL"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lxt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mkv"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->curTabNum:Ljava/lang/String;

    .line 78
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "iZk"

    aput-object v1, v0, v3

    const-string v1, "jjs"

    aput-object v1, v0, v4

    const-string v1, "jul"

    aput-object v1, v0, v5

    const-string v1, "jun"

    aput-object v1, v0, v6

    const-string v1, "jHs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "jHu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jSX"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jTa"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "kTJ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lcT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lnG"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lAe"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mnZ"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "nbp"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->actionBarContainer:Ljava/lang/String;

    .line 80
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bXk"

    aput-object v1, v0, v3

    const-string v1, "cbC"

    aput-object v1, v0, v4

    const-string v1, "ccQ"

    aput-object v1, v0, v5

    const-string v1, "ccQ"

    aput-object v1, v0, v6

    const-string v1, "cfq"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cfq"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cec"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cee"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cfa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cgC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cjf"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ckp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cNc"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cNu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dhi"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->discovery_preferenceInterface:Ljava/lang/String;

    .line 81
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bXk"

    aput-object v1, v0, v3

    const-string v1, "cbC"

    aput-object v1, v0, v4

    const-string v1, "ccQ"

    aput-object v1, v0, v5

    const-string v1, "ccQ"

    aput-object v1, v0, v6

    const-string v1, "cfq"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cfq"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cec"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cee"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cfa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cgC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cjf"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ckp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cNc"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cNu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dhi"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->me_preferenceInterface:Ljava/lang/String;

    .line 82
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gJE"

    aput-object v1, v0, v3

    const-string v1, "gTe"

    aput-object v1, v0, v4

    const-string v1, "hey"

    aput-object v1, v0, v5

    const-string v1, "heA"

    aput-object v1, v0, v6

    const-string v1, "hos"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hou"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hyn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hyr"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "irD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "izj"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "iJo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iVy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "jCY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "jEv"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "kqg"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->moments_jj:Ljava/lang/String;

    .line 84
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bTL"

    aput-object v1, v0, v3

    const-string v1, "bXW"

    aput-object v1, v0, v4

    const-string v1, "bZi"

    aput-object v1, v0, v5

    const-string v1, "bZi"

    aput-object v1, v0, v6

    const-string v1, "cbG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cbG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cav"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cbm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ccE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cff"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cgq"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cJc"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cJu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dcV"

    aput-object v2, v0, v1

    aget-object v0, v0, p0

    sput-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->preferenceKey:Ljava/lang/String;

    .line 85
    return-void
.end method
