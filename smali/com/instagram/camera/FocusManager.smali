.class public Lcom/instagram/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# static fields
.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/instagram/camera/ui/FocusIndicatorView;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/instagram/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/instagram/camera/ComboPreferences;

.field private mPreviewFrame:Landroid/view/View;

.field private mSoundPlayer:Lcom/instagram/camera/SoundPlayer;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/instagram/camera/ComboPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "preferences"
    .parameter "defaultFocusMode"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 90
    iput-object p1, p0, Lcom/instagram/camera/FocusManager;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    .line 91
    iput-object p2, p0, Lcom/instagram/camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/instagram/camera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/camera/FocusManager$MainHandler;-><init>(Lcom/instagram/camera/FocusManager;Lcom/instagram/camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mListener:Lcom/instagram/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/instagram/camera/FocusManager$Listener;->autoFocus()V

    .line 341
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 342
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 343
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->resetTouchFocus()V

    .line 353
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mListener:Lcom/instagram/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/instagram/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 354
    iput v2, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 355
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 356
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mListener:Lcom/instagram/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/instagram/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iput v1, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 362
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    :cond_0
    return-void
.end method

.method private getLockAeAwbNeeded()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 116
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaxNumFocusAreas()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    .line 122
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 509
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchApi14(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "e"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 271
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    if-eq v0, v10, :cond_0

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->cancelAutoFocus()V

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 279
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 280
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 281
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 282
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 283
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_2

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 285
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v8, v10}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 287
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v8, v10}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_2
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/instagram/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 295
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/instagram/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 299
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 301
    div-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v1, v6, v1

    invoke-static {v3, v9, v1}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v1

    .line 302
    div-int/lit8 v3, v2, 0x2

    sub-int v3, v5, v3

    sub-int v2, v7, v2

    invoke-static {v3, v9, v2}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v2

    .line 303
    invoke-virtual {v0, v1, v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 305
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 306
    const/16 v1, 0xd

    aput v9, v0, v1

    .line 307
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 310
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mListener:Lcom/instagram/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/instagram/camera/FocusManager$Listener;->setFocusParameters()V

    .line 311
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 312
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->autoFocus()V

    .line 320
    :goto_0
    return v10

    .line 314
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 316
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 7
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    const/4 v5, 0x0

    .line 473
    int-to-float v0, p1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 474
    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 475
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p4, v2

    sub-int v3, p6, v0

    invoke-static {v2, v5, v3}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v2

    .line 476
    div-int/lit8 v3, v1, 0x2

    sub-int v3, p5, v3

    sub-int v4, p7, v1

    invoke-static {v3, v5, v4}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v3

    .line 478
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 479
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 480
    invoke-static {v4, p8}, Lcom/instagram/camera/CameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 481
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->capture()V

    goto :goto_0

    .line 197
    :cond_3
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 201
    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    goto :goto_0

    .line 202
    :cond_4
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 401
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 385
    const-string v0, "auto"

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    const-string v0, "auto"

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 401
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    const-string v1, "pref_camera_focusmode_key"

    iget-object v2, p0, Lcom/instagram/camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Lcom/instagram/camera/FocusManager$Listener;ZI)V
    .locals 3
    .parameter "focusIndicatorRotate"
    .parameter "previewFrame"
    .parameter "listener"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 128
    sget v0, Lcom/facebook/g;->focus_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicator:Lcom/instagram/camera/ui/FocusIndicatorView;

    .line 129
    iput-object p2, p0, Lcom/instagram/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 130
    iput-object p3, p0, Lcom/instagram/camera/FocusManager;->mListener:Lcom/instagram/camera/FocusManager$Listener;

    .line 132
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p4, p5, v1, v2}, Lcom/instagram/camera/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 138
    iget-object v1, p0, Lcom/instagram/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 140
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mInitialized:Z

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 148
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->resetTouchFocus()V

    .line 149
    return-void

    .line 143
    :cond_0
    const-string v0, "FocusManager"

    const-string v1, "mParameters is not initialized."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x0

    .line 98
    iput-object p1, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->getMaxNumFocusAreas()I

    move-result v1

    .line 105
    :goto_0
    if-lez v1, :cond_0

    const-string v1, "auto"

    iget-object v2, p0, Lcom/instagram/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mFocusAreaSupported:Z

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->getLockAeAwbNeeded()V

    .line 111
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public initializeSoundPlayer(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .parameter "fd"

    .prologue
    .line 367
    new-instance v0, Lcom/instagram/camera/SoundPlayer;

    invoke-direct {v0, p1}, Lcom/instagram/camera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mSoundPlayer:Lcom/instagram/camera/SoundPlayer;

    .line 368
    return-void
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 484
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 4
    .parameter "focused"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 217
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 221
    if-eqz p1, :cond_1

    .line 222
    iput v2, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 227
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->capture()V

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 224
    :cond_1
    iput v3, p0, Lcom/instagram/camera/FocusManager;->mState:I

    goto :goto_0

    .line 228
    :cond_2
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 232
    if-eqz p1, :cond_5

    .line 233
    iput v2, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 237
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mSoundPlayer:Lcom/instagram/camera/SoundPlayer;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mSoundPlayer:Lcom/instagram/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/instagram/camera/SoundPlayer;->play()V

    .line 244
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 248
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 242
    :cond_5
    iput v3, p0, Lcom/instagram/camera/FocusManager;->mState:I

    goto :goto_2

    .line 251
    :cond_6
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->onPreviewStopped()V

    .line 336
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 325
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    .line 329
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->resetTouchFocus()V

    .line 331
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 332
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->resetTouchFocus()V

    .line 213
    invoke-virtual {p0}, Lcom/instagram/camera/FocusManager;->updateFocusUI()V

    .line 214
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mAeAwbLock:Z

    .line 157
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mListener:Lcom/instagram/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/instagram/camera/FocusManager$Listener;->setFocusParameters()V

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->cancelAutoFocus()V

    .line 181
    :cond_3
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mAeAwbLock:Z

    .line 183
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mListener:Lcom/instagram/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/instagram/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    .line 260
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 261
    invoke-direct {p0}, Lcom/instagram/camera/FocusManager;->autoFocus()V

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :cond_2
    invoke-direct {p0, p1}, Lcom/instagram/camera/FocusManager;->onTouchApi14(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/instagram/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public releaseSoundPlayer()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mSoundPlayer:Lcom/instagram/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mSoundPlayer:Lcom/instagram/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/instagram/camera/SoundPlayer;->release()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/camera/FocusManager;->mSoundPlayer:Lcom/instagram/camera/SoundPlayer;

    .line 375
    :cond_0
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 450
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicator:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 456
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 458
    iget-object v2, p0, Lcom/instagram/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 459
    iget-object v3, p0, Lcom/instagram/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    .line 460
    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 463
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 464
    const/16 v1, 0xd

    aput v4, v0, v1

    .line 465
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 467
    iput-object v5, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 468
    iput-object v5, p0, Lcom/instagram/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/instagram/camera/FocusManager;->mAeAwbLock:Z

    .line 497
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/instagram/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 417
    iget-object v1, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicator:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v1}, Lcom/instagram/camera/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 418
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    iget-object v0, p0, Lcom/instagram/camera/FocusManager;->mFocusIndicator:Lcom/instagram/camera/ui/FocusIndicatorView;

    .line 424
    iget v1, p0, Lcom/instagram/camera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 425
    iget-object v1, p0, Lcom/instagram/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v1, :cond_2

    .line 426
    invoke-interface {v0}, Lcom/instagram/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 431
    :cond_2
    invoke-interface {v0}, Lcom/instagram/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 433
    :cond_3
    iget v1, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 434
    :cond_4
    invoke-interface {v0}, Lcom/instagram/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 439
    :cond_5
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/instagram/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 440
    invoke-interface {v0}, Lcom/instagram/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 441
    :cond_6
    iget v1, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 442
    invoke-interface {v0}, Lcom/instagram/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 443
    :cond_7
    iget v1, p0, Lcom/instagram/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 444
    invoke-interface {v0}, Lcom/instagram/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
