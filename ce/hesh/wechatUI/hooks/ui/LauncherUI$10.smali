.class Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;
.super Ljava/lang/Object;
.source "LauncherUI.java"

# interfaces
.implements Lce/hesh/wechatUI/view/tabs/MaterialTabListener;


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


# direct methods
.method constructor <init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V
    .registers 2

    .prologue
    .line 472
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V
    .registers 2
    .param p1, "tab"    # Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .prologue
    .line 490
    return-void
.end method

.method public onTabSelected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V
    .registers 7
    .param p1, "tab"    # Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 475
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v0

    invoke-virtual {p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 477
    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_33

    .line 478
    :cond_1b
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$400(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :goto_32
    return-void

    .line 480
    :cond_33
    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_45

    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_45

    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_5d

    .line 481
    :cond_45
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$400(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "Z"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 483
    :cond_5d
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$400(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "setCurrentItem"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32
.end method

.method public onTabUnselected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V
    .registers 2
    .param p1, "tab"    # Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .prologue
    .line 495
    return-void
.end method
