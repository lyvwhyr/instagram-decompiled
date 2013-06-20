.class Lcom/instagram/android/support/camera/CropFragment$7;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mImageMatrix:Landroid/graphics/Matrix;

.field mScale:F

.field final synthetic this$0:Lcom/instagram/android/support/camera/CropFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/CropFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->mScale:F

    return-void
.end method

.method private makeDefault()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 452
    new-instance v0, Lcom/instagram/android/support/camera/HighlightView;

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$800(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/support/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 454
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$300(Lcom/instagram/android/support/camera/CropFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 455
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$300(Lcom/instagram/android/support/camera/CropFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 457
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$200(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/android/support/camera/gallery/IImage;->getWidth()I

    move-result v2

    .line 458
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$200(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/android/support/camera/gallery/IImage;->getHeight()I

    move-result v1

    .line 461
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    long-to-int v6, v6

    int-to-double v6, v6

    const-wide v8, 0x3fd7ae147ae147aeL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 462
    const-string v7, "CropFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Max number of pixels: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    mul-int v7, v2, v1

    if-le v7, v6, :cond_0

    .line 468
    div-int/lit8 v2, v2, 0x2

    .line 469
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mSmallestDimension:I
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$900(Lcom/instagram/android/support/camera/CropFragment;)I

    move-result v1

    if-lez v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mSmallestDimension:I
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$900(Lcom/instagram/android/support/camera/CropFragment;)I

    move-result v1

    mul-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 477
    :goto_1
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 481
    :goto_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 483
    int-to-float v1, v3

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 486
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 489
    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    .line 490
    sub-int v3, v4, v1

    div-int/lit8 v4, v3, 0x2

    .line 492
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v6

    int-to-float v8, v4

    add-int/2addr v6, v1

    int-to-float v6, v6

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v3, v7, v8, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 493
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->mImageMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/support/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZF)V

    .line 494
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$800(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/support/camera/CropImageView;->setHighlightView(Lcom/instagram/android/support/camera/HighlightView;)V

    .line 495
    return-void

    :cond_1
    move v5, v1

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 499
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$800(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->mImageMatrix:Landroid/graphics/Matrix;

    .line 500
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->mScale:F

    .line 502
    invoke-direct {p0}, Lcom/instagram/android/support/camera/CropFragment$7;->makeDefault()V

    .line 504
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$800(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropImageView;->invalidate()V

    .line 505
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$800(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 506
    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mImageView:Lcom/instagram/android/support/camera/CropImageView;
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$800(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/android/support/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/HighlightView;

    iput-object v0, v1, Lcom/instagram/android/support/camera/CropFragment;->mCrop:Lcom/instagram/android/support/camera/HighlightView;

    .line 507
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$7;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iget-object v0, v0, Lcom/instagram/android/support/camera/CropFragment;->mCrop:Lcom/instagram/android/support/camera/HighlightView;

    invoke-virtual {v0, v3}, Lcom/instagram/android/support/camera/HighlightView;->setFocus(Z)V

    .line 510
    :cond_0
    return-void
.end method
