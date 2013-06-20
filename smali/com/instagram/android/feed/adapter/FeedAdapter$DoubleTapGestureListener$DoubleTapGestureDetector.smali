.class Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FeedAdapter.java"


# instance fields
.field private mSingleTapHandled:Z

.field final synthetic this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private onSingleTapPhoto()V
    .locals 4

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->shouldToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getPeopleTagsLayout()Lcom/instagram/android/people/widget/PeopleTagsLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getTagsIndicator()Landroid/view/View;

    move-result-object v3

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->togglePeopleTags(Lcom/instagram/android/model/Media;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1500(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V

    .line 883
    :cond_0
    return-void
.end method

.method private onSingleTapVideo()V
    .locals 4

    .prologue
    .line 886
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mEnableVideoTouches:Z
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$800(Lcom/instagram/android/feed/adapter/FeedAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    const-string v0, "FeedAdapter"

    const-string v1, "Video touch blocked"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMediaIndex:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1700(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 892
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    .line 893
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 894
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMediaIndex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1700(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->showLegacyVideoView(Lcom/instagram/android/model/Media;I)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0, v1, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1800(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;I)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    goto :goto_0

    .line 896
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMediaIndex:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1700(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->prepareVideo(Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1900(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V

    goto :goto_0

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->canPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 900
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->pause()V

    .line 901
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PAUSE:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->animateToState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    goto/16 :goto_0

    .line 903
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_5

    .line 904
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mCoverPhotoFadeOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 906
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->animateToState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 907
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2100(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->removeMessages(I)V

    .line 908
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->play()V

    goto/16 :goto_0
.end method

.method private performSingleTapAction()V
    .locals 2

    .prologue
    .line 867
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$11;->$SwitchMap$com$instagram$android$model$Media$MediaType:[I

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/Media$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_0
    return-void

    .line 869
    :pswitch_0
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->onSingleTapPhoto()V

    goto :goto_0

    .line 873
    :pswitch_1
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->onSingleTapVideo()V

    goto :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldToggle()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->hasInTags()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mListener:Lcom/instagram/android/listener/DoubleTapMediaListener;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$2200(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/listener/DoubleTapMediaListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMediaIndex:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1700(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 918
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mListener:Lcom/instagram/android/listener/DoubleTapMediaListener;
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$2200(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/listener/DoubleTapMediaListener;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/instagram/android/listener/DoubleTapMediaListener;->onDoubleTap(Lcom/instagram/android/model/Media;)V

    .line 919
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/instagram/android/Preferences;->setHasUsedDoubleTapToLike(Z)V

    .line 921
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->shouldToggle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getPeopleTagsLayout()Lcom/instagram/android/people/widget/PeopleTagsLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 922
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;
    invoke-static {v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v4}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getPeopleTagsLayout()Lcom/instagram/android/people/widget/PeopleTagsLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v5}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getTagsIndicator()Landroid/view/View;

    move-result-object v5

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->togglePeopleTags(Lcom/instagram/android/model/Media;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
    invoke-static {v2, v3, v4, v5}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1500(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V

    .line 928
    :cond_0
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    new-instance v3, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;ILcom/instagram/android/model/Media;)V

    const-wide/16 v0, 0x64

    invoke-virtual {v2, v3, v0, v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->postDelayed(Ljava/lang/Runnable;J)V

    .line 956
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->mSingleTapHandled:Z

    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 845
    iget-boolean v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->mSingleTapHandled:Z

    if-nez v1, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->performSingleTapAction()V

    .line 847
    iput-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->mSingleTapHandled:Z

    .line 850
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 856
    iget-boolean v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->mSingleTapHandled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->performSingleTapAction()V

    .line 859
    iput-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->mSingleTapHandled:Z

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
