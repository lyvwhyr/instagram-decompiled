.class Lcom/instagram/android/fragment/ExploreFragment$1;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "ExploreFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ExploreFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ExploreFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 48
    .local p4, x2:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/ExploreFragment$1;->this$0:Lcom/instagram/android/fragment/ExploreFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "feed/popular/"

    return-object v0
.end method
