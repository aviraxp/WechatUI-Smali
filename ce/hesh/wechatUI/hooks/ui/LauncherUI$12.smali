.class Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "LauncherUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUI;->addTabs(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

.field final synthetic val$actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;Landroid/graphics/drawable/ColorDrawable;)V
    .registers 4

    .prologue
    .line 587
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    iput-object p2, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->val$actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 613
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 11
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v8, 0x15

    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    .line 590
    sget-object v3, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v4, "setnav"

    const-string v5, "default"

    invoke-virtual {v3, v4, v5}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "setNav":Ljava/lang/String;
    const-string v3, "tabs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 592
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v3, v3, v6

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    if-ne v3, v7, :cond_53

    iget-object v3, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v3

    invoke-virtual {v3}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getCurrentTab()Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v3

    invoke-virtual {v3}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getPosition()I

    move-result v3

    if-nez v3, :cond_53

    .line 593
    iget-object v3, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setVisibility(I)V

    .line 595
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_52

    .line 596
    iget-object v3, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 597
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 609
    .end local v2    # "window":Landroid/view/Window;
    :cond_52
    :goto_52
    return-void

    .line 600
    :cond_53
    iget-object v3, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v3

    invoke-virtual {v3, v6}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setVisibility(I)V

    .line 601
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->val$actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    aput-object v4, v3, v6

    .line 602
    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->getActionBarColorFromPrefs()I

    move-result v0

    .line 603
    .local v0, "color":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_52

    .line 604
    iget-object v3, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 605
    .restart local v2    # "window":Landroid/view/Window;
    const v3, 0x3f59999a    # 0.85f

    invoke-static {v0, v3}, Lce/hesh/wechatUI/Common;->getDarkerColor(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_52
.end method
