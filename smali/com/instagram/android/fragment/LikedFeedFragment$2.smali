.class Lcom/instagram/android/fragment/LikedFeedFragment$2;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "LikedFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/LikedFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/LikedFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 44
    .local p4, x2:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/LikedFeedFragment$2;->this$0:Lcom/instagram/android/fragment/LikedFeedFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "feed/liked/"

    return-object v0
.end method
