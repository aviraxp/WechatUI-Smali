.class Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;
.super Ljava/lang/Object;
.source "LauncherUI.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDrawerListener"
.end annotation


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;


# direct methods
.method private constructor <init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Lce/hesh/wechatUI/hooks/ui/LauncherUI$1;)V
    .registers 3
    .param p1, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    .param p2, "x1"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .registers 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->refreshDrawerInfo()V
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$200(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    .line 190
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->refreshDrawerInfo()V
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$200(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    .line 185
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 7
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 174
    float-to-double v0, p2

    const-wide v2, 0x3fefd70a3d70a3d7L    # 0.995

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1e

    .line 175
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->setFlip(Z)V

    .line 179
    :cond_14
    :goto_14
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->setParameter(F)V

    .line 180
    return-void

    .line 176
    :cond_1e
    float-to-double v0, p2

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_14

    .line 177
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->setFlip(Z)V

    goto :goto_14
.end method

.method public onDrawerStateChanged(I)V
    .registers 3
    .param p1, "newState"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 194
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 195
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->refreshDrawerInfo()V
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$200(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->runnable:Ljava/lang/Runnable;

    .line 198
    :cond_13
    return-void
.end method

.method public runOnIdle(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 201
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->runnable:Ljava/lang/Runnable;

    .line 202
    return-void
.end method
