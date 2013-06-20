.class public Lcom/instagram/api/loaderrequest/FlagCommentRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "FlagCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mComment:Lcom/instagram/android/model/Comment;

.field private mReason:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;Lcom/instagram/android/model/Comment;Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter
    .parameter "comment"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/instagram/android/model/Comment;",
            "Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 31
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    .line 32
    iput-object p5, p0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->mReason:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    .line 33
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 44
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    const-string v0, "media/%s/comment/%s/flag/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v3}, Lcom/instagram/android/model/Comment;->getMediaId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v3}, Lcom/instagram/android/model/Comment;->getPk()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    .line 55
    const-string v1, "media_id"

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v2}, Lcom/instagram/android/model/Comment;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 56
    const-string v1, "comment_id"

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v2}, Lcom/instagram/android/model/Comment;->getPk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    .line 57
    const-string v1, "reason"

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->mReason:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    invoke-virtual {v2}, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->getReasonId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;I)Lcom/instagram/util/JsonBuilder;

    .line 58
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 59
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 60
    return-void
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    return-object v0
.end method
