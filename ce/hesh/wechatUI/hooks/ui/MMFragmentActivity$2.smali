.class final Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "MMFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 11
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 121
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v6

    if-nez v6, :cond_8

    .line 147
    :cond_7
    :goto_7
    return-void

    .line 125
    :cond_8
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    .line 126
    .local v1, "activity":Landroid/app/Activity;
    const-string v6, "getActionBar"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "actionbar":Ljava/lang/Object;
    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_20

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_63

    .line 128
    :cond_20
    const-string v6, "bI"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "bI":Ljava/lang/Object;
    const-string v6, "bJ"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .end local v2    # "bI":Ljava/lang/Object;
    :cond_30
    :goto_30
    if-eqz v0, :cond_7

    .line 136
    const-string v6, "getCustomView"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 137
    .local v4, "customView":Landroid/view/ViewGroup;
    sget v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 139
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_7

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0x8

    if-ge v6, v7, :cond_7

    .line 140
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 141
    .local v5, "window":Landroid/view/Window;
    sget v6, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    const v7, 0x3f59999a    # 0.85f

    invoke-static {v6, v7}, Lce/hesh/wechatUI/Common;->getDarkerColor(IF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_7

    .line 131
    .end local v4    # "customView":Landroid/view/ViewGroup;
    .end local v5    # "window":Landroid/view/Window;
    :cond_63
    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_30

    .line 132
    const-string v6, "cN"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "cN":Ljava/lang/Object;
    const-string v6, "cO"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_30
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 12
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 77
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v6

    if-nez v6, :cond_8

    .line 117
    :cond_7
    :goto_7
    return-void

    .line 83
    :cond_8
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    .line 84
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "activityName":Ljava/lang/String;
    const-string v6, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyIndexUI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyPrepareUI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.tencent.mm.plugin.collect.ui.CollectMainUI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.tencent.mm.plugin.offline.ui.WalletOfflineCoinPurseUI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyMyRecordUI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 92
    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->getActionBarColorFromPrefs()I

    move-result v6

    sput v6, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    .line 93
    const-string v6, "getActionBar"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "actionbar":Ljava/lang/Object;
    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_5e

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_a5

    .line 95
    :cond_5e
    const-string v6, "bI"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    .local v3, "bI":Ljava/lang/Object;
    const-string v6, "bJ"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .end local v3    # "bI":Ljava/lang/Object;
    :cond_6e
    :goto_6e
    # getter for: Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->access$000()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v6

    sget v7, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 103
    if-eqz v0, :cond_7

    .line 104
    const-string v6, "setBackgroundDrawable"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    # getter for: Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->access$000()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_7

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0x8

    if-ge v6, v7, :cond_7

    .line 106
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 107
    .local v5, "window":Landroid/view/Window;
    sget v6, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    const v7, 0x3f59999a    # 0.85f

    invoke-static {v6, v7}, Lce/hesh/wechatUI/Common;->getDarkerColor(IF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_7

    .line 98
    .end local v5    # "window":Landroid/view/Window;
    :cond_a5
    sget v6, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_6e

    .line 99
    const-string v6, "cN"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 100
    .local v4, "cN":Ljava/lang/Object;
    const-string v6, "cO"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6e
.end method
