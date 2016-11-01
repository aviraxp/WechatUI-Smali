.class Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;
.super Ljava/lang/Object;
.source "LauncherUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUI;->initNewActionBar(Landroid/app/Activity;)V
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
    .line 389
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 391
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->getDrawerGravity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 392
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 393
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 402
    :goto_23
    return-void

    .line 395
    :cond_24
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_23

    .line 397
    :cond_2e
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 398
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_23

    .line 400
    :cond_44
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_23
.end method
