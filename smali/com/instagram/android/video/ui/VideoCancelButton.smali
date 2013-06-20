.class public Lcom/instagram/android/video/ui/VideoCancelButton;
.super Landroid/widget/ImageButton;
.source "VideoCancelButton.java"

# interfaces
.implements Lcom/instagram/android/video/camera/ClipRecorderStateListener;


# instance fields
.field private mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoCancelButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 20
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoCancelButton;->configure()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoCancelButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 25
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoCancelButton;->configure()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoCancelButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 30
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoCancelButton;->configure()V

    .line 31
    return-void
.end method

.method private configure()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoCancelButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoCancelButton;->setEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/VideoCancelButton;->requestLayout()V

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClipRecorderStateChange(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/instagram/android/video/ui/VideoCancelButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 41
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoCancelButton;->configure()V

    .line 42
    return-void
.end method
