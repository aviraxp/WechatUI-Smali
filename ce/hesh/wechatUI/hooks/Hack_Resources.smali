.class public Lce/hesh/wechatUI/hooks/Hack_Resources;
.super Ljava/lang/Object;
.source "Hack_Resources.java"


# static fields
.field public static bubble_field:Ljava/lang/String;

.field public static bubble_method:Ljava/lang/String;

.field public static text_color:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/high16 v0, -0x1000000

    sput v0, Lce/hesh/wechatUI/hooks/Hack_Resources;->text_color:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GAFP()I
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v0, :cond_b

    .line 25
    const-string v0, "#22292C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 31
    :goto_a
    return v0

    .line 27
    :cond_b
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 28
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 29
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "actionbar_color"

    const-string v2, "#22292C"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    .line 31
    :cond_2b
    const-string v0, "#22292C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public static init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 9
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .prologue
    const/16 v7, 0xd

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    if-lt v0, v7, :cond_da

    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k"

    aput-object v2, v0, v1

    const-string v1, "k"

    aput-object v1, v0, v7

    const/16 v1, 0xe

    const-string v2, "m"

    aput-object v2, v0, v1

    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    aget-object v0, v0, v1

    sput-object v0, Lce/hesh/wechatUI/hooks/Hack_Resources;->bubble_method:Ljava/lang/String;

    .line 41
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mrQ"

    aput-object v2, v0, v1

    const-string v1, "mrQ"

    aput-object v1, v0, v7

    const/16 v1, 0xe

    const-string v2, "nfk"

    aput-object v2, v0, v1

    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    aget-object v0, v0, v1

    sput-object v0, Lce/hesh/wechatUI/hooks/Hack_Resources;->bubble_field:Ljava/lang/String;

    .line 42
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isBubble()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 43
    const-string v0, "com.tencent.mm.ui.chatting.ea"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lce/hesh/wechatUI/hooks/Hack_Resources;->bubble_method:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-instance v3, Lce/hesh/wechatUI/hooks/Hack_Resources$1;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/Hack_Resources$1;-><init>()V

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 71
    :cond_da
    return-void
.end method
