.class public Lce/hesh/wechatUI/view/tabs/MaterialTab;
.super Ljava/lang/Object;
.source "MaterialTab.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams",
        "ClickableViewAccessibility"
    }
.end annotation


# static fields
.field private static final HIDE_DURATION:I = 0x1f4

.field private static final REVEAL_DURATION:I = 0x190


# instance fields
.field private accentColor:I

.field private active:Z

.field private completeView:Landroid/view/View;

.field private density:F

.field private hasIcon:Z

.field private icon:Landroid/widget/ImageView;

.field private iconColor:I

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private lastTouchedPoint:Landroid/graphics/Point;

.field private listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

.field private position:I

.field private primaryColor:I

.field private res:Landroid/content/res/Resources;

.field private selector:Landroid/widget/ImageView;

.field private text:Landroid/widget/TextView;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "hasIcon"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->hasIcon:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->density:F

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->res:Landroid/content/res/Resources;

    .line 49
    if-eqz p2, :cond_4f

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040006

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    .line 56
    :goto_35
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->selector:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->active:Z

    .line 59
    iput v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->textColor:I

    .line 60
    iput v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconColor:I

    .line 61
    return-void

    .line 53
    :cond_4f
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040005

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    goto :goto_35
.end method

.method private getIconWidth()I
    .registers 3

    .prologue
    .line 202
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getTextLength()I
    .registers 6

    .prologue
    .line 195
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "textString":Ljava/lang/String;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    return v2
.end method

.method private setIconAlpha(I)V
    .registers 6
    .param p1, "paramInt"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    .line 188
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 192
    :goto_b
    return-void

    .line 190
    :cond_c
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_b
.end method


# virtual methods
.method public activateTab()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 122
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    iget v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :cond_b
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 125
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setIconAlpha(I)V

    .line 127
    :cond_14
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->selector:Landroid/widget/ImageView;

    iget v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->accentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->active:Z

    .line 129
    return-void
.end method

.method public disableTab()V
    .registers 6

    .prologue
    const/16 v4, 0x99

    .line 107
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 108
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    iget v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->textColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->textColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->textColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_21
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    .line 111
    invoke-direct {p0, v4}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setIconAlpha(I)V

    .line 113
    :cond_28
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->selector:Landroid/widget/ImageView;

    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->res:Landroid/content/res/Resources;

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->active:Z

    .line 115
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    if-eqz v0, :cond_42

    .line 116
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    invoke-interface {v0, p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabListener;->onTabUnselected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V

    .line 118
    :cond_42
    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->position:I

    return v0
.end method

.method public getTabListener()Lce/hesh/wechatUI/view/tabs/MaterialTabListener;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    return-object v0
.end method

.method public getTabMinWidth()I
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->hasIcon:Z

    if-eqz v0, :cond_9

    .line 207
    invoke-direct {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getIconWidth()I

    move-result v0

    .line 209
    :goto_8
    return v0

    :cond_9
    invoke-direct {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getTextLength()I

    move-result v0

    goto :goto_8
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->active:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 136
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    .line 137
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 138
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3e

    .line 140
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    const/16 v2, 0x80

    iget v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->accentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->accentColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->accentColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    :cond_3d
    :goto_3d
    return v0

    .line 142
    :cond_3e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4d

    .line 143
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    iget v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->primaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3d

    .line 145
    :cond_4d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_55

    .line 146
    const/4 v0, 0x0

    goto :goto_3d

    .line 148
    :cond_55
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    iget v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->primaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    if-eqz v1, :cond_69

    .line 150
    iget-boolean v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->active:Z

    if-eqz v1, :cond_71

    .line 151
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    invoke-interface {v1, p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabListener;->onTabReselected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V

    .line 156
    :cond_69
    :goto_69
    iget-boolean v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->active:Z

    if-nez v1, :cond_3d

    .line 159
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->activateTab()V

    goto :goto_3d

    .line 153
    :cond_71
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    invoke-interface {v1, p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabListener;->onTabSelected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V

    goto :goto_69
.end method

.method public setAccentColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 64
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->accentColor:I

    .line 65
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->textColor:I

    .line 66
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconColor:I

    .line 67
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lce/hesh/wechatUI/view/tabs/MaterialTab;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 97
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->hasIcon:Z

    if-eqz v0, :cond_11

    .line 98
    iput-object p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconColor:I

    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setIconColor(I)V

    .line 101
    return-object p0

    .line 103
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You had setted tabs without icons, uses text instead icons"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIconColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 82
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->iconColor:I

    .line 83
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 86
    :cond_b
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 182
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->position:I

    .line 183
    return-void
.end method

.method public setPrimaryColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 70
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->primaryColor:I

    .line 71
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->completeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    return-void
.end method

.method public setTabListener(Lce/hesh/wechatUI/view/tabs/MaterialTabListener;)Lce/hesh/wechatUI/view/tabs/MaterialTab;
    .registers 2
    .param p1, "listener"    # Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    .prologue
    .line 169
    iput-object p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->listener:Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    .line 170
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lce/hesh/wechatUI/view/tabs/MaterialTab;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->hasIcon:Z

    if-eqz v0, :cond_c

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You had setted tabs with icons, uses icons instead text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_c
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object p0
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 75
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->textColor:I

    .line 76
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 77
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_b
    return-void
.end method
