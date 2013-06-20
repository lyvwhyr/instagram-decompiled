.class public Lcom/instagram/api/loaderrequest/PhotosOfYouFeedRequest;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "PhotosOfYouFeedRequest.java"


# static fields
.field public static final USERTAGS_FEED_URL:Ljava/lang/String; = "usertags/%s/feed/"


# instance fields
.field private final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;Ljava/lang/String;)V
    .locals 0
    .parameter "fragment"
    .parameter "requestId"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/fragment/AbstractFeedFragment;",
            "I",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 31
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/PhotosOfYouFeedRequest;->mUserId:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    const-string v0, "usertags/%s/feed/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/PhotosOfYouFeedRequest;->mUserId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 3
    .parameter "fieldName"
    .parameter "jp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/instagram/api/StreamingApiResponse",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-virtual {p3}, Lcom/instagram/api/StreamingApiResponse;->getSuccessObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/MediaFeedResponse;

    .line 43
    const-string v1, "requires_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 47
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/instagram/android/model/MediaFeedResponse;

    invoke-direct {v0}, Lcom/instagram/android/model/MediaFeedResponse;-><init>()V

    .line 49
    invoke-virtual {p3, v0}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/PhotosOfYouFeedRequest;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/User;->setPeopleTagReviewEnabled(Z)V

    .line 55
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/AuthHelper;->saveCurrentUser(Lcom/instagram/android/model/User;)V

    .line 58
    :cond_1
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;->processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z

    move-result v0

    goto :goto_0
.end method
