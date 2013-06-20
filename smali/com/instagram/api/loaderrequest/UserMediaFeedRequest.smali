.class public Lcom/instagram/api/loaderrequest/UserMediaFeedRequest;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "UserMediaFeedRequest.java"


# instance fields
.field private mUser:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;Lcom/instagram/android/model/User;)V
    .locals 0
    .parameter "fragment"
    .parameter "requestId"
    .parameter
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/fragment/AbstractFeedFragment;",
            "I",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;",
            "Lcom/instagram/android/model/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, listAbstractApiCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 17
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/UserMediaFeedRequest;->mUser:Lcom/instagram/android/model/User;

    .line 18
    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    const-string v0, "feed/user/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UserMediaFeedRequest;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
