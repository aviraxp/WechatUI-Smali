.class public Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
.super Landroid/widget/RelativeLayout;
.source "MaterialTabHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation


# static fields
.field private static tabSelected:I


# instance fields
.field private accentColor:I

.field private density:F

.field private hasIcons:Z

.field private iconColor:I

.field private isTablet:Z

.field private layout:Landroid/widget/LinearLayout;

.field private left:Landroid/widget/ImageButton;

.field private primaryColor:I

.field private right:Landroid/widget/ImageButton;

.field private scrollView:Landroid/widget/HorizontalScrollView;

.field private scrollable:Z

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lce/hesh/wechatUI/view/tabs/MaterialTab;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    .line 46
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 47
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 50
    iput-boolean v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->hasIcons:Z

    .line 51
    const-string v0, "#009688"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->primaryColor:I

    .line 52
    const-string v0, "#00b0ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->accentColor:I

    .line 53
    iput v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->iconColor:I

    .line 54
    iput v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->textColor:I

    .line 55
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->isInEditMode()Z

    .line 56
    iput-boolean v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollable:Z

    .line 57
    iput-boolean v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->isTablet:Z

    .line 58
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    .line 59
    sput v2, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabSelected:I

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    .line 61
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->primaryColor:I

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 62
    return-void
.end method

