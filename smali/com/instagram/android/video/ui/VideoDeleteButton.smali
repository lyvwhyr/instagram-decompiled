.class public Lcom/instagram/android/video/ui/VideoDeleteButton;
.super Landroid/widget/Button;
.source "VideoDeleteButton.java"

# interfaces
.implements Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;
.implements Lcom/instagram/android/video/camera/ClipRecorderStateListener;


# instance fields
.field private mCamcorderFragment:Lcom/instagram/android/video/fragment/CamcorderFragment;

.field private mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

.field private mClipStackManager:Lcom/instagram/android/video/ClipStackManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 21
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 26
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 31
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 36
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 37
    return-void
.end method

.method private configure()V
    .locals 2

    .prologue
    .line 40
    .line 42
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->isInSoftDelete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget v0, Lcom/facebook/f;->video_delete_button:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->setBackgroundResource(I)V

    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->setEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->requestLayout()V

    .line 54
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mCamcorderFragment:Lcom/instagram/android/video/fragment/CamcorderFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->hasSavedClips()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    sget v0, Lcom/facebook/f;->video_soft_delete_button:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 48
    :cond_2
    sget v0, Lcom/facebook/f;->camera_shoot_glyph_goto_photo:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClipAdded(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 69
    return-void
.end method

.method public onClipChanged(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V
    .locals 0
    .parameter "clip"
    .parameter "newState"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 79
    return-void
.end method

.method public onClipDurationChanged(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 84
    return-void
.end method

.method public onClipRecorderStateChange(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 94
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 95
    return-void
.end method

.method public onClipRemoved(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 74
    return-void
.end method

.method public onMaxVideoDurationReached()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public setCamcorderFragment(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter "camcorderFragment"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mCamcorderFragment:Lcom/instagram/android/video/fragment/CamcorderFragment;

    .line 63
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 64
    return-void
.end method

.method public setClipStackManager(Lcom/instagram/android/video/ClipStackManager;)V
    .locals 0
    .parameter "clipStackManager"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/android/video/ui/VideoDeleteButton;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    .line 58
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->configure()V

    .line 59
    return-void
.end method
