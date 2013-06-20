.class Lcom/instagram/android/fragment/SingleMediaFeedFragment$1;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "SingleMediaFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SingleMediaFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SingleMediaFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 78
    .local p4, x2:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment$1;->this$0:Lcom/instagram/android/fragment/SingleMediaFeedFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    const-string v0, "media/%s/info/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment$1;->this$0:Lcom/instagram/android/fragment/SingleMediaFeedFragment;

    #getter for: Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mMediaId:Ljava/lang/String;
    invoke-static {v3}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->access$000(Lcom/instagram/android/fragment/SingleMediaFeedFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
