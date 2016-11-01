.class final Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "MMFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 149
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
    .line 152
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v3

    if-nez v3, :cond_7

    .line 169
    :cond_6
    :goto_6
    return-void

    .line 159
    :cond_7
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->actionBarContainer:Ljava/lang/String;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 160
    .local v0, "actionBarContainer":Landroid/view/ViewGroup;
    if-eqz v0, :cond_6

    .line 161
    sget v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    .local v1, "actionbarView":Landroid/view/ViewGroup;
    sget v3, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 163
    sget v3, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "divider":Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method
