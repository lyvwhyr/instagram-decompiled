.class Lcom/instagram/api/loaderrequest/ApiPathRequest$1;
.super Ljava/lang/Object;
.source "ApiPathRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/ApiPathRequest;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/ApiPathRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/ApiPathRequest$1;->this$0:Lcom/instagram/api/loaderrequest/ApiPathRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/ApiPathRequest$1;->this$0:Lcom/instagram/api/loaderrequest/ApiPathRequest;

    invoke-virtual {v1, v0}, Lcom/instagram/api/loaderrequest/ApiPathRequest;->constructParams(Lcom/instagram/api/RequestParams;)V

    .line 27
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/instagram/api/loaderrequest/ApiPathRequest$1;->this$0:Lcom/instagram/api/loaderrequest/ApiPathRequest;

    #getter for: Lcom/instagram/api/loaderrequest/ApiPathRequest;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/api/loaderrequest/ApiPathRequest;->access$000(Lcom/instagram/api/loaderrequest/ApiPathRequest;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/instagram/api/ApiHttpClient;->post(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 32
    const-string v0, "unknown"

    .line 33
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 34
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    :cond_0
    const-string v1, "ApiPathRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response code for path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
