.class Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;
.super Ljava/lang/Object;
.source "TiltShiftManager.java"

# interfaces
.implements Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field mStartScalePanPointX:F

.field mStartScalePanPointY:F

.field final synthetic this$0:Lcom/instagram/android/gl/TiltShiftManager;


# direct methods
.method private constructor <init>(Lcom/instagram/android/gl/TiltShiftManager;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/gl/TiltShiftManager;Lcom/instagram/android/gl/TiltShiftManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;-><init>(Lcom/instagram/android/gl/TiltShiftManager;)V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 320
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #calls: Lcom/instagram/android/gl/TiltShiftManager;->beginMoveState()V
    invoke-static {v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$100(Lcom/instagram/android/gl/TiltShiftManager;)V

    .line 322
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F
    invoke-static {v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$200(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v0

    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3dcccccd

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F
    invoke-static {v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$200(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #calls: Lcom/instagram/android/gl/TiltShiftManager;->setRadius(F)V
    invoke-static {v1, v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$300(Lcom/instagram/android/gl/TiltShiftManager;F)V

    .line 333
    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #setter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F
    invoke-static {v1, v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$202(Lcom/instagram/android/gl/TiltShiftManager;F)F

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 338
    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 340
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->mStartScalePanPointX:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;
    invoke-static {v2}, Lcom/instagram/android/gl/TiltShiftManager;->access$400(Lcom/instagram/android/gl/TiltShiftManager;)Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    #calls: Lcom/instagram/android/gl/TiltShiftManager;->getGlCoordinate(FF)F
    invoke-static {v0, v2}, Lcom/instagram/android/gl/TiltShiftManager;->access$500(FF)F

    move-result v0

    .line 341
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->mStartScalePanPointY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;
    invoke-static {v2}, Lcom/instagram/android/gl/TiltShiftManager;->access$400(Lcom/instagram/android/gl/TiltShiftManager;)Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    #calls: Lcom/instagram/android/gl/TiltShiftManager;->getGlCoordinate(FF)F
    invoke-static {v1, v2}, Lcom/instagram/android/gl/TiltShiftManager;->access$500(FF)F

    move-result v1

    .line 343
    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F
    invoke-static {v2}, Lcom/instagram/android/gl/TiltShiftManager;->access$600(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 345
    neg-float v1, v1

    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F
    invoke-static {v2}, Lcom/instagram/android/gl/TiltShiftManager;->access$700(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 348
    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #calls: Lcom/instagram/android/gl/TiltShiftManager;->setOrigin(FF)V
    invoke-static {v2, v0, v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$800(Lcom/instagram/android/gl/TiltShiftManager;FF)V

    .line 351
    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getPreviousSpanY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getPreviousSpanX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 353
    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 355
    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F
    invoke-static {v4}, Lcom/instagram/android/gl/TiltShiftManager;->access$900(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v4

    double-to-float v2, v2

    add-float/2addr v2, v4

    double-to-float v0, v0

    sub-float v0, v2, v0

    .line 358
    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #calls: Lcom/instagram/android/gl/TiltShiftManager;->setTheta(F)V
    invoke-static {v1, v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$1000(Lcom/instagram/android/gl/TiltShiftManager;F)V

    .line 359
    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #setter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F
    invoke-static {v1, v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$902(Lcom/instagram/android/gl/TiltShiftManager;F)F

    .line 362
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F
    invoke-static {v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$1100(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v1

    #setter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F
    invoke-static {v0, v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$602(Lcom/instagram/android/gl/TiltShiftManager;F)F

    .line 367
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F
    invoke-static {v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$1200(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v1

    #setter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F
    invoke-static {v0, v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$702(Lcom/instagram/android/gl/TiltShiftManager;F)F

    .line 368
    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->mStartScalePanPointX:F

    .line 369
    invoke-virtual {p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->mStartScalePanPointY:F

    .line 370
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F
    invoke-static {v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$1300(Lcom/instagram/android/gl/TiltShiftManager;)F

    move-result v1

    #setter for: Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F
    invoke-static {v0, v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$902(Lcom/instagram/android/gl/TiltShiftManager;F)F

    .line 371
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #calls: Lcom/instagram/android/gl/TiltShiftManager;->beginMoveState()V
    invoke-static {v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$100(Lcom/instagram/android/gl/TiltShiftManager;)V

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z
    invoke-static {v0, v1}, Lcom/instagram/android/gl/TiltShiftManager;->access$1402(Lcom/instagram/android/gl/TiltShiftManager;Z)Z

    .line 377
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    #getter for: Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;
    invoke-static {v0}, Lcom/instagram/android/gl/TiltShiftManager;->access$1500(Lcom/instagram/android/gl/TiltShiftManager;)Lcom/instagram/android/gl/IgScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->hardReset()V

    .line 378
    return-void
.end method
