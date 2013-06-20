.class Lcom/instagram/android/feed/adapter/FeedAdapter$3;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$3;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/instagram/android/video/player/VideoPlayer;)Z
    .locals 2
    .parameter "videoPlayer"

    .prologue
    const/4 v1, 0x1

    .line 1237
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$3;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2500(Lcom/instagram/android/feed/adapter/FeedAdapter;ZZ)V

    .line 1238
    return v1
.end method
