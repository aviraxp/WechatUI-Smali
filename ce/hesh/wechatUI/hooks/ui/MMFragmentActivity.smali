.class public Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;
.super Ljava/lang/Object;
.source "MMFragmentActivity.java"


# static fields
.field public static actionBarColor:I

.field private static actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field public static launcherUIActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "#22292C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    .line 32
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    sput-object v0, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/drawable/ColorDrawable;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public static getActionBarColorFromPrefs()I
    .registers 3

    .prologue
    .line 205
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v0, :cond_b

    .line 206
    const-string v0, "#22292C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 212
    :goto_a
    return v0

    .line 208
    :cond_b
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 209
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 210
    sget-object v0, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "actionbar_color"

    const-string v2, "#22292C"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    .line 212
    :cond_2b
    const-string v0, "#22292C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public static init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 8
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->MMFragmentActivity:Ljava/lang/Class;

    const-string v1, "onCreate"

    new-array v2, v4, [Ljava/lang/Object;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v5

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$1;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$1;-><init>()V

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 73
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->MMFragmentActivity:Ljava/lang/Class;

    const-string v1, "onResume"

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$2;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$2;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 149
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->ChattingUInonActivity:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setActionBarView:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$3;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$3;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 172
    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_53

    .line 173
    const-string v0, "android.content.res.Resources"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getColor"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    new-instance v4, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$4;

    invoke-direct {v4}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$4;-><init>()V

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 200
    :cond_53
    return-void
.end method
