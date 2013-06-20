.class Lcom/instagram/android/fragment/LocationFeedFragment$1;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "LocationFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/LocationFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/LocationFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 54
    .local p4, x2:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/LocationFeedFragment$1;->this$0:Lcom/instagram/android/fragment/LocationFeedFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string v0, "feed/location/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/LocationFeedFragment$1;->this$0:Lcom/instagram/android/fragment/LocationFeedFragment;

    #getter for: Lcom/instagram/android/fragment/LocationFeedFragment;->mVenue:Lcom/instagram/android/location/Venue;
    invoke-static {v3}, Lcom/instagram/android/fragment/LocationFeedFragment;->access$000(Lcom/instagram/android/fragment/LocationFeedFragment;)Lcom/instagram/android/location/Venue;

    move-result-object v3

    iget-object v3, v3, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
