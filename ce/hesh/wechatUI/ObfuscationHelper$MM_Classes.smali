.class public Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;
.super Ljava/lang/Object;
.source "ObfuscationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/ObfuscationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MM_Classes"
.end annotation


# static fields
.field public static AccountStorage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static Avatar:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static Bottle:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static ChattingUInonActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static LauncherUI:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static LauncherUIBottomTabView:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static MMFragmentActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static NewFriendMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static PluginToolClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static Preference:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static Resources_Check:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static UserInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static UserNickName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static WTFClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->init(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    return-void
.end method

.method private static init(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 14
    .param p0, "idx"    # I
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    const-string v2, "com.tencent.mm.ui."

    .line 35
    .local v2, "MM_UI_PACKAGENAME":Ljava/lang/String;
    const-string v1, "com.tencent.mm.pluginsdk.ui."

    .line 36
    .local v1, "MM_PLUGINSDK_UI_PACKNAME":Ljava/lang/String;
    const-string v0, "com.tencent.mm.model."

    .line 37
    .local v0, "MM_MODEL_PACKAGENAME":Ljava/lang/String;
    const-string v3, "com.tencent.mm.ui.LauncherUI"

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUI:Ljava/lang/Class;

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LauncherUIBottomTabView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUIBottomTabView:Ljava/lang/Class;

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MMFragmentActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->MMFragmentActivity:Ljava/lang/Class;

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "chatting.ChattingUI$a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->ChattingUInonActivity:Ljava/lang/Class;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "base.preference.Preference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->Preference:Ljava/lang/Class;

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "v"

    aput-object v5, v4, v7

    const-string v5, "v"

    aput-object v5, v4, v8

    const-string v5, "g"

    aput-object v5, v4, v9

    const-string v5, "g"

    aput-object v5, v4, v10

    const-string v5, "g"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "g"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "g"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "h"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "h"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "h"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "h"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "h"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "h"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "h"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "h"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->UserInfo:Ljava/lang/Class;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "d.i"

    aput-object v5, v4, v7

    const-string v5, "d.e"

    aput-object v5, v4, v8

    const-string v5, "d.e"

    aput-object v5, v4, v9

    const-string v5, "d.e"

    aput-object v5, v4, v10

    const-string v5, "d.e"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "d.e"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "d.e"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->UserNickName:Ljava/lang/Class;

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "a$b"

    aput-object v5, v4, v7

    const-string v5, "a$b"

    aput-object v5, v4, v8

    const-string v5, "a$b"

    aput-object v5, v4, v9

    const-string v5, "a$b"

    aput-object v5, v4, v10

    const-string v5, "a$b"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "a$b"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "a$b"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->Avatar:Ljava/lang/Class;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ax"

    aput-object v5, v4, v7

    const-string v5, "ax"

    aput-object v5, v4, v8

    const-string v5, "ag"

    aput-object v5, v4, v9

    const-string v5, "ag"

    aput-object v5, v4, v10

    const-string v5, "ah"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "ai"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "ah"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "ah"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->AccountStorage:Ljava/lang/Class;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.tencent.mm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ag.m"

    aput-object v5, v4, v7

    const-string v5, "ag.m"

    aput-object v5, v4, v8

    const-string v5, "ah.l"

    aput-object v5, v4, v9

    const-string v5, "ah.l"

    aput-object v5, v4, v10

    const-string v5, "ai.l"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "ai.l"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "aj.l"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "aj.l"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "am.l"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "ao.l"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "ao.l"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "ap.l"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "aq.l"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "aq.l"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "ar.l"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->NewFriendMessage:Ljava/lang/Class;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "x"

    aput-object v5, v4, v7

    const-string v5, "x"

    aput-object v5, v4, v8

    const-string v5, "i"

    aput-object v5, v4, v9

    const-string v5, "i"

    aput-object v5, v4, v10

    const-string v5, "i"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "j"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "j"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "j"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "j"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "j"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "j"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "j"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "j"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->Bottle:Ljava/lang/Class;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.tencent.mm.pluginsdk."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "l$ag"

    aput-object v5, v4, v7

    const-string v5, "l$ag"

    aput-object v5, v4, v8

    const-string v5, "h$ah"

    aput-object v5, v4, v9

    const-string v5, "h$ah"

    aput-object v5, v4, v10

    const-string v5, "h$ah"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "h$ah"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "h$ah"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "h$ah"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "i$ai"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "i$ai"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "i$ai"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "i$ai"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "i$ai"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "i$ai"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "j$ai"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->WTFClazz:Ljava/lang/Class;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.tencent.mm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "aj.c"

    aput-object v5, v4, v7

    const-string v5, "aj.c"

    aput-object v5, v4, v8

    const-string v5, "am.c"

    aput-object v5, v4, v9

    const-string v5, "am.c"

    aput-object v5, v4, v10

    const-string v5, "an.c"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "an.c"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "ao.c"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "ao.c"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "as.c"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "au.c"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "au.c"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "av.c"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "aw.c"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "aw.c"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "ay.c"

    aput-object v6, v4, v5

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->PluginToolClazz:Ljava/lang/Class;

    .line 51
    const-string v3, "com.tencent.mm.sdk.platformtools.aa"

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->Resources_Check:Ljava/lang/Class;

    .line 53
    return-void
.end method
