.class public Lcom/instagram/android/video/gl/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/instagram/android/video/gl/GLCanvas;


# static fields
.field private static final BOX_COORDINATES:[F = null

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/instagram/android/video/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/video/gl/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/instagram/android/video/gl/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/instagram/android/video/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/instagram/android/video/gl/GLCanvasImpl;->BOX_COORDINATES:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    .line 56
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    .line 60
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 62
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureColor:[F

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 75
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTempMatrix:[F

    .line 76
    new-instance v0, Lcom/instagram/android/video/util/IntArray;

    invoke-direct {v0}, Lcom/instagram/android/video/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mUnboundTextures:Lcom/instagram/android/video/util/IntArray;

    .line 77
    new-instance v0, Lcom/instagram/android/video/util/IntArray;

    invoke-direct {v0}, Lcom/instagram/android/video/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDeleteBuffers:Lcom/instagram/android/video/util/IntArray;

    .line 80
    iput-boolean v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBlendEnabled:Z

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mFrameBuffer:[I

    .line 93
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 94
    new-instance v0, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-direct {v0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    .line 95
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->initialize()V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/video/gl/GLCanvasImpl;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 144
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z
    .locals 3
    .parameter "texture"

    .prologue
    .line 456
    invoke-virtual {p1, p0}, Lcom/instagram/android/video/gl/BasicTexture;->onBind(Lcom/instagram/android/video/gl/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getTarget()I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTextureTarget(I)V

    .line 459
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 460
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 4
    .parameter "gl11ep"

    .prologue
    .line 894
    const v0, 0x8d40

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 895
    const v0, 0x8cd5

    if-eq v1, v0, :cond_0

    .line 896
    const-string v0, ""

    .line 897
    packed-switch v1, :pswitch_data_0

    .line 920
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 899
    :pswitch_1
    const-string v0, "FRAMEBUFFER_FORMATS"

    goto :goto_0

    .line 902
    :pswitch_2
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    goto :goto_0

    .line 905
    :pswitch_3
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    goto :goto_0

    .line 908
    :pswitch_4
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    goto :goto_0

    .line 911
    :pswitch_5
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    goto :goto_0

    .line 914
    :pswitch_6
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    .line 917
    :pswitch_7
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    .line 922
    :cond_0
    return-void

    .line 897
    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/instagram/android/video/gl/BasicTexture;)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 424
    invoke-virtual {p2}, Lcom/instagram/android/video/gl/BasicTexture;->getWidth()I

    move-result v0

    .line 425
    invoke-virtual {p2}, Lcom/instagram/android/video/gl/BasicTexture;->getHeight()I

    move-result v1

    .line 426
    invoke-virtual {p2}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 427
    invoke-virtual {p2}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureHeight()I

    move-result v3

    .line 429
    iget v4, p0, Landroid/graphics/RectF;->left:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->left:F

    .line 430
    iget v4, p0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 431
    iget v4, p0, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->top:F

    .line 432
    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    .line 435
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 436
    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 437
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Landroid/graphics/RectF;->left:F

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 439
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 441
    :cond_0
    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 442
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 443
    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 445
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 447
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/instagram/android/video/gl/BasicTexture;IIII)V
    .locals 8
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v6, 0x3f00

    .line 343
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 355
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->textureRect(FFFF)V

    .line 369
    :cond_0
    :goto_1
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v0

    .line 360
    aget v1, v0, v7

    add-float/2addr v1, v6

    float-to-int p2, v1

    .line 361
    const/4 v1, 0x1

    aget v1, v0, v1

    add-float/2addr v1, v6

    float-to-int p3, v1

    .line 362
    const/4 v1, 0x2

    aget v1, v0, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    sub-int p4, v1, p2

    .line 363
    const/4 v1, 0x3

    aget v0, v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 364
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 365
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v7

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 366
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/instagram/android/video/gl/BasicTexture;IFIIIIF)V
    .locals 7
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 550
    const v0, 0x3c23d70a

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 551
    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/video/gl/GLCanvasImpl;->drawTexture(Lcom/instagram/android/video/gl/BasicTexture;IIIIF)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    .line 554
    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    int-to-float v4, p7

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/instagram/android/video/util/VideoUtil;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 562
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->bindTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 566
    invoke-direct {p0, p2, p3, p8}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setMixedColor(IFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 568
    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLCanvasImpl;->drawBoundTexture(Lcom/instagram/android/video/gl/BasicTexture;IIII)V

    .line 569
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 558
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawTexture(Lcom/instagram/android/video/gl/BasicTexture;IIIIF)V
    .locals 2
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 379
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 383
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->bindTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-virtual {v0, p6}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 385
    invoke-direct/range {p0 .. p5}, Lcom/instagram/android/video/gl/GLCanvasImpl;->drawBoundTexture(Lcom/instagram/android/video/gl/BasicTexture;IIII)V

    goto :goto_0

    .line 381
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private freeRestoreConfig(Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRecycledRestoreAction:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    iput-object v0, p1, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;->mNextFree:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    .line 802
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRecycledRestoreAction:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    .line 803
    return-void
.end method

.method private initialize()V
    .locals 9

    .prologue
    const v8, 0x8892

    const/4 v7, 0x1

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 151
    sget-object v1, Lcom/instagram/android/video/gl/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 152
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 153
    sget-object v2, Lcom/instagram/android/video/gl/GLCanvasImpl;->BOX_COORDINATES:[F

    sget-object v3, Lcom/instagram/android/video/gl/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    new-array v2, v7, [I

    .line 156
    invoke-static {v7, v2, v4}, Lcom/instagram/android/video/gl/GLId;->glGenBuffers(I[II)V

    .line 157
    aget v2, v2, v4

    iput v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBoxCoords:I

    .line 159
    iget v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 160
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    const v3, 0x88e4

    invoke-interface {v0, v8, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 164
    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 165
    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 168
    const v1, 0x84c1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 169
    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 170
    const v1, 0x84c0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 171
    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 174
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 5
    .parameter "matrix"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const v4, 0x3727c5ac

    .line 579
    .line 580
    const/4 v2, 0x4

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    aget v2, p0, v0

    const v3, -0x48d83a54

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x5

    aget v2, p0, v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private mapPoints([FIIII)[F
    .locals 6
    .parameter "m"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 323
    const/4 v1, 0x0

    aget v1, p1, v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-float v3, p3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    add-float/2addr v1, v2

    .line 324
    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p1, v3

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p1, v3

    add-float/2addr v2, v3

    .line 325
    const/4 v3, 0x3

    aget v3, p1, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-float v5, p3

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p1, v4

    add-float/2addr v3, v4

    .line 326
    const/4 v4, 0x0

    div-float/2addr v1, v3

    aput v1, v0, v4

    .line 327
    const/4 v1, 0x1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 330
    const/4 v1, 0x0

    aget v1, p1, v1

    int-to-float v2, p4

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-float v3, p5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    add-float/2addr v1, v2

    .line 331
    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-float v3, p4

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p1, v3

    int-to-float v4, p5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p1, v3

    add-float/2addr v2, v3

    .line 332
    const/4 v3, 0x3

    aget v3, p1, v3

    int-to-float v4, p4

    mul-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-float v5, p5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, p1, v4

    add-float/2addr v3, v4

    .line 333
    const/4 v4, 0x2

    div-float/2addr v1, v3

    aput v1, v0, v4

    .line 334
    const/4 v1, 0x3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 336
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRecycledRestoreAction:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRecycledRestoreAction:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    .line 808
    iget-object v1, v0, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;->mNextFree:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    iput-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRecycledRestoreAction:Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    .line 811
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;-><init>(Lcom/instagram/android/video/gl/GLCanvasImpl$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 846
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTempMatrix:[F

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 847
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 842
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 9
    .parameter "toColor"
    .parameter "ratio"
    .parameter "alpha"

    .prologue
    const v8, 0x47057500

    const/high16 v2, 0x3f80

    const v7, 0x44408000

    const v6, 0x47057600

    const/16 v5, 0x2300

    .line 482
    sub-float v0, v2, p2

    mul-float/2addr v0, p3

    .line 483
    mul-float v1, p3, p2

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 488
    ushr-int/lit8 v2, p1, 0x18

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x477e0100

    div-float/2addr v1, v2

    .line 489
    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v1

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 492
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 493
    const/16 v1, 0x2201

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureColor:[F

    const/4 v3, 0x0

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 495
    const v1, 0x8571

    invoke-interface {v0, v5, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 496
    const v1, 0x8572

    invoke-interface {v0, v5, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 497
    const v1, 0x8581

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 498
    const v1, 0x8591

    const/high16 v2, 0x4440

    invoke-interface {v0, v5, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 499
    const v1, 0x8589

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 500
    const v1, 0x8599

    invoke-interface {v0, v5, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 503
    const v1, 0x8582

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 504
    const v1, 0x8592

    invoke-interface {v0, v5, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 507
    const v1, 0x858a

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 508
    const v1, 0x859a

    invoke-interface {v0, v5, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 510
    return-void
.end method

.method private setRenderTarget(Lcom/instagram/android/video/gl/RawTexture;)V
    .locals 6
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 850
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 852
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetTexture:Lcom/instagram/android/video/gl/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 853
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mFrameBuffer:[I

    invoke-static {v3, v2, v5}, Lcom/instagram/android/video/gl/GLId;->glGenBuffers(I[II)V

    .line 854
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 857
    :cond_0
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetTexture:Lcom/instagram/android/video/gl/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 858
    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 859
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mFrameBuffer:[I

    invoke-interface {v0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 862
    :cond_1
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetTexture:Lcom/instagram/android/video/gl/RawTexture;

    .line 863
    if-nez p1, :cond_2

    .line 864
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mScreenWidth:I

    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mScreenHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setSize(II)V

    .line 877
    :goto_0
    return-void

    .line 866
    :cond_2
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setSize(II)V

    .line 868
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Lcom/instagram/android/video/gl/RawTexture;->prepare(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 870
    :cond_3
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 875
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureColor:[F

    .line 465
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 466
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 467
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 468
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 469
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 715
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 716
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 717
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 718
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 719
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 720
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 721
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 722
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 723
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 724
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 710
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 711
    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2
    .parameter "mTextureTransform"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 728
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 729
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 730
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 269
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->saveTransform()V

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->translate(FF)V

    .line 271
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->scale(FFF)V

    .line 273
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 274
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 276
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->restoreTransform()V

    .line 277
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureRect:I

    .line 278
    return-void
.end method


# virtual methods
.method public beginRenderTarget(Lcom/instagram/android/video/gl/RawTexture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->save()V

    .line 889
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetTexture:Lcom/instagram/android/video/gl/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setRenderTarget(Lcom/instagram/android/video/gl/RawTexture;)V

    .line 891
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->clearBuffer([F)V

    .line 707
    return-void
.end method

.method public clearBuffer([F)V
    .locals 5
    .parameter "argb"

    .prologue
    const/4 v2, 0x0

    .line 696
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 701
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 702
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public deleteBuffer(I)V
    .locals 2
    .parameter "bufferId"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mUnboundTextures:Lcom/instagram/android/video/util/IntArray;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDeleteBuffers:Lcom/instagram/android/video/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/instagram/android/video/util/IntArray;->add(I)V

    .line 747
    monitor-exit v1

    .line 748
    return-void

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 6

    .prologue
    .line 752
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mUnboundTextures:Lcom/instagram/android/video/util/IntArray;

    monitor-enter v1

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mUnboundTextures:Lcom/instagram/android/video/util/IntArray;

    .line 754
    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 755
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/instagram/android/video/gl/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 756
    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->clear()V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDeleteBuffers:Lcom/instagram/android/video/util/IntArray;

    .line 760
    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 761
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/instagram/android/video/gl/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 762
    invoke-virtual {v0}, Lcom/instagram/android/video/util/IntArray;->clear()V

    .line 764
    :cond_1
    monitor-exit v1

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public drawLine(FFFFLcom/instagram/android/video/gl/GLPaint;)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 198
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/instagram/android/video/gl/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 199
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/instagram/android/video/gl/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 201
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->saveTransform()V

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->translate(FF)V

    .line 203
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->scale(FFF)V

    .line 205
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 206
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 208
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->restoreTransform()V

    .line 209
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawLine:I

    .line 210
    return-void
.end method

.method public drawMesh(Lcom/instagram/android/video/gl/BasicTexture;IIIIII)V
    .locals 8
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "xyBuffer"
    .parameter "uvBuffer"
    .parameter "indexBuffer"
    .parameter "indexCount"

    .prologue
    const/4 v7, 0x0

    const v6, 0x8892

    const/16 v5, 0x1406

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 283
    iget v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    .line 284
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->bindTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f733333

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 292
    const/high16 v0, 0x3f80

    const/high16 v2, 0x3f80

    invoke-direct {p0, v7, v7, v0, v2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 294
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->saveTransform()V

    .line 295
    int-to-float v0, p2

    int-to-float v2, p3

    invoke-virtual {p0, v0, v2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->translate(FF)V

    .line 297
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 299
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 300
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 302
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 303
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 305
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v2, 0x8893

    invoke-interface {v0, v2, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 306
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v2, 0x5

    const/16 v3, 0x1401

    invoke-interface {v0, v2, p7, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 309
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 310
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 311
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 313
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->restoreTransform()V

    .line 314
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawMesh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 286
    goto :goto_1
.end method

.method public drawMixed(Lcom/instagram/android/video/gl/BasicTexture;IFIIII)V
    .locals 9
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 452
    iget v8, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/instagram/android/video/gl/GLCanvasImpl;->drawMixed(Lcom/instagram/android/video/gl/BasicTexture;IFIIIIF)V

    .line 453
    return-void
.end method

.method public drawMixed(Lcom/instagram/android/video/gl/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const v0, 0x3c23d70a

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    .line 518
    invoke-virtual {p0, p1, p4, p5}, Lcom/instagram/android/video/gl/GLCanvasImpl;->drawTexture(Lcom/instagram/android/video/gl/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 520
    :cond_2
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_3

    .line 521
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 525
    :cond_3
    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    .line 528
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 529
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 530
    iget-object p4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 531
    iget-object p5, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 533
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/instagram/android/video/util/VideoUtil;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3f733333

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 536
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->bindTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    const v2, 0x8570

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 540
    invoke-direct {p0, p2, p3, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setMixedColor(IFF)V

    .line 541
    invoke-static {p4, p5, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/instagram/android/video/gl/BasicTexture;)V

    .line 542
    invoke-direct {p0, p4}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 543
    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->textureRect(FFFF)V

    .line 544
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 533
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawRect(FFFFLcom/instagram/android/video/gl/GLPaint;)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 180
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/instagram/android/video/gl/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 181
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/instagram/android/video/gl/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 183
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->saveTransform()V

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->translate(FF)V

    .line 185
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->scale(FFF)V

    .line 187
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 188
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 190
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->restoreTransform()V

    .line 191
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawLine:I

    .line 192
    return-void
.end method

.method public drawTexture(Lcom/instagram/android/video/gl/BasicTexture;IIII)V
    .locals 7
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 374
    iget v6, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/video/gl/GLCanvasImpl;->drawTexture(Lcom/instagram/android/video/gl/BasicTexture;IIIIF)V

    .line 375
    return-void
.end method

.method public drawTexture(Lcom/instagram/android/video/gl/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .parameter "texture"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 394
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 395
    iget-object p2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 396
    iget-object p3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 398
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 400
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->bindTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {p2, p3, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/instagram/android/video/gl/BasicTexture;)V

    .line 402
    invoke-direct {p0, p2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 403
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 404
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_0

    .line 398
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/instagram/android/video/gl/BasicTexture;[FIIII)V
    .locals 4
    .parameter "texture"
    .parameter "mTextureTransform"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 410
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 412
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->bindTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    :goto_1
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :cond_2
    invoke-direct {p0, p2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setTextureCoords([F)V

    .line 414
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 415
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 829
    const-string v0, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawMesh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureRect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureOES:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountFillRect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawLine:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 833
    iput v4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawMesh:I

    .line 834
    iput v4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureRect:I

    .line 835
    iput v4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountTextureOES:I

    .line 836
    iput v4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountFillRect:I

    .line 837
    iput v4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountDrawLine:I

    .line 838
    const-string v1, "GLCanvasImp"

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void
.end method

.method public endRenderTarget()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/RawTexture;

    .line 882
    invoke-direct {p0, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->setRenderTarget(Lcom/instagram/android/video/gl/RawTexture;)V

    .line 883
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->restore()V

    .line 884
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGLState:Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, p5, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 215
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 217
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->saveTransform()V

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/video/gl/GLCanvasImpl;->translate(FF)V

    .line 219
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/instagram/android/video/gl/GLCanvasImpl;->scale(FFF)V

    .line 221
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 222
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 224
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->restoreTransform()V

    .line 225
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountFillRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mCountFillRect:I

    .line 226
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    return v0
.end method

.method public getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 139
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 140
    iget v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    .line 141
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .parameter "matrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTempMatrix:[F

    .line 262
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 263
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    .line 796
    invoke-virtual {v0, p0}, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;->restore(Lcom/instagram/android/video/gl/GLCanvasImpl;)V

    .line 797
    invoke-direct {p0, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->freeRestoreConfig(Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;)V

    .line 798
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 252
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTempMatrix:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 254
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 255
    iget-object v4, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 256
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 769
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->save(I)V

    .line 770
    return-void
.end method

.method public save(I)V
    .locals 5
    .parameter "saveFlags"

    .prologue
    const/4 v4, 0x0

    .line 774
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLCanvasImpl;->obtainRestoreConfig()Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;

    move-result-object v0

    .line 776
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 777
    iget v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    iput v1, v0, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;->mAlpha:F

    .line 783
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    iget-object v2, v0, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    :goto_1
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    return-void

    .line 779
    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;->mAlpha:F

    goto :goto_0

    .line 786
    :cond_1
    iget-object v1, v0, Lcom/instagram/android/video/gl/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "sz"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 248
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 128
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 129
    iput p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    .line 130
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 100
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetTexture:Lcom/instagram/android/video/gl/RawTexture;

    if-nez v0, :cond_0

    .line 103
    iput p1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mScreenWidth:I

    .line 104
    iput p2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mScreenHeight:I

    .line 106
    :cond_0
    iput v5, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mAlpha:F

    .line 108
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 109
    invoke-interface {v0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 110
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 111
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 112
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-static {v0, v4, v2, v4, v3}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 114
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 115
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 117
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    .line 118
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 120
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mTargetTexture:Lcom/instagram/android/video/gl/RawTexture;

    if-nez v2, :cond_1

    .line 121
    int-to-float v2, p2

    invoke-static {v0, v1, v4, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 122
    const/high16 v2, -0x4080

    invoke-static {v0, v1, v5, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 124
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public translate(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    .line 239
    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 240
    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 241
    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 242
    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 243
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 231
    return-void
.end method

.method public unloadTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 736
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mUnboundTextures:Lcom/instagram/android/video/util/IntArray;

    monitor-enter v1

    .line 737
    :try_start_0
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 739
    :goto_0
    return v0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLCanvasImpl;->mUnboundTextures:Lcom/instagram/android/video/util/IntArray;

    iget v2, p1, Lcom/instagram/android/video/gl/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/util/IntArray;->add(I)V

    .line 739
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
