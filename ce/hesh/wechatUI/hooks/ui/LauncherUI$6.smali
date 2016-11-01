.class final Lce/hesh/wechatUI/hooks/ui/LauncherUI$6;
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
    .line 311
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "launcherUIMod"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 314
    .local v0, "launcherUIMod":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    const-string v1, "navidrawer"

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$600(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1000(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4f

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-nez v1, :cond_40

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 318
    :cond_40
    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 319
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 323
    :cond_4f
    return-void
.end method
