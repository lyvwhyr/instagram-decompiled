.class Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;
.super Landroid/os/AsyncTask;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mMedia:Lcom/instagram/android/model/Media;

.field final synthetic this$0:Lcom/instagram/android/service/MediaService;


# direct methods
.method public constructor <init>(Lcom/instagram/android/service/MediaService;Lcom/instagram/android/model/Media;Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;)V
    .locals 0
    .parameter
    .parameter "media"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/model/Media;",
            "Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;,"Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask<TT;>;"
    .local p3, callbacks:Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;,"Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks<TT;>;"
    iput-object p1, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->this$0:Lcom/instagram/android/service/MediaService;

    .line 126
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->mMedia:Lcom/instagram/android/model/Media;

    .line 128
    iput-object p3, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->mCallbacks:Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;

    .line 129
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    .local p0, this:Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;,"Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;,"Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask<TT;>;"
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->this$0:Lcom/instagram/android/service/MediaService;

    invoke-static {v1}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v1

    .line 137
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/delete/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    new-instance v3, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v3}, Lcom/instagram/util/JsonBuilder;-><init>()V

    const-string v4, "media_id"

    iget-object v5, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v5}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    new-instance v4, Lcom/instagram/api/RequestParams;

    invoke-direct {v4}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 144
    invoke-static {v4, v3}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v2, v4}, Lcom/instagram/api/ApiHttpClient;->post(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 152
    :cond_0
    const-string v1, "MediaService"

    const-string v2, "Bad HTTP response"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->mCallbacks:Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;

    invoke-interface {v0, v1}, Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;->processResponseInBackground(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;,"Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask<TT;>;"
    .local p1, result:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->mCallbacks:Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;

    invoke-interface {v0, p1}, Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;->requestFinished(Ljava/lang/Object;)V

    .line 162
    return-void
.end method
