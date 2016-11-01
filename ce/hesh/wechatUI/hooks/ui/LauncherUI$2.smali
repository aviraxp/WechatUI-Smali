.class final Lce/hesh/wechatUI/hooks/ui/LauncherUI$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "LauncherUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUI;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 218
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "launcherUIMod"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 221
    .local v0, "launcherUIMod":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v1

    if-nez v1, :cond_12

    .line 244
    :goto_11
    return-void

    .line 225
    :cond_12
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$400(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 226
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2e

    .line 227
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v1

    sget-object v2, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v3, "gB"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    goto :goto_11

    .line 229
    :cond_2e
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_44

    .line 230
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v1

    sget-object v2, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v3, "gc"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    goto :goto_11

    .line 232
    :cond_44
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_50

    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_60

    .line 233
    :cond_50
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v1

    sget-object v2, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v3, "ld"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    goto :goto_11

    .line 235
    :cond_60
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_76

    .line 236
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v1

    sget-object v2, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v3, "xu"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    goto :goto_11

    .line 239
    :cond_76
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v2

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$400(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/ViewGroup;

    move-result-object v1

    const-string v3, "getCurrentItem"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    goto :goto_11

    .line 243
    :cond_90
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v1

    invoke-virtual {v1, v4}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    goto/16 :goto_11
.end method
