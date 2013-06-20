.class public Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "PeopleTagReviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PeopleTagReviewRequest"


# instance fields
.field private mReviewState:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

.field private mTagAction:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter "reviewState"
    .parameter "tagAction"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;",
            "Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p5, callback:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 35
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->mReviewState:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    .line 36
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->mTagAction:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    .line 37
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 6
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v3, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v3}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v4, "enabled"

    iget-object v0, p0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->mReviewState:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    sget-object v5, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;I)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    .line 48
    iget-object v3, p0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->mReviewState:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    sget-object v4, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    if-ne v3, v4, :cond_0

    .line 49
    const-string v3, "remove_existing"

    iget-object v4, p0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->mTagAction:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    sget-object v5, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->KEEP_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    if-ne v4, v5, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;I)Lcom/instagram/util/JsonBuilder;

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 46
    goto :goto_0

    :cond_2
    move v2, v1

    .line 49
    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "usertags/review_preference/"

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, apiResponse:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V

    .line 79
    return-void
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public perform()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 60
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->mReviewState:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    sget-object v2, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/model/User;->setPeopleTagReviewEnabled(Z)V

    .line 66
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/AuthHelper;->saveCurrentUser(Lcom/instagram/android/model/User;)V

    .line 69
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->mTagAction:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    sget-object v1, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->REMOVE_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/MediaStore;->clearPhotosOfYou()V

    .line 73
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
