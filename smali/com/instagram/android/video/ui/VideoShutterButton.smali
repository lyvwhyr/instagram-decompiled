.class public Lcom/instagram/android/video/ui/VideoShutterButton;
.super Landroid/widget/ImageView;
.source "VideoShutterButton.java"

# interfaces
.implements Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;
.implements Lcom/instagram/android/video/camera/ClipRecorderStateListener;


# instance fields
.field private mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

.field private mClipStackManager:Lcom/instagram/android/video/ClipStackManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 28
    return-void
.end method

.method private configure()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    if-nez v0, :cond_1

    .line 92
    sget v0, Lcom/facebook/f;->camera_shoot_buttonbar_button_video_default:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/instagram/android/video/ui/VideoShutterButton;->setEnabled(Z)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->isSemiFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget v0, Lcom/facebook/f;->camera_shoot_buttonbar_button_video_default:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/instagram/android/video/ui/VideoShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->RECORDING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->PREPARING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-ne v0, v1, :cond_4

    .line 99
    :cond_3
    sget v0, Lcom/facebook/f;->camera_shoot_buttonbar_button_video_pressed:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/instagram/android/video/ui/VideoShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-ne v0, v1, :cond_0

    .line 103
    :cond_5
    sget v0, Lcom/facebook/f;->camera_shoot_buttonbar_button_video_default:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoShutterButton;->setBackgroundResource(I)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/instagram/android/video/ui/VideoShutterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->configure()V

    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->requestLayout()V

    .line 88
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->RECORDING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->isSemiFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onClipAdded(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->updateState()V

    .line 63
    return-void
.end method

.method public onClipChanged(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V
    .locals 0
    .parameter "clip"
    .parameter "newState"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->updateState()V

    .line 73
    return-void
.end method

.method public onClipDurationChanged(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 78
    return-void
.end method

.method public onClipRecorderStateChange(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 52
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->updateState()V

    .line 53
    return-void
.end method

.method public onClipRemoved(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->updateState()V

    .line 68
    return-void
.end method

.method public onMaxVideoDurationReached()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setClipStackManager(Lcom/instagram/android/video/ClipStackManager;)V
    .locals 0
    .parameter "clipStackManager"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/video/ui/VideoShutterButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    .line 57
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->updateState()V

    .line 58
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/VideoShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method
