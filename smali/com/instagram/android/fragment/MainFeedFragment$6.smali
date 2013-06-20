.class Lcom/instagram/android/fragment/MainFeedFragment$6;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "MainFeedFragment.java"


# instance fields
.field private mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 373
    .local p4, x2:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$6;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method public cacheResponseFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$6;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment$6;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "MainFeed.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$6;->mFile:Ljava/io/File;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$6;->mFile:Ljava/io/File;

    return-object v0
.end method

.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    const-string v0, "feed/timeline/"

    return-object v0
.end method
