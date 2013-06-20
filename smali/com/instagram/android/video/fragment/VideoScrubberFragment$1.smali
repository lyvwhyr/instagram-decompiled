.class Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;
.super Ljava/lang/Object;
.source "VideoScrubberFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoScrubberFragment$1;->this$0:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->access$000(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