.method private scrollTo(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "totalWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_47

    .line 145
    iget-object v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-virtual {v3}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 146
    .local v2, "width":I
    if-nez v2, :cond_2e

    .line 147
    iget-boolean v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->isTablet:Z

    if-eqz v3, :cond_32

    .line 148
    iget-object v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-virtual {v3}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getTabMinWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42400000    # 48.0f

    iget v5, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 153
    :cond_2e
    :goto_2e
    add-int/2addr v1, v2

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_32
    iget-object v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-virtual {v3}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getTabMinWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41c00000    # 24.0f

    iget v5, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    goto :goto_2e

    .line 155
    .end local v2    # "width":I
    :cond_47
    iget-object v3, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 156
    return-void
.end method


# virtual methods
.method public addTab(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V
    .registers 5
    .param p1, "tab"    # Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .prologue
    const/4 v2, 0x1

    .line 106
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->accentColor:I

    invoke-virtual {p1, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setAccentColor(I)V

    .line 107
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->primaryColor:I

    invoke-virtual {p1, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setPrimaryColor(I)V

    .line 108
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->textColor:I

    invoke-virtual {p1, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setTextColor(I)V

    .line 109
    iget v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->iconColor:I

    invoke-virtual {p1, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setIconColor(I)V

    .line 110
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setPosition(I)V

    .line 111
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    iget-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->hasIcons:Z

    if-nez v0, :cond_32

    .line 113
    iput-boolean v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollable:Z

    .line 115
    :cond_32
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_41

    iget-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->hasIcons:Z

    if-eqz v0, :cond_41

    .line 116
    iput-boolean v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollable:Z

    .line 118
    :cond_41
    return-void
.end method

.method public getCurrentTab()Lce/hesh/wechatUI/view/tabs/MaterialTab;
    .registers 4

    .prologue
    .line 237
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 238
    .local v1, "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    invoke-virtual {v1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 242
    .end local v1    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getTab(I)Lce/hesh/wechatUI/view/tabs/MaterialTab;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    return-object v0
.end method

.method public isHasIcons()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->hasIcons:Z

    return v0
.end method

.method public newTab()Lce/hesh/wechatUI/view/tabs/MaterialTab;
    .registers 4

    .prologue
    .line 121
    new-instance v0, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-virtual {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->hasIcons:Z

    invoke-direct {v0, v1, v2}, Lce/hesh/wechatUI/view/tabs/MaterialTab;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 19

    .prologue
    .line 174
    invoke-super/range {p0 .. p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollable:Z

    if-nez v12, :cond_43

    .line 177
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    div-int/2addr v12, v13

    const/4 v13, -0x1

    invoke-direct {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 179
    .local v8, "t":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    .line 181
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "t":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->isTablet:Z

    if-eqz v12, :cond_85

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_109

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 184
    .local v9, "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v13

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v9}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getTabMinWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget v0, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 187
    .end local v1    # "i":I
    .end local v9    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :cond_85
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_86
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_109

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 190
    .restart local v9    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    invoke-virtual {v9}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getTabMinWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    iget v14, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 191
    .local v10, "tabWidth":I
    if-nez v1, :cond_c9

    .line 192
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 193
    .local v11, "view":Landroid/view/View;
    const/high16 v12, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget v13, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setMinimumWidth(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    .end local v11    # "view":Landroid/view/View;
    :cond_c9
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getView()Landroid/view/View;

    move-result-object v13

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v14, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v1, v12, :cond_105

    .line 198
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 199
    .restart local v11    # "view":Landroid/view/View;
    const/high16 v12, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget v13, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setMinimumWidth(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    .end local v11    # "view":Landroid/view/View;
    :cond_105
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_86

    .line 204
    .end local v1    # "i":I
    .end local v9    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    .end local v10    # "tabWidth":I
    :cond_109
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->isTablet:Z

    if-eqz v12, :cond_205

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollable:Z

    if-eqz v12, :cond_205

    .line 205
    invoke-virtual/range {p0 .. p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 206
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v12, Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    const v13, 0x7f0b000b

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setId(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    const v13, 0x7f020009

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    iget v13, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/high16 v13, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget v14, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 212
    .local v4, "paramsLeft":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x9

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 214
    const/16 v12, 0xc

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->left:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v12, Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    const v13, 0x7f0b000e

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setId(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    const v13, 0x7f020015

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    iget v13, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/high16 v13, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget v14, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->density:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v5, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v5, "paramsRight":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xb

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    const/16 v12, 0xa

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    const/16 v12, 0xc

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->right:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v6, "paramsScroll":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, 0x0

    const v13, 0x7f0b000e

    invoke-virtual {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 228
    const/4 v12, 0x1

    const v13, 0x7f0b000b

    invoke-virtual {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v4    # "paramsLeft":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "paramsRight":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "paramsScroll":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_1fd
    sget v12, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabSelected:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 234
    return-void

    .line 231
    :cond_205
    move-object/from16 v0, p0

    iget-object v12, v0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollView:Landroid/widget/HorizontalScrollView;

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1fd
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getCurrentTab()Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v1

    invoke-virtual {v1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getPosition()I

    move-result v0

    .line 247
    .local v0, "currentPosition":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b000e

    if-ne v1, v2, :cond_38

    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_38

    .line 248
    add-int/lit8 v0, v0, 0x1

    .line 249
    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 250
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-virtual {v1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getTabListener()Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    move-result-object v2

    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-interface {v2, v1}, Lce/hesh/wechatUI/view/tabs/MaterialTabListener;->onTabSelected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V

    .line 256
    :cond_37
    :goto_37
    return-void

    .line 251
    :cond_38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b000b

    if-ne v1, v2, :cond_37

    if-lez v0, :cond_37

    .line 252
    add-int/lit8 v0, v0, -0x1

    .line 253
    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 254
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-virtual {v1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getTabListener()Lce/hesh/wechatUI/view/tabs/MaterialTabListener;

    move-result-object v2

    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-interface {v2, v1}, Lce/hesh/wechatUI/view/tabs/MaterialTabListener;->onTabSelected(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V

    goto :goto_37
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 168
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getWidth()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14

    .line 169
    invoke-virtual {p0}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->notifyDataSetChanged()V

    .line 171
    :cond_14
    return-void
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 160
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_11
    iget-object v1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 163
    invoke-super {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 164
    return-void
.end method

.method public setAccentColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 81
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->accentColor:I

    .line 82
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 83
    .local v1, "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    invoke-virtual {v1, p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setAccentColor(I)V

    goto :goto_8

    .line 85
    .end local v1    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :cond_18
    return-void
.end method

.method public setHasIcons(Z)V
    .registers 2
    .param p1, "hasIcons"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->hasIcons:Z

    .line 70
    return-void
.end method

.method public setIconColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 95
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->iconColor:I

    .line 96
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 97
    .local v1, "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    invoke-virtual {v1, p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setIconColor(I)V

    goto :goto_8

    .line 99
    .end local v1    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :cond_18
    return-void
.end method

.method public setPrimaryColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 73
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->primaryColor:I

    .line 74
    iget v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->primaryColor:I

    invoke-virtual {p0, v2}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setBackgroundColor(I)V

    .line 75
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 76
    .local v1, "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    invoke-virtual {v1, p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setPrimaryColor(I)V

    goto :goto_d

    .line 78
    .end local v1    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :cond_1d
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 125
    if-ltz p1, :cond_a

    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_12

    .line 126
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Index overflow"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_37

    .line 129
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 130
    .local v1, "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    if-ne v0, p1, :cond_2b

    .line 131
    invoke-virtual {v1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->activateTab()V

    .line 128
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 133
    :cond_2b
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    invoke-virtual {v2}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->disableTab()V

    goto :goto_28

    .line 136
    .end local v1    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :cond_37
    iget-boolean v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollable:Z

    if-eqz v2, :cond_3e

    .line 137
    invoke-direct {p0, p1}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->scrollTo(I)V

    .line 139
    :cond_3e
    sput p1, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabSelected:I

    .line 140
    return-void
.end method

.method public setTextColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 88
    iput p1, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->textColor:I

    .line 89
    iget-object v2, p0, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/view/tabs/MaterialTab;

    .line 90
    .local v1, "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    invoke-virtual {v1, p1}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setTextColor(I)V

    goto :goto_8

    .line 92
    .end local v1    # "tab":Lce/hesh/wechatUI/view/tabs/MaterialTab;
    :cond_18
    return-void
.end method
