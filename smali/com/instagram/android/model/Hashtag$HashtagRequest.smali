.class Lcom/instagram/android/model/Hashtag$HashtagRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "Hashtag.java"


# instance fields
.field private mTagname:Ljava/lang/String;

.field final synthetic this$0:Lcom/instagram/android/model/Hashtag;


# direct methods
.method public constructor <init>(Lcom/instagram/android/model/Hashtag;Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "loaderManager"
    .parameter "tagname"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/instagram/android/model/Hashtag$HashtagRequest;->this$0:Lcom/instagram/android/model/Hashtag;

    .line 106
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 107
    iput-object p4, p0, Lcom/instagram/android/model/Hashtag$HashtagRequest;->mTagname:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 118
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    const-string v0, "tags/%s/info"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/model/Hashtag$HashtagRequest;->mTagname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->handleErrorInBackground(Lcom/instagram/api/ApiResponse;)V

    .line 131
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 2
    .parameter "apiResponse"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/model/Hashtag$HashtagRequest;->this$0:Lcom/instagram/android/model/Hashtag;

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Hashtag;->onSuccess(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter "response"

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method
