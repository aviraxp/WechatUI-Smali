.class final Lce/hesh/wechatUI/hooks/ui/LauncherUI$1;
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
    .line 207
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
    .line 211
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 212
    .local v0, "LauncherUI_INSTANCE":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    .line 213
    const-string v1, "ce.hesh.wechatUI"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    .line 214
    const-string v1, "launcherUIMod"

    new-instance v2, Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-direct {v2, v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method
