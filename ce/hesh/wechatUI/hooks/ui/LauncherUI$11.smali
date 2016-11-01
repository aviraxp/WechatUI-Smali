.class Lce/hesh/wechatUI/hooks/ui/LauncherUI$11;
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


# direct methods
.method constructor <init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V
    .registers 2

    .prologue
    .line 555
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$11;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 561
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_18

    .line 563
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "gB"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 579
    .local v0, "currentItem":I
    :goto_e
    iget-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$11;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    invoke-static {v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 580
    return-void

    .line 565
    .end local v0    # "currentItem":I
    :cond_18
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_27

    .line 567
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "gc"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "currentItem":I
    goto :goto_e

    .line 569
    .end local v0    # "currentItem":I
    :cond_27
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_33

    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3c

    .line 571
    :cond_33
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "ld"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "currentItem":I
    goto :goto_e

    .line 572
    .end local v0    # "currentItem":I
    :cond_3c
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_4b

    .line 573
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "xu"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "currentItem":I
    goto :goto_e

    .line 576
    .end local v0    # "currentItem":I
    :cond_4b
    iget-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI$11;->this$0:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    # getter for: Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;
    invoke-static {v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->access$400(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/ViewGroup;

    move-result-object v1

    const-string v2, "getCurrentItem"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "currentItem":I
    goto :goto_e
.end method
