.class final Lce/hesh/wechatUI/hooks/ui/LauncherUI$7;
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
    .line 325
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "launcherUIMod"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 328
    .local v0, "launcherUIMod":Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    const-string v1, "navidrawer"

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;
    invoke-static {v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$600(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 329
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    # invokes: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->initNewActionBar(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$1200(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;)V

    .line 331
    :cond_1d
    return-void
.end method
