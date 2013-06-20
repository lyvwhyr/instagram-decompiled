.class public Lcom/instagram/android/video/camera/VideoButtonListener;
.super Ljava/lang/Object;
.source "VideoButtonListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoShutterButton"


# instance fields
.field private mCamcorderFragment:Lcom/instagram/android/video/fragment/CamcorderFragment;

.field private mIsDown:Z

.field private mOnDownTime:J

.field private final mRecoder:Lcom/instagram/android/video/camera/MultiClipVideoRecorder;


# direct methods
.method public constructor <init>(Lcom/instagram/android/video/camera/MultiClipVideoRecorder;Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 1
    .parameter "recorder"
    .parameter "fragment"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mIsDown:Z

    .line 24
    iput-object p1, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mRecoder:Lcom/instagram/android/video/camera/MultiClipVideoRecorder;

    .line 25
    iput-object p2, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mCamcorderFragment:Lcom/instagram/android/video/fragment/CamcorderFragment;

    .line 26
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v4

    .line 35
    :cond_1
    iput-boolean v1, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mIsDown:Z

    .line 36
    iget-object v0, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mRecoder:Lcom/instagram/android/video/camera/MultiClipVideoRecorder;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/MultiClipVideoRecorder;->startClip()V

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mOnDownTime:J

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 40
    iget-boolean v0, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mIsDown:Z

    if-eqz v0, :cond_3

    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mOnDownTime:J

    sub-long/2addr v0, v2

    .line 45
    const-wide/16 v2, 0x44c

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mRecoder:Lcom/instagram/android/video/camera/MultiClipVideoRecorder;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/MultiClipVideoRecorder;->endClip()V

    .line 52
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mIsDown:Z

    goto :goto_0

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/video/camera/VideoButtonListener;->mRecoder:Lcom/instagram/android/video/camera/MultiClipVideoRecorder;

    invoke-interface {v0}, Lcom/instagram/android/video/camera/MultiClipVideoRecorder;->endClip()V

    goto :goto_1
.end method
