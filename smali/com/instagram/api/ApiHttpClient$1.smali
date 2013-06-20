.class Lcom/instagram/api/ApiHttpClient$1;
.super Ljava/lang/Object;
.source "ApiHttpClient.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


# instance fields
.field final synthetic this$0:Lcom/instagram/api/ApiHttpClient;


# direct methods
.method constructor <init>(Lcom/instagram/api/ApiHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/instagram/api/ApiHttpClient$1;->this$0:Lcom/instagram/api/ApiHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .parameter "request"
    .parameter "context"

    .prologue
    .line 101
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string v0, "Accept-Language"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string v0, "Accept-Language"

    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient$1;->this$0:Lcom/instagram/api/ApiHttpClient;

    #calls: Lcom/instagram/api/ApiHttpClient;->getCurrentAcceptLanguage()Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/api/ApiHttpClient;->access$000(Lcom/instagram/api/ApiHttpClient;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    return-void
.end method
