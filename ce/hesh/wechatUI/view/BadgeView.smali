.class public Lce/hesh/wechatUI/view/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# instance fields
.field private mHideOnNull:Z

.field private mShowBackgroundOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lce/hesh/wechatUI/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lce/hesh/wechatUI/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lce/hesh/wechatUI/view/BadgeView;->mHideOnNull:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lce/hesh/wechatUI/view/BadgeView;->mShowBackgroundOnly:Z

    .line 37
    invoke-direct {p0}, Lce/hesh/wechatUI/view/BadgeView;->init()V

    .line 38
    return-void
.end method

.method private dip2Px(F)I
    .registers 4
    .param p1, "dip"    # F

    .prologue
    .line 216
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x2

    .line 41
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_14

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_14
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setTextColor(I)V

    .line 45
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p0, v2, v0}, Lce/hesh/wechatUI/view/BadgeView;->setTextSize(IF)V

    .line 47
    invoke-virtual {p0, v2, v2, v2, v2}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeMargin(IIII)V

    .line 48
    const/16 v0, 0x9

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lce/hesh/wechatUI/view/BadgeView;->setBackground(II)V

    .line 49
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setGravity(I)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setHideOnNull(Z)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public decrementBadgeCount(I)V
    .registers 3
    .param p1, "decrement"    # I

    .prologue
    .line 184
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->incrementBadgeCount(I)V

    .line 185
    return-void
.end method

.method public getBadgeCount()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "num":Ljava/lang/Integer;
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 139
    :try_start_7
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_16} :catch_18

    move-result-object v0

    .line 143
    :cond_17
    :goto_17
    return-object v0

    .line 140
    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method public getBadgeGravity()I
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0
.end method

