.class public Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;,
        Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;,
        Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;
    }
.end annotation


# static fields
.field private static final DIMEN_DP:F = 23.5f

.field private static final PATH_GEN_DENSITY:F = 3.0f

.field private static final STROKE_WIDTH_DP:F = 2.0f


# instance fields
.field private bottomLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

.field private final bounds:Landroid/graphics/Rect;

.field private final coordsA:[F

.field private final coordsB:[F

.field private flip:Z

.field private final halfStrokeWidthPixel:F

.field private final linePaint:Landroid/graphics/Paint;

.field private magnitude:F

.field private middleLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

.field private paramA:F

.field private paramB:F

.field private parameter:F

.field private final rounded:Z

.field private topLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

.field private vX:F

.field private vY:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;-><init>(Landroid/content/res/Resources;Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Z)V
    .registers 16
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "rounded"    # Z

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 95
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_252

    iput-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F

    .line 96
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_25a

    iput-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F

    .line 97
    iput-boolean p2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->rounded:Z

    .line 98
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    .line 99
    .local v9, "density":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v12, v2, v9

    .line 100
    .local v12, "strokeWidthPixel":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v12, v2

    iput v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->halfStrokeWidthPixel:F

    .line 101
    new-instance v2, Landroid/graphics/Paint;

    const/16 v3, 0x81

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    .line 102
    iget-object v3, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_24d

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_34
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    const/high16 v2, 0x41bc0000    # 23.5f

    mul-float/2addr v2, v9

    float-to-int v10, v2

    .line 107
    .local v10, "dimen":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->bounds:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 109
    .local v0, "first":Landroid/graphics/Path;
    const v2, 0x40a15810    # 5.042f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    const/high16 v1, 0x41020000    # 8.125f

    const v2, -0x3e7d76c9    # -16.317f

    const v3, 0x421f0312

    const v4, -0x3e213127    # -27.851f

    const v5, 0x425df5c3    # 55.49f

    const v6, -0x3fcf0a3d    # -2.765f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 111
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 112
    .local v1, "second":Landroid/graphics/Path;
    const v2, 0x42721fbe

    const v3, 0x4189e148    # 17.235f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    const v2, 0x4134d0e5    # 11.301f

    const v3, 0x41901eb8    # 18.015f

    const v4, -0x3f934396    # -3.699f

    const v5, 0x423854fe    # 46.083f

    const v6, -0x3e423333    # -23.725f

    const v7, 0x422dd2f2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 114
    invoke-static {v0, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 115
    invoke-static {v1, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 116
    new-instance v11, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    const/4 v2, 0x0

    invoke-direct {v11, v0, v1, v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    .line 117
    .local v11, "joinedA":Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "first":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 118
    .restart local v0    # "first":Landroid/graphics/Path;
    const v2, 0x4281eb02    # 64.959f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    const v3, 0x408e9fbe    # 4.457f

    const/high16 v4, 0x41860000    # 16.75f

    const v5, 0x3fc18937    # 1.512f

    const v6, 0x4217ed91

    const v7, -0x3e4b8b44    # -22.557f

    const v8, 0x422acbc7

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 120
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "second":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 121
    .restart local v1    # "second":Landroid/graphics/Path;
    const v2, 0x42299ba6    # 42.402f

    const v3, 0x427acbc7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 122
    const v2, 0x4192a9fc    # 18.333f

    const v3, 0x4286d604    # 67.418f

    const v4, 0x410ce979    # 8.807f

    const v5, 0x42369581    # 45.646f

    const v6, 0x410ce979    # 8.807f

    const v7, 0x42034ac1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 123
    invoke-static {v0, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 124
    invoke-static {v1, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 125
    new-instance v2, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    new-instance v3, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v11, v3, v4}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;-><init>(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    iput-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->topLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    .line 126
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "first":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 127
    .restart local v0    # "first":Landroid/graphics/Path;
    const v2, 0x40a15810    # 5.042f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 128
    const v3, 0x40a15810    # 5.042f

    const v4, 0x41a2a9fc    # 20.333f

    const/high16 v5, 0x41950000    # 18.625f

    const v6, 0x40d94fdf    # 6.791f

    const/high16 v7, 0x420c0000    # 35.0f

    const v8, 0x40d94fdf    # 6.791f

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 129
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "second":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 130
    .restart local v1    # "second":Landroid/graphics/Path;
    const/high16 v2, 0x420c0000    # 35.0f

    const v3, 0x40d94fdf    # 6.791f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 131
    const v2, 0x4180a9fc    # 16.083f

    const/4 v3, 0x0

    const v4, 0x41d6d2f2    # 26.853f

    const v5, 0x41859db2    # 16.702f

    const v6, 0x41d6d2f2    # 26.853f

    const v7, 0x41e1ac08    # 28.209f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 132
    invoke-static {v0, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 133
    invoke-static {v1, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 134
    new-instance v11, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    .end local v11    # "joinedA":Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    const/4 v2, 0x0

    invoke-direct {v11, v0, v1, v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    .line 135
    .restart local v11    # "joinedA":Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "first":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 136
    .restart local v0    # "first":Landroid/graphics/Path;
    const v2, 0x4281eb02    # 64.959f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    const/4 v3, 0x0

    const v4, 0x412ed0e5    # 10.926f

    const v5, -0x3ef4a7f0    # -8.709f

    const v6, 0x41d353f8    # 26.416f

    const v7, -0x3e105604    # -29.958f

    const v8, 0x41d353f8    # 26.416f

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 138
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "second":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 139
    .restart local v1    # "second":Landroid/graphics/Path;
    const/high16 v2, 0x420c0000    # 35.0f

    const v3, 0x4275a9fc    # 61.416f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    const/high16 v2, -0x3f100000    # -7.5f

    const/4 v3, 0x0

    const v4, -0x3e406e98    # -23.946f

    const v5, -0x3efc9fbe    # -8.211f

    const v6, -0x3e406e98    # -23.946f

    const v7, -0x3e2cac08    # -26.416f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 141
    invoke-static {v0, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 142
    invoke-static {v1, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 143
    new-instance v2, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    new-instance v3, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v11, v3, v4}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;-><init>(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    iput-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->middleLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    .line 144
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "first":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 145
    .restart local v0    # "first":Landroid/graphics/Path;
    const v2, 0x40a15810    # 5.042f

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    const/high16 v3, 0x40200000    # 2.5f

    const v4, 0x422d3f7d    # 43.312f

    const v5, 0x3c54fdf4    # 0.013f

    const v6, 0x41d45e35    # 26.546f

    const v7, 0x4117999a    # 9.475f

    const v8, 0x418ac49c    # 17.346f

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 147
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "second":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 148
    .restart local v1    # "second":Landroid/graphics/Path;
    const v2, 0x4117999a    # 9.475f

    const v3, 0x418ac49c    # 17.346f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    const v2, 0x4117645a    # 9.462f

    const v3, -0x3eeccccd    # -9.2f

    const v4, 0x41c18106    # 24.188f

    const v5, -0x3eda5a1d    # -10.353f

    const v6, 0x41da9ba6    # 27.326f

    const v7, -0x3efc147b    # -8.245f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 150
    invoke-static {v0, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 151
    invoke-static {v1, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 152
    new-instance v11, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    .end local v11    # "joinedA":Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    const/4 v2, 0x0

    invoke-direct {v11, v0, v1, v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    .line 153
    .restart local v11    # "joinedA":Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "first":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 154
    .restart local v0    # "first":Landroid/graphics/Path;
    const v2, 0x4281eb02    # 64.959f

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    const v3, -0x3f1f53f8    # -7.021f

    const v4, 0x412147ae    # 10.08f

    const v5, -0x3e5b53f8    # -20.584f

    const v6, 0x419d978d    # 19.699f

    const v7, -0x3dea8e56    # -37.361f

    const v8, 0x414bd70a    # 12.74f

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 156
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "second":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 157
    .restart local v1    # "second":Landroid/graphics/Path;
    const v2, 0x41dcc8b4    # 27.598f

    const v3, 0x427acbc7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 158
    const v2, -0x3e846e98    # -15.723f

    const v3, -0x3f2f53f8    # -6.521f

    const v4, -0x3e69999a    # -18.8f

    const v5, -0x3e43a7f0    # -23.543f

    const v6, -0x3e69999a    # -18.8f

    const v7, -0x3e32dd2f    # -25.642f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 159
    invoke-static {v0, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 160
    invoke-static {v1, v9}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;F)V

    .line 161
    new-instance v2, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    new-instance v3, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v11, v3, v4}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;-><init>(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V

    iput-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->bottomLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    .line 162
    return-void

    .line 102
    .end local v0    # "first":Landroid/graphics/Path;
    .end local v1    # "second":Landroid/graphics/Path;
    .end local v10    # "dimen":I
    .end local v11    # "joinedA":Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    :cond_24d
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto/16 :goto_34

    .line 95
    nop

    :array_252
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 96
    :array_25a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->parameter:F

    return v0
.end method

.method static synthetic access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F

    return-object v0
.end method

.method static synthetic access$1000(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->halfStrokeWidthPixel:F

    return v0
.end method

.method static synthetic access$1100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramB:F

    return v0
.end method

.method static synthetic access$1102(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramB:F

    return p1
.end method

.method static synthetic access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F

    return-object v0
.end method

.method static synthetic access$400(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)Z
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget-boolean v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->rounded:Z

    return v0
.end method

.method static synthetic access$500(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vX:F

    return v0
.end method

.method static synthetic access$602(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vX:F

    return p1
.end method

.method static synthetic access$700(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vY:F

    return v0
.end method

.method static synthetic access$702(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vY:F

    return p1
.end method

.method static synthetic access$800(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->magnitude:F

    return v0
.end method

.method static synthetic access$802(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->magnitude:F

    return p1
.end method

.method static synthetic access$900(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .prologue
    .line 16
    iget v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramA:F

    return v0
.end method

.method static synthetic access$902(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramA:F

    return p1
.end method

.method private static scalePath(Landroid/graphics/Path;F)V
    .registers 6
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "density"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    .line 218
    cmpl-float v1, p1, v2

    if-eqz v1, :cond_16

    .line 219
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    .local v0, "scaleMatrix":Landroid/graphics/Matrix;
    div-float v1, p1, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 221
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 223
    .end local v0    # "scaleMatrix":Landroid/graphics/Matrix;
    :cond_16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    iget-boolean v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->flip:Z

    if-eqz v0, :cond_1c

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 177
    :cond_1c
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->topLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    # invokes: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->draw(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->access$1400(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->middleLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    # invokes: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->draw(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->access$1400(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V

    .line 179
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->bottomLine:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;

    # invokes: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->draw(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->access$1400(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V

    .line 180
    iget-boolean v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->flip:Z

    if-eqz v0, :cond_32

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 183
    :cond_32
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 196
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    invoke-virtual {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 188
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 191
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 192
    invoke-virtual {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 193
    return-void
.end method

.method public setFlip(Z)V
    .registers 2
    .param p1, "flip"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->flip:Z

    .line 214
    invoke-virtual {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 215
    return-void
.end method

.method public setParameter(F)V
    .registers 4
    .param p1, "parameter"    # F

    .prologue
    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    .line 206
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between 1 and zero inclusive!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_13
    iput p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->parameter:F

    .line 209
    invoke-virtual {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 210
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    invoke-virtual {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 202
    return-void
.end method
