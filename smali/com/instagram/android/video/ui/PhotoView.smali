.class public Lcom/instagram/android/video/ui/PhotoView;
.super Lcom/instagram/android/video/gl/GLView;
.source "PhotoView.java"


# static fields
.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoView"


# instance fields
.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mFullScreenCamera:Z

.field private mHolding:I

.field private mListener:Lcom/instagram/android/video/ui/PhotoView$Listener;

.field private mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

.field private mSizes:[Lcom/instagram/android/video/ui/PhotoView$Size;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/instagram/android/video/gl/GLView;-><init>()V

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/instagram/android/video/ui/PhotoView$Size;

    iput-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mSizes:[Lcom/instagram/android/video/ui/PhotoView$Size;

    .line 52
    iput v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mDisplayRotation:I

    .line 53
    iput v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mCompensation:I

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v0, p0}, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/instagram/android/video/ui/PhotoView;)V

    iput-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/ui/PhotoView;Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/video/ui/PhotoView;->drawPlaceHolder(Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$100(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/instagram/android/video/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/instagram/android/video/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/instagram/android/video/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method private drawPlaceHolder(Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 229
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, -0x100

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLCanvas;->fillRect(FFFFI)V

    .line 230
    return-void
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 233
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 8

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/PhotoView;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/PhotoView;->getHeight()I

    move-result v1

    .line 110
    iget v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 116
    iget-object v3, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 117
    iget-object v4, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 118
    iget-object v5, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 121
    iget v6, p0, Lcom/instagram/android/video/ui/PhotoView;->mCompensation:I

    sparse-switch v6, :sswitch_data_0

    .line 128
    :goto_1
    const-string v0, "PhotoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compensation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CameraRelativeFrame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 122
    :sswitch_0
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 123
    :sswitch_1
    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v5, v0, v5

    sub-int/2addr v0, v3

    invoke-virtual {v1, v5, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 124
    :sswitch_2
    iget-object v6, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v4, v1, v4

    sub-int v5, v0, v5

    sub-int/2addr v1, v2

    sub-int/2addr v0, v3

    invoke-virtual {v6, v4, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 125
    :sswitch_3
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v4, v1, v4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_0
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 83
    sub-int v0, p4, p2

    .line 84
    sub-int v0, p5, p3

    .line 86
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/PhotoView;->getGLRoot()Lcom/instagram/android/video/gl/GLRoot;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 88
    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLRoot;->getCompensation()I

    move-result v0

    .line 89
    iget v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mDisplayRotation:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mCompensation:I

    if-eq v2, v0, :cond_1

    .line 91
    :cond_0
    iput v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mDisplayRotation:I

    .line 92
    iput v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mCompensation:I

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/instagram/android/video/ui/PhotoView$Picture;->forceSize()V

    .line 100
    invoke-direct {p0}, Lcom/instagram/android/video/ui/PhotoView;->updateCameraRect()V

    .line 101
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method protected render(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 243
    const/4 v0, 0x1

    .line 244
    iget-boolean v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v0, v1, :cond_0

    .line 245
    iput-boolean v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mFullScreenCamera:Z

    .line 246
    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mListener:Lcom/instagram/android/video/ui/PhotoView$Listener;

    invoke-interface {v1, v0}, Lcom/instagram/android/video/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/instagram/android/video/ui/PhotoView$Picture;->getSize()Lcom/instagram/android/video/ui/PhotoView$Size;

    move-result-object v1

    iget v1, v1, Lcom/instagram/android/video/ui/PhotoView$Size;->width:I

    iget-object v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/instagram/android/video/ui/PhotoView$Picture;->getSize()Lcom/instagram/android/video/ui/PhotoView$Size;

    move-result-object v2

    iget v2, v2, Lcom/instagram/android/video/ui/PhotoView$Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v1, p1, v0}, Lcom/instagram/android/video/ui/PhotoView$Picture;->draw(Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/Rect;)V

    .line 257
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    invoke-direct {p0}, Lcom/instagram/android/video/ui/PhotoView;->updateCameraRect()V

    .line 140
    return-void
.end method

.method public setListener(Lcom/instagram/android/video/ui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/instagram/android/video/ui/PhotoView;->mListener:Lcom/instagram/android/video/ui/PhotoView$Listener;

    .line 265
    return-void
.end method

.method public setScreenNail(Lcom/instagram/android/video/ui/ScreenNail;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v0, p1}, Lcom/instagram/android/video/ui/PhotoView$Picture;->setScreenNail(Lcom/instagram/android/video/ui/ScreenNail;)V

    .line 76
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/instagram/android/video/ui/PhotoView$Picture;->forceSize()V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/instagram/android/video/ui/PhotoView$Picture;->getSize()Lcom/instagram/android/video/ui/PhotoView$Size;

    move-result-object v1

    iget v1, v1, Lcom/instagram/android/video/ui/PhotoView$Size;->width:I

    iget-object v2, p0, Lcom/instagram/android/video/ui/PhotoView;->mPicture:Lcom/instagram/android/video/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/instagram/android/video/ui/PhotoView$Picture;->getSize()Lcom/instagram/android/video/ui/PhotoView$Size;

    move-result-object v2

    iget v2, v2, Lcom/instagram/android/video/ui/PhotoView$Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method
