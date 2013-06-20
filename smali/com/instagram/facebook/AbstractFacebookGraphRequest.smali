.class public abstract Lcom/instagram/facebook/AbstractFacebookGraphRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "AbstractFacebookGraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final GRAPH_API_URL:Ljava/lang/String; = "https://graph.facebook.com/"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter "loaderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "I",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/instagram/facebook/AbstractFacebookGraphRequest;,"Lcom/instagram/facebook/AbstractFacebookGraphRequest<TT;>;"
    .local p4, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

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
    .line 35
    .local p0, this:Lcom/instagram/facebook/AbstractFacebookGraphRequest;,"Lcom/instagram/facebook/AbstractFacebookGraphRequest<TT;>;"
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected constructLoaderCallbacks()Lcom/instagram/api/ApiRequestLoaderCallbacks;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/ApiRequestLoaderCallbacks",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/instagram/api/ApiRequestLoaderCallbacks;

    iget-object v1, p0, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/api/ApiRequestLoaderCallbacks;-><init>(Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Lcom/instagram/api/AbstractApiCallbacks;)V

    return-object v0
.end method

.method public getRequest()Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 42
    const-string v1, "access_token"

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "%s%s?%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://graph.facebook.com/"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/instagram/api/RequestParams;->toQueryString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/instagram/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/instagram/facebook/AbstractFacebookGraphRequest;->mRequest:Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    return-object v0
.end method
