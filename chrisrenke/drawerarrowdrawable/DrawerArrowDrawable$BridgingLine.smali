.class Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;
.super Ljava/lang/Object;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BridgingLine"
.end annotation


# instance fields
.field private final pathA:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

.field private final pathB:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

.field final synthetic this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;


# direct methods
.method private constructor <init>(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;)V
    .registers 4
    .param p2, "pathA"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    .param p3, "pathB"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    .prologue
    .line 41
    iput-object p1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->pathA:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    .line 43
    iput-object p3, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->pathB:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;)V
    .registers 5
    .param p1, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    .param p2, "x1"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    .param p3, "x2"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;
    .param p4, "x3"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$1;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;-><init>(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;)V

    return-void
.end method

.method static synthetic access$1400(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V
    .registers 2
    .param p0, "x0"    # Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->pathA:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->parameter:F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$000(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v2

    # invokes: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->getPointOnLine(F[F)V
    invoke-static {v0, v1, v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->access$200(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;F[F)V

    .line 48
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->pathB:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->parameter:F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$000(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v2

    # invokes: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->getPointOnLine(F[F)V
    invoke-static {v0, v1, v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;->access$200(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$JoinedPath;F[F)V

    .line 49
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->rounded:Z
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$400(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 50
    invoke-direct {p0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->insetPointsForRoundCaps()V

    .line 52
    :cond_2f
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v1, v0, v3

    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v2, v0, v4

    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v3, v0, v3

    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    aget v4, v0, v4

    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$500(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    return-void
.end method

.method private insetPointsForRoundCaps()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v2

    aget v2, v2, v4

    sub-float/2addr v1, v2

    # setter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vX:F
    invoke-static {v0, v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$602(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F

    .line 57
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v2

    aget v2, v2, v5

    sub-float/2addr v1, v2

    # setter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vY:F
    invoke-static {v0, v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$702(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F

    .line 58
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vX:F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$600(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vX:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$600(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vY:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$700(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vY:F
    invoke-static {v3}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$700(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    # setter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->magnitude:F
    invoke-static {v0, v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$802(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F

    .line 59
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->magnitude:F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$800(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->halfStrokeWidthPixel:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$1000(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->magnitude:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$800(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    div-float/2addr v1, v2

    # setter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramA:F
    invoke-static {v0, v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$902(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F

    .line 60
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->halfStrokeWidthPixel:F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$1000(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v1

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->magnitude:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$800(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    div-float/2addr v1, v2

    # setter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramB:F
    invoke-static {v0, v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$1102(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;F)F

    .line 61
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vX:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$600(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramA:F
    invoke-static {v3}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$900(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 62
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsA:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vY:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$700(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramA:F
    invoke-static {v3}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$900(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 63
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vX:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$600(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramB:F
    invoke-static {v3}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$1100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 64
    iget-object v0, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v0}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v0

    iget-object v1, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->coordsB:[F
    invoke-static {v1}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$300(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)[F

    move-result-object v1

    aget v1, v1, v5

    iget-object v2, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->vY:F
    invoke-static {v2}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$700(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v2

    iget-object v3, p0, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable$BridgingLine;->this$0:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    # getter for: Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->paramB:F
    invoke-static {v3}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->access$1100(Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 65
    return-void
.end method
