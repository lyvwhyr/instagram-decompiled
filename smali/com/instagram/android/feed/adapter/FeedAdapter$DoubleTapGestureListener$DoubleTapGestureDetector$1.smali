.class Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

.field final synthetic val$touchedMedia:Lcom/instagram/android/model/Media;

.field final synthetic val$touchedMediaIndex:I


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;ILcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->this$2:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

    iput p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->val$touchedMediaIndex:I

    iput-object p3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->val$touchedMedia:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->this$2:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->this$2:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2300(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->val$touchedMediaIndex:I

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->this$2:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 938
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->this$2:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2300(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->row_feed_video_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/MediaActionsView;

    .line 940
    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0}, Lcom/instagram/android/video/ui/MediaActionsView;->showHeart()V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->this$2:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;->this$1:Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector$1;->val$touchedMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->findRowForMediaId(Ljava/lang/String;)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$300(Lcom/instagram/android/feed/adapter/FeedAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 947
    if-eqz v0, :cond_0

    .line 948
    sget v1, Lcom/facebook/g;->row_feed_video_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/MediaActionsView;

    .line 950
    invoke-virtual {v0}, Lcom/instagram/android/video/ui/MediaActionsView;->showHeart()V

    goto :goto_0
.end method
