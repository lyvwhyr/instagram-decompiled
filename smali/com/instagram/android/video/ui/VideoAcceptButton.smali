.class public Lcom/instagram/android/video/ui/VideoAcceptButton;
.super Landroid/widget/ImageButton;
.source "VideoAcceptButton.java"

# interfaces
.implements Lcom/instagram/android/video/camera/ClipRecorderStateListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoAcceptButton"


# instance fields
.field private mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 18
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoAcceptButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 22
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoAcceptButton;->configure()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoAcceptButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 27
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoAcceptButton;->configure()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    iput-object v0, p0, Lcom/instagram/android/video/ui/VideoAcceptButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 32
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoAcceptButton;->configure()V

    .line 33
    return-void
.end method

.method private configure()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/video/ui/VideoAcceptButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    sget-object v1, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPED:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/ui/VideoAcceptButton;->setEnabled(Z)V

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClipRecorderStateChange(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/video/ui/VideoAcceptButton;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 38
    invoke-direct {p0}, Lcom/instagram/android/video/ui/VideoAcceptButton;->configure()V

    .line 39
    return-void
.end method
