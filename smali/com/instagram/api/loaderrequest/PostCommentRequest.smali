.class public Lcom/instagram/api/loaderrequest/PostCommentRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "PostCommentRequest.java"


# instance fields
.field private mComment:Lcom/instagram/android/model/Comment;

.field private mMarkedAsSpam:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;)V
    .locals 2
    .parameter "context"
    .parameter "loaderManager"

    .prologue
    .line 25
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/api/loaderrequest/PostCommentRequest;->mMarkedAsSpam:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v0, "media/%s/comment/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/PostCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v3}, Lcom/instagram/android/model/Comment;->getMediaId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    .line 64
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "spam"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/instagram/api/loaderrequest/PostCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/PostCommentRequest;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/instagram/android/model/Comment;->updateFromCommentPostFailed(Landroid/content/Context;ZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public perform(Lcom/instagram/android/model/Comment;)V
    .locals 3
    .parameter "mComment"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/PostCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    .line 36
    invoke-virtual {p1}, Lcom/instagram/android/model/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/AutoCompleteHashtagService;->addTagsFromText(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v0}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v1, "comment_text"

    invoke-virtual {p1}, Lcom/instagram/android/model/Comment;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/PostCommentRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/PostCommentRequest;->perform()V

    .line 45
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 3
    .parameter "apiResponse"

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/PostCommentRequest;->mComment:Lcom/instagram/android/model/Comment;

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/PostCommentRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/model/Comment;->updateFromCommentPostSuccess(Lcom/fasterxml/jackson/databind/JsonNode;Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter "response"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
