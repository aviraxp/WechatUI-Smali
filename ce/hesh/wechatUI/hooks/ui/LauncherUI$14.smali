.class Lce/hesh/wechatUI/hooks/ui/LauncherUI$14;
.super Ljava/lang/Object;
.source "LauncherUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/LauncherUI;->addNavigationDrawer(Landroid/app/Activity;)V
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
    .line 677
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$14;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 680
    iget-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$14;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->LauncherUI_INSTANCE_WeakRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$000(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 681
    .local v0, "LauncherUI_INSTANCE":Landroid/app/Activity;
    if-eqz v0, :cond_14

    .line 682
    const/4 v1, 0x3

    const-string v2, "more_tab_setting_personal_info"

    invoke-static {v0, v1, v2}, Lce/hesh/wechatUI/hooks/ui/MainFragments;->callMMFragmentFeature(Landroid/app/Activity;ILjava/lang/String;)V

    .line 684
    :cond_14
    return-void
.end method
