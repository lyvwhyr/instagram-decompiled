.class Lcom/instagram/android/feed/adapter/FeedAdapter$5;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$5;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/instagram/android/video/player/VideoPlayer;)V
    .locals 4
    .parameter "videoPlayer"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$5;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2100(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1268
    return-void
.end method