.method public getBadgeMargin()[I
    .registers 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 171
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v3, v1, v2

    return-object v1
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 108
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public incrementBadgeCount(I)V
    .registers 4
    .param p1, "increment"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getBadgeCount()Ljava/lang/Integer;

    move-result-object v0

    .line 176
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_a

    .line 177
    invoke-virtual {p0, p1}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    .line 181
    :goto_9
    return-void

    .line 179
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    goto :goto_9
.end method

.method public isHideOnNull()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/BadgeView;->mHideOnNull:Z

    return v0
.end method

.method public isShowBackgroundOnly()Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/BadgeView;->mShowBackgroundOnly:Z

    return v0
.end method

.method public setBackground(II)V
    .registers 14
    .param p1, "dipRadius"    # I
    .param p2, "badgeColor"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v7, 0x0

    .line 56
    int-to-float v4, p1

    invoke-direct {p0, v4}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v2

    .line 57
    .local v2, "radius":I
    const/16 v4, 0x8

    new-array v3, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v3, v4

    int-to-float v4, v2

    aput v4, v3, v10

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x7

    int-to-float v5, v2

    aput v5, v3, v4

    .line 58
    .local v3, "radiusArray":[F
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v4, v10, :cond_99

    .line 59
    :cond_44
    invoke-direct {p0, v7}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-direct {p0, v7}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v5

    invoke-direct {p0, v7}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v6

    invoke-direct {p0, v7}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lce/hesh/wechatUI/view/BadgeView;->setPadding(IIII)V

    .line 60
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->isShowBackgroundOnly()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 61
    invoke-direct {p0, v9}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-virtual {p0, v4}, Lce/hesh/wechatUI/view/BadgeView;->setWidth(I)V

    .line 62
    invoke-direct {p0, v9}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-virtual {p0, v4}, Lce/hesh/wechatUI/view/BadgeView;->setHeight(I)V

    .line 67
    :goto_6b
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 68
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    invoke-virtual {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .end local v1    # "drawable":Landroid/graphics/drawable/ShapeDrawable;
    :goto_89
    return-void

    .line 64
    :cond_8a
    invoke-direct {p0, v8}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-virtual {p0, v4}, Lce/hesh/wechatUI/view/BadgeView;->setWidth(I)V

    .line 65
    invoke-direct {p0, v8}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-virtual {p0, v4}, Lce/hesh/wechatUI/view/BadgeView;->setHeight(I)V

    goto :goto_6b

    .line 73
    :cond_99
    invoke-direct {p0, v6}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-direct {p0, v7}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v5

    invoke-direct {p0, v6}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v6

    invoke-direct {p0, v7}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lce/hesh/wechatUI/view/BadgeView;->setPadding(IIII)V

    .line 74
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lce/hesh/wechatUI/view/BadgeView;->setMaxEms(I)V

    .line 75
    invoke-direct {p0, v8}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-virtual {p0, v4}, Lce/hesh/wechatUI/view/BadgeView;->setHeight(I)V

    .line 76
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 77
    .local v0, "bgDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_89
.end method

.method public setBadgeCount(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 125
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/BadgeView;->mShowBackgroundOnly:Z

    if-nez v0, :cond_13

    .line 126
    const/16 v0, 0x63

    if-le p1, v0, :cond_14

    .line 127
    const-string v0, "99+"

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_d
    const/16 v0, 0x9

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lce/hesh/wechatUI/view/BadgeView;->setBackground(II)V

    .line 133
    :cond_13
    return-void

    .line 129
    :cond_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public setBadgeGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method

.method public setBadgeMargin(I)V
    .registers 2
    .param p1, "dipMargin"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1, p1, p1, p1}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeMargin(IIII)V

    .line 158
    return-void
.end method

.method public setBadgeMargin(IIII)V
    .registers 7
    .param p1, "leftDipMargin"    # I
    .param p2, "topDipMargin"    # I
    .param p3, "rightDipMargin"    # I
    .param p4, "bottomDipMargin"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v1, p1

    invoke-direct {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 163
    int-to-float v1, p2

    invoke-direct {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 164
    int-to-float v1, p3

    invoke-direct {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 165
    int-to-float v1, p4

    invoke-direct {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 166
    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method public setHideOnNull(Z)V
    .registers 3
    .param p1, "hideOnNull"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lce/hesh/wechatUI/view/BadgeView;->mHideOnNull:Z

    .line 87
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setShowBackgroundOnly(Z)V
    .registers 4
    .param p1, "mShowBackgroundOnly"    # Z

    .prologue
    const/high16 v1, 0x41400000    # 12.0f

    .line 116
    iput-boolean p1, p0, Lce/hesh/wechatUI/view/BadgeView;->mShowBackgroundOnly:Z

    .line 117
    if-eqz p1, :cond_19

    .line 118
    const-string v0, ""

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setWidth(I)V

    .line 120
    invoke-direct {p0, v1}, Lce/hesh/wechatUI/view/BadgeView;->dip2Px(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setHeight(I)V

    .line 122
    :cond_19
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .registers 8
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 192
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 193
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    :cond_10
    if-eqz p1, :cond_23

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_24

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 213
    :cond_23
    :goto_23
    return-void

    .line 198
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5b

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 200
    .local v2, "parentContainer":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 201
    .local v1, "groupIndex":I
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "badgeContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 204
    .local v3, "parentLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 208
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_23

    .line 209
    .end local v0    # "badgeContainer":Landroid/widget/FrameLayout;
    .end local v1    # "groupIndex":I
    .end local v2    # "parentContainer":Landroid/view/ViewGroup;
    .end local v3    # "parentLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_23

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ParentView is needed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public setTargetView(Landroid/widget/TabWidget;I)V
    .registers 4
    .param p1, "target"    # Landroid/widget/TabWidget;
    .param p2, "tabIndex"    # I

    .prologue
    .line 188
    invoke-virtual {p1, p2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setTargetView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/BadgeView;->isHideOnNull()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 93
    :cond_19
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setVisibility(I)V

    .line 97
    :goto_1e
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/BadgeView;->mShowBackgroundOnly:Z

    if-eqz v0, :cond_25

    .line 98
    invoke-virtual {p0, v2}, Lce/hesh/wechatUI/view/BadgeView;->setVisibility(I)V

    .line 100
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 101
    return-void

    .line 95
    :cond_29
    invoke-virtual {p0, v2}, Lce/hesh/wechatUI/view/BadgeView;->setVisibility(I)V

    goto :goto_1e
.end method

.method public show()V
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/BadgeView;->setVisibility(I)V

    .line 105
    return-void
.end method
