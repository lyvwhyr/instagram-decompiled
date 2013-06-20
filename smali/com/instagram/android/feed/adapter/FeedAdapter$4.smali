.class Lcom/instagram/android/feed/adapter/FeedAdapter$4;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/instagram/android/video/player/VideoPlayer;)V
    .locals 4
    .parameter "videoPlayer"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-interface {p1}, Lcom/instagram/android/video/player/VideoPlayer;->play()V

    .line 1249
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mCoverPhotoFadeOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1251
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->animateToState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 1254
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isIsVideoAutoplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mEnableVideoTouches:Z
    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$802(Lcom/instagram/android/feed/adapter/FeedAdapter;Z)Z

    .line 1257
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$4;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2100(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1261
    :cond_0
    return-void
.end method
