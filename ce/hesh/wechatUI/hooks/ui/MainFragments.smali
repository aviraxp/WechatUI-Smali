.class public Lce/hesh/wechatUI/hooks/ui/MainFragments;
.super Ljava/lang/Object;
.source "MainFragments.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragmentIndex"    # I
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 39
    :try_start_1
    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getFragment:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "fragment":Ljava/lang/Object;
    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->Preference:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "preference":Ljava/lang/Object;
    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->preferenceKey:Ljava/lang/String;

    invoke-static {v2, v4, p2}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    .local v3, "tempObject":Ljava/lang/Object;
    if-ne p1, v8, :cond_40

    .line 45
    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->discovery_preferenceInterface:Ljava/lang/String;

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    :cond_31
    :goto_31
    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->startMMActivity:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v0    # "fragment":Ljava/lang/Object;
    .end local v2    # "preference":Ljava/lang/Object;
    .end local v3    # "tempObject":Ljava/lang/Object;
    :goto_3f
    return-void

    .line 46
    .restart local v0    # "fragment":Ljava/lang/Object;
    .restart local v2    # "preference":Ljava/lang/Object;
    .restart local v3    # "tempObject":Ljava/lang/Object;
    :cond_40
    const/4 v4, 0x3

    if-ne p1, v4, :cond_31

    .line 47
    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->me_preferenceInterface:Ljava/lang/String;

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_4a

    move-result-object v3

    goto :goto_31

    .line 51
    .end local v0    # "fragment":Ljava/lang/Object;
    .end local v2    # "preference":Ljava/lang/Object;
    .end local v3    # "tempObject":Ljava/lang/Object;
    :catch_4a
    move-exception v1

    .line 52
    .local v1, "l":Ljava/lang/Throwable;
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method public static init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 1
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public static switchMMFragment(Landroid/app/Activity;I)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "i"    # I

    .prologue
    .line 25
    const/4 v0, 0x4

    if-ge p1, v0, :cond_12

    .line 26
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setCurrentPagerItem:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_12
    return-void
.end method
