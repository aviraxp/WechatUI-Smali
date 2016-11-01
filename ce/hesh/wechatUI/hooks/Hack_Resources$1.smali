.class final Lce/hesh/wechatUI/hooks/Hack_Resources$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Hack_Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/hooks/Hack_Resources;->init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 10
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 47
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "type"

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 48
    .local v2, "type":I
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lce/hesh/wechatUI/hooks/Hack_Resources;->bubble_field:Ljava/lang/String;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, "textView":Landroid/widget/TextView;
    if-ne v2, v6, :cond_34

    .line 52
    sget-object v3, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    const v4, 0x7f020001

    invoke-virtual {v3, v4, v5}, Landroid/content/res/XModuleResources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 68
    :cond_33
    :goto_33
    return-void

    .line 55
    :cond_34
    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 56
    sget-object v3, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    const v4, 0x7f020002

    invoke-virtual {v3, v4, v5}, Landroid/content/res/XModuleResources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lce/hesh/wechatUI/hooks/Hack_Resources;->GAFP()I

    move-result v4

    const v5, 0x3f59999a    # 0.85f

    invoke-static {v4, v5}, Lce/hesh/wechatUI/Common;->getDarkerColor(IF)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 58
    const/4 v3, 0x3

    new-array v0, v3, [F

    .line 59
    .local v0, "hsv":[F
    invoke-static {}, Lce/hesh/wechatUI/hooks/Hack_Resources;->GAFP()I

    move-result v3

    invoke-static {v3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 60
    aget v3, v0, v6

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_74

    .line 61
    const/4 v3, -0x1

    sput v3, Lce/hesh/wechatUI/hooks/Hack_Resources;->text_color:I

    .line 66
    :goto_6e
    sget v3, Lce/hesh/wechatUI/hooks/Hack_Resources;->text_color:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_33

    .line 64
    :cond_74
    const/high16 v3, -0x1000000

    sput v3, Lce/hesh/wechatUI/hooks/Hack_Resources;->text_color:I

    goto :goto_6e
.end method
