.class public Lcom/instagram/api/ApiHttpClient;
.super Ljava/lang/Object;
.source "ApiHttpClient.java"


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x2710

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x7530

.field public static final HTTP_CLIENT_SERVICE:Ljava/lang/String; = "com.instagram.api.ApiHttpClient"

.field private static final TAG:Ljava/lang/String; = "ApiHttpClient"

.field private static USER_AGENT:Ljava/lang/String;


# instance fields
.field private mAcceptsLanguage:Ljava/lang/String;

.field private final mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

.field private final mHttpContext:Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/instagram/api/InstagramUserAgent;->get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/api/ApiHttpClient;->USER_AGENT:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/instagram/api/PersistentCookieStore;)V
    .locals 6
    .parameter "cookieStore"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 68
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 69
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 70
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 72
    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 74
    sget-object v1, Lcom/instagram/api/ApiHttpClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;-><init>()V

    .line 78
    new-instance v2, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-static {}, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->getSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->register(Lch/boye/httpclientandroidlib/conn/scheme/Scheme;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    .line 79
    new-instance v2, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-static {}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->getSocketFactory()Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->register(Lch/boye/httpclientandroidlib/conn/scheme/Scheme;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    .line 89
    new-instance v2, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    .line 90
    const/16 v1, 0x14

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setDefaultMaxPerRoute(I)V

    .line 92
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;

    new-instance v3, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {v3}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v3}, Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    iput-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpContext:Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;

    .line 94
    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    iput-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    .line 95
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V

    .line 97
    new-instance v0, Lcom/instagram/api/ApiHttpClient$1;

    invoke-direct {v0, p0}, Lcom/instagram/api/ApiHttpClient$1;-><init>(Lcom/instagram/api/ApiHttpClient;)V

    .line 109
    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 112
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->isProdBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/instagram/android/http/CurlLogger;

    invoke-direct {v1}, Lcom/instagram/android/http/CurlLogger;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/instagram/api/ApiHttpClient$2;

    invoke-direct {v1, p0}, Lcom/instagram/api/ApiHttpClient$2;-><init>(Lcom/instagram/api/ApiHttpClient;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/ApiHttpClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/api/ApiHttpClient;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addEntityToRequestBase(Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 347
    if-eqz p2, :cond_0

    .line 348
    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 351
    :cond_0
    return-object p1
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 2
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 421
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 403
    if-nez p0, :cond_1

    .line 404
    const/4 p0, 0x0

    .line 416
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 406
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    const-string p0, "he"

    goto :goto_0

    .line 409
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    const-string p0, "id"

    goto :goto_0

    .line 412
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const-string p0, "yi"

    goto :goto_0
.end method

.method private get(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "request"

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/instagram/api/request/AbstractRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/request/AbstractRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/ApiHttpClient;->get(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mAcceptsLanguage:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    invoke-static {v1, v0}, Lcom/instagram/api/ApiHttpClient;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 386
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    const-string v0, "en-US"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mAcceptsLanguage:Ljava/lang/String;

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mAcceptsLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 355
    const-string v0, "com.instagram.api.ApiHttpClient"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/ApiHttpClient;

    .line 356
    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 358
    const-string v0, "com.instagram.api.ApiHttpClient"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/ApiHttpClient;

    .line 360
    :cond_0
    if-nez v0, :cond_1

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ApiHttpClient not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    return-object v0
.end method

.method private getTruststore()Ljava/security/KeyStore;
    .locals 3

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to load keystore"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUrlWithQueryString(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "params"

    .prologue
    .line 327
    if-eqz p2, :cond_0

    .line 328
    invoke-virtual {p2}, Lcom/instagram/api/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    :cond_0
    return-object p1
.end method

.method private paramsToEntity(Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 1
    .parameter "params"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 338
    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/instagram/api/RequestParams;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 342
    :cond_0
    return-object v0
.end method

.method private post(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "request"

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/instagram/api/request/AbstractRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/request/AbstractRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/ApiHttpClient;->post(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public constructPostRequest(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/client/methods/HttpPost;
    .locals 1
    .parameter "url"
    .parameter "entity"

    .prologue
    .line 204
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/instagram/api/ApiHttpClient;->addEntityToRequestBase(Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpPost;

    return-object v0
.end method

.method public constructPostRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpPost;
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 200
    invoke-direct {p0, p2}, Lcom/instagram/api/ApiHttpClient;->paramsToEntity(Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/api/ApiHttpClient;->constructPostRequest(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 305
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/instagram/api/ApiHttpClient;->mHttpContext:Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;

    invoke-virtual {p0, v1, v2, v0}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    .line 307
    return-void
.end method

.method public get(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "url"

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/api/ApiHttpClient;->get(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 4
    .parameter "url"
    .parameter "params"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpContext:Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;

    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {p0, p1, p2}, Lcom/instagram/api/ApiHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;
    .locals 1
    .parameter "url"

    .prologue
    .line 192
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "request"

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/instagram/api/request/AbstractRequest;->getMethod()Lcom/instagram/api/request/AbstractRequest$Method;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    if-ne v0, v1, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/instagram/api/ApiHttpClient;->post(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_0
    sget-object v1, Lcom/instagram/api/request/AbstractRequest$Method;->GET:Lcom/instagram/api/request/AbstractRequest$Method;

    if-ne v0, v1, :cond_1

    .line 152
    invoke-direct {p0, p1}, Lcom/instagram/api/ApiHttpClient;->get(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public post(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "url"

    .prologue
    .line 222
    const/4 v0, 0x0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-virtual {p0, p1, v0}, Lcom/instagram/api/ApiHttpClient;->post(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "url"
    .parameter "entity"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpContext:Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;

    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/instagram/api/ApiHttpClient;->addEntityToRequestBase(Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 233
    invoke-direct {p0, p2}, Lcom/instagram/api/ApiHttpClient;->paramsToEntity(Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/api/ApiHttpClient;->post(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 2
    .parameter "url"
    .parameter "params"

    .prologue
    .line 256
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/instagram/api/ApiHttpClient;->paramsToEntity(Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/instagram/api/ApiHttpClient;->addEntityToRequestBase(Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "url"

    .prologue
    .line 265
    const/4 v0, 0x0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-virtual {p0, p1, v0}, Lcom/instagram/api/ApiHttpClient;->put(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "url"
    .parameter "entity"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpContext:Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;

    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/instagram/api/ApiHttpClient;->addEntityToRequestBase(Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 277
    invoke-direct {p0, p2}, Lcom/instagram/api/ApiHttpClient;->paramsToEntity(Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/api/ApiHttpClient;->put(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpEntity;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "request"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/instagram/api/ApiHttpClient;->mHttpContext:Lch/boye/httpclientandroidlib/protocol/SyncBasicHttpContext;

    invoke-virtual {p0, v0, v1, p1}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "client"
    .parameter "context"
    .parameter "request"

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p1, p3, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    invoke-interface {p3}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->abort()V

    .line 321
    const-string v1, "ApiHttpClient"

    const-string v2, "Send request failed"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCookieStore(Lcom/instagram/api/PersistentCookieStore;)V
    .locals 1
    .parameter "cookieStore"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/instagram/api/ApiHttpClient;->mHttpClient:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V

    .line 368
    return-void
.end method
