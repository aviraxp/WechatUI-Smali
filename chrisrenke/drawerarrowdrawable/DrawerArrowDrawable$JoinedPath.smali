.class Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
.super Ljava/lang/Object;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoinedPath"
.end annotation


# instance fields
.field private final lengthFirst:F

.field private final lengthSecond:F

.field private final measureFirst:Landroid/graphics/PathMeasure;

.field private final measureSecond:Landroid/graphics/PathMeasure;


# direct methods
.method private constructor <init>(Landroid/graphics/Path;Landroid/graphics/Path;)V
    .registers 5
    .param p1, "pathFirst"    # Landroid/graphics/Path;
    .param p2, "pathSecond"    # Landroid/graphics/Path;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->measureFirst:Landroid/graphics/PathMeasure;

    .line 76
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->measureSecond:Landroid/graphics/PathMeasure;

    .line 77
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->measureFirst:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->lengthFirst:F

    .line 78
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->measureSecond:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->lengthSecond:F

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Path;Landroid/graphics/Path;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/graphics/Path;
    .param p2, "x1"    # Landroid/graphics/Path;
    .param p3, "x2"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;)V

    return-void
.end method

.method static synthetic access$200(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;F[F)V
    .registers 3
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    .param p1, "x1"    # F
    .param p2, "x2"    # [F

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->getPointOnLine(F[F)V

    return-void
.end method

.method private getPointOnLine(F[F)V
    .registers 8
    .param p1, "parameter"    # F
    .param p2, "coords"    # [F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 82
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_14

    .line 83
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->measureFirst:Landroid/graphics/PathMeasure;

    iget v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->lengthFirst:F

    mul-float v2, p1, v3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1, p2, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 87
    :goto_13
    return-void

    .line 86
    :cond_14
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->measureSecond:Landroid/graphics/PathMeasure;

    iget v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->lengthSecond:F

    sub-float v2, p1, v2

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1, p2, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto :goto_13
.end method
