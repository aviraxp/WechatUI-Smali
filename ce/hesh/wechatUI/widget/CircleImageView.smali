.class public Lce/hesh/wechatUI/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static final mBitmapPaint:Landroid/graphics/Paint;

.field private static mBitmapShader:Landroid/graphics/BitmapShader;

.field private static mCanvas:Landroid/graphics/Canvas;

.field private static radius:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lce/hesh/wechatUI/widget/CircleImageView;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "imageViewCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lce/hesh/wechatUI/widget/CircleImageView;->getMeasuredWidth()I

    move-result v2

    .line 36
    .local v2, "mMeasuredWidth":I
    invoke-virtual {p0}, Lce/hesh/wechatUI/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    .line 37
    .local v1, "mMeasuredHeight":I
    if-lez v2, :cond_c

    if-gtz v1, :cond_14

    .line 38
    :cond_c
    const-string v3, "WeChange"

    const-string v4, "getMeasuredWidth() or getMeasuredHeight() <= 0  stop drawing!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v1    # "mMeasuredHeight":I
    .end local v2    # "mMeasuredWidth":I
    :goto_13
    return-void

    .line 41
    .restart local v1    # "mMeasuredHeight":I
    .restart local v2    # "mMeasuredWidth":I
    :cond_14
    sget-object v3, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_6c

    .line 42
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    const-string v3, "WeChange"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created bitmap! width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v3, Lce/hesh/wechatUI/widget/CircleImageView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v4, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sput v3, Lce/hesh/wechatUI/widget/CircleImageView;->radius:F

    .line 46
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    sput-object v3, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 47
    sget-object v3, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    sget-object v3, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v4, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 50
    :cond_6c
    sget-object v3, Lce/hesh/wechatUI/widget/CircleImageView;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v3}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p0}, Lce/hesh/wechatUI/widget/CircleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lce/hesh/wechatUI/widget/CircleImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lce/hesh/wechatUI/widget/CircleImageView;->radius:F

    sget-object v6, Lce/hesh/wechatUI/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    const-string v3, "WeChange"

    const-string v4, "draw Circle!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_8d} :catch_8e

    goto :goto_13

    .line 53
    .end local v1    # "mMeasuredHeight":I
    .end local v2    # "mMeasuredWidth":I
    :catch_8e
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    const-string v3, "WeChange"

    const-string v4, "[OutOfMemoryError] draw original!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method
