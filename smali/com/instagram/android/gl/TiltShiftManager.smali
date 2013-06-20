.class public Lcom/instagram/android/gl/TiltShiftManager;
.super Ljava/lang/Object;
.source "TiltShiftManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/android/gl/TiltShiftManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRADIENT_MAX_RADIUS:F = 1.0f

.field private static final GRADIENT_MIN_RADIUS:F = 0.1f

.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActionMoved:Z

.field private mActivePointerId:I

.field private mDegrees:F

.field private mGlView:Landroid/opengl/GLSurfaceView;

.field private mLastMovedPointerId:I

.field private mLastX:F

.field private mLastY:F

.field private mOriginX:F

.field private mOriginY:F

.field private mRadius:F

.field private mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

.field private mStartPanOriginX:F

.field private mStartPanOriginY:F

.field private mStartPanPointX:F

.field private mStartPanPointY:F

.field private mStartRadius:F

.field private mStartTheta:F

.field private mTheta:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    new-instance v0, Lcom/instagram/android/gl/TiltShiftManager$2;

    invoke-direct {v0}, Lcom/instagram/android/gl/TiltShiftManager$2;-><init>()V

    sput-object v0, Lcom/instagram/android/gl/TiltShiftManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f00

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    .line 18
    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    .line 19
    iput v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    .line 20
    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    .line 21
    iput v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    .line 36
    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    .line 37
    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastMovedPointerId:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f00

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    .line 18
    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    .line 19
    iput v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    .line 20
    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    .line 21
    iput v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    .line 36
    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    .line 37
    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastMovedPointerId:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/gl/TiltShiftManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/instagram/android/gl/TiltShiftManager;->beginMoveState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/gl/TiltShiftManager;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/TiltShiftManager;->setTheta(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/gl/TiltShiftManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/instagram/android/gl/TiltShiftManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    return v0
.end method

.method static synthetic access$1300(Lcom/instagram/android/gl/TiltShiftManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    return v0
.end method

.method static synthetic access$1402(Lcom/instagram/android/gl/TiltShiftManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/instagram/android/gl/TiltShiftManager;)Lcom/instagram/android/gl/IgScaleGestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/gl/TiltShiftManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F

    return v0
.end method

.method static synthetic access$202(Lcom/instagram/android/gl/TiltShiftManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/instagram/android/gl/TiltShiftManager;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/instagram/android/gl/TiltShiftManager;->setRadius(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/gl/TiltShiftManager;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$500(FF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/instagram/android/gl/TiltShiftManager;->getGlCoordinate(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/instagram/android/gl/TiltShiftManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F

    return v0
.end method

.method static synthetic access$602(Lcom/instagram/android/gl/TiltShiftManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F

    return p1
.end method

.method static synthetic access$700(Lcom/instagram/android/gl/TiltShiftManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F

    return v0
.end method

.method static synthetic access$702(Lcom/instagram/android/gl/TiltShiftManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F

    return p1
.end method

.method static synthetic access$800(Lcom/instagram/android/gl/TiltShiftManager;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/gl/TiltShiftManager;->setOrigin(FF)V

    return-void
.end method

.method static synthetic access$900(Lcom/instagram/android/gl/TiltShiftManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F

    return v0
.end method

.method static synthetic access$902(Lcom/instagram/android/gl/TiltShiftManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F

    return p1
.end method

.method private beginMoveState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-boolean v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 77
    :cond_1
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftFadeInMaskHighlight()V

    .line 78
    iput-boolean v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    goto :goto_0
.end method

.method private static getGlCoordinate(FF)F
    .locals 1
    .parameter "position"
    .parameter "total"

    .prologue
    .line 398
    div-float v0, p0, p1

    return v0
.end method

.method private setOrigin(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    iput p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    .line 242
    iput p2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    .line 243
    invoke-static {p1, p2}, Lcom/instagram/android/gl/NativeBridge;->setTiltShiftOrigin(FF)V

    .line 244
    return-void
.end method

.method private setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 247
    iput p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    .line 248
    invoke-static {p1}, Lcom/instagram/android/gl/NativeBridge;->setTiltShiftRadius(F)V

    .line 249
    return-void
.end method

.method private setTheta(F)V
    .locals 0
    .parameter "theta"

    .prologue
    .line 236
    iput p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    .line 237
    invoke-static {p1}, Lcom/instagram/android/gl/NativeBridge;->setTiltShiftTheta(F)V

    .line 238
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    return v0
.end method

.method public getTheta()F
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const-wide v8, -0x407b851eb851eb85L

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/high16 v7, 0x3f80

    const/4 v1, 0x1

    .line 82
    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    invoke-virtual {v2, p1}, Lcom/instagram/android/gl/IgScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 85
    and-int/lit16 v3, v2, 0xff

    packed-switch v3, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 88
    :pswitch_1
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F

    .line 89
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F

    .line 90
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F

    .line 91
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointX:F

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointY:F

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastX:F

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastY:F

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 101
    iput-boolean v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    goto :goto_0

    .line 109
    :pswitch_2
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    if-eq v0, v4, :cond_0

    .line 112
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 117
    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastMovedPointerId:I

    iget v4, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    if-eq v3, v4, :cond_1

    .line 118
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastMovedPointerId:I

    goto :goto_0

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    invoke-virtual {v3}, Lcom/instagram/android/gl/IgScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastX:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastY:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 130
    :cond_2
    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastX:F

    .line 131
    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastY:F

    .line 133
    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/instagram/android/gl/TiltShiftManager;->getGlCoordinate(FF)F

    move-result v2

    .line 134
    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointY:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/instagram/android/gl/TiltShiftManager;->getGlCoordinate(FF)F

    move-result v0

    .line 137
    float-to-double v3, v2

    cmpg-double v3, v3, v8

    if-ltz v3, :cond_3

    float-to-double v3, v2

    const-wide v5, 0x3f847ae147ae147bL

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_3

    float-to-double v3, v0

    cmpg-double v3, v3, v8

    if-ltz v3, :cond_3

    float-to-double v3, v0

    const-wide v5, 0x3f847ae147ae147bL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 138
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/gl/TiltShiftManager;->beginMoveState()V

    .line 140
    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F

    add-float/2addr v2, v3

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 141
    neg-float v0, v0

    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F

    add-float/2addr v0, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 143
    invoke-direct {p0, v2, v0}, Lcom/instagram/android/gl/TiltShiftManager;->setOrigin(FF)V

    goto/16 :goto_0

    .line 153
    :pswitch_3
    iput v4, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    .line 156
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    invoke-virtual {v0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    iget-boolean v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 158
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastX:F

    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/instagram/android/gl/TiltShiftManager;->getGlCoordinate(FF)F

    move-result v0

    .line 159
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastY:F

    iget-object v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/instagram/android/gl/TiltShiftManager;->getGlCoordinate(FF)F

    move-result v2

    sub-float v2, v7, v2

    .line 160
    const-string v3, "actionMoved"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTiltShiftOrigin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v0, v2}, Lcom/instagram/android/gl/TiltShiftManager;->setOrigin(FF)V

    .line 163
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftFadeInMaskHighlight()V

    .line 164
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/gl/TiltShiftManager$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/gl/TiltShiftManager$1;-><init>(Lcom/instagram/android/gl/TiltShiftManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    goto/16 :goto_0

    .line 173
    :cond_5
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftFadeOutMaskHighlight()V

    goto :goto_1

    .line 182
    :pswitch_4
    iput v4, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    .line 183
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftFadeOutMaskHighlight()V

    goto/16 :goto_0

    .line 189
    :pswitch_5
    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    .line 190
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 191
    const-string v4, "pan"

    const-string v5, "ACTION_POINTER_UP called"

    invoke-static {v4, v5}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v4, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    if-ne v3, v4, :cond_8

    .line 195
    if-nez v2, :cond_6

    move v0, v1

    .line 197
    :cond_6
    iget-object v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    invoke-virtual {v2}, Lcom/instagram/android/gl/IgScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_7

    .line 198
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F

    .line 199
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F

    .line 200
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F

    .line 201
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointX:F

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointY:F

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastX:F

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastY:F

    .line 207
    iput-boolean v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    .line 210
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    goto/16 :goto_0

    .line 213
    :cond_8
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    invoke-virtual {v0}, Lcom/instagram/android/gl/IgScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginX:F

    .line 215
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanOriginY:F

    .line 216
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartTheta:F

    .line 217
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartRadius:F

    .line 218
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointX:F

    .line 219
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mStartPanPointY:F

    .line 220
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastX:F

    .line 221
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mLastY:F

    .line 223
    iput-boolean v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mActionMoved:Z

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public mirror()V
    .locals 3

    .prologue
    .line 307
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    sub-float/2addr v0, v1

    .line 309
    const v1, 0x40490fdb

    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/instagram/android/gl/TiltShiftManager;->setTheta(F)V

    .line 310
    invoke-direct {p0, v0, v0}, Lcom/instagram/android/gl/TiltShiftManager;->setOrigin(FF)V

    .line 311
    return-void
.end method

.method public rotate()V
    .locals 8

    .prologue
    const/high16 v5, 0x4387

    const/high16 v7, 0x3f00

    const/4 v4, 0x0

    const/high16 v3, -0x3d4c

    .line 268
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    .line 269
    iget v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    .line 272
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 273
    iput v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    .line 283
    :cond_0
    :goto_0
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    .line 285
    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    .line 286
    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 289
    sub-float/2addr v0, v7

    .line 290
    sub-float/2addr v1, v7

    .line 293
    mul-float v5, v0, v4

    mul-float v6, v1, v3

    sub-float/2addr v5, v6

    .line 294
    mul-float/2addr v0, v3

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 297
    add-float v1, v5, v7

    .line 298
    add-float/2addr v0, v7

    .line 300
    iget v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/instagram/android/gl/TiltShiftManager;->setTheta(F)V

    .line 301
    invoke-direct {p0, v1, v0}, Lcom/instagram/android/gl/TiltShiftManager;->setOrigin(FF)V

    .line 303
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->redrawBlur()V

    .line 304
    return-void

    .line 274
    :cond_1
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 275
    iput v5, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    goto :goto_0

    .line 276
    :cond_2
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 277
    iput v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    goto :goto_0

    .line 278
    :cond_3
    iget v2, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    const/high16 v3, 0x42b4

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 279
    iput v4, p0, Lcom/instagram/android/gl/TiltShiftManager;->mDegrees:F

    goto :goto_0
.end method

.method public setGLView(Landroid/opengl/GLSurfaceView;)V
    .locals 4
    .parameter "glView"

    .prologue
    const/4 v3, 0x0

    .line 60
    iput-object p1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    .line 62
    iget-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    .line 63
    iput-object v3, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/instagram/android/gl/IgScaleGestureDetector;

    iget-object v1, p0, Lcom/instagram/android/gl/TiltShiftManager;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/gl/TiltShiftManager$ScaleListener;-><init>(Lcom/instagram/android/gl/TiltShiftManager;Lcom/instagram/android/gl/TiltShiftManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/gl/IgScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mScaleDetector:Lcom/instagram/android/gl/IgScaleGestureDetector;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 53
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mOriginY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 55
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mTheta:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    iget v0, p0, Lcom/instagram/android/gl/TiltShiftManager;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 57
    return-void
.end method
