.class public abstract Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpClient;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "conman"
    .parameter "params"

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 261
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 262
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 263
    return-void
.end method

.method private static determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;
    .locals 4
    .parameter "request"

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 760
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 761
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    .line 763
    if-nez v0, :cond_0

    .line 764
    new-instance v0, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI does not specify a valid host name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_0
    return-object v0
.end method

.method private final declared-synchronized getProtocolProcessor()Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 640
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    if-nez v1, :cond_2

    .line 642
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v2

    .line 644
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v3

    .line 645
    new-array v4, v3, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move v1, v0

    .line 646
    :goto_0
    if-ge v1, v3, :cond_0

    .line 647
    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move-result-object v5

    aput-object v5, v4, v1

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v1

    .line 650
    new-array v3, v1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 651
    :goto_1
    if-ge v0, v1, :cond_1

    .line 652
    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    move-result-object v5

    aput-object v5, v3, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 654
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    invoke-direct {v0, v4, v3}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    .line 656
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .locals 1
    .parameter "itcp"

    .prologue
    .line 705
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    monitor-exit p0

    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
    .locals 1
    .parameter "itcp"
    .parameter "index"

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 1
    .parameter "itcp"

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
    .locals 1
    .parameter "itcp"
    .parameter "index"

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    .prologue
    .line 717
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    monitor-exit p0

    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createAuthSchemeRegistry()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;-><init>()V

    .line 327
    const-string v1, "Basic"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 330
    const-string v1, "Digest"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 333
    const-string v1, "NTLM"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 337
    return-object v0
.end method

.method protected createClientConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 294
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v4

    .line 299
    const/4 v2, 0x0

    .line 301
    const-string v1, "http.connection-manager.factory-class-name"

    invoke-interface {v4, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    if-eqz v1, :cond_1

    .line 305
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 315
    :goto_0
    if-eqz v1, :cond_0

    .line 316
    invoke-interface {v1, v4, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;->newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    .line 321
    :goto_1
    return-object v1

    .line 307
    :catch_0
    move-exception v2

    .line 308
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :catch_1
    move-exception v1

    .line 310
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :catch_2
    move-exception v1

    .line 312
    new-instance v2, Ljava/lang/InstantiationError;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v3}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method protected createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;
    .locals 13
    .parameter "requestExec"
    .parameter "conman"
    .parameter "reustrat"
    .parameter "kastrat"
    .parameter "rouplan"
    .parameter "httpProcessor"
    .parameter "retryHandler"
    .parameter "redirectHandler"
    .parameter "targetAuthHandler"
    .parameter "proxyAuthHandler"
    .parameter "stateHandler"
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 838
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;
    .locals 14
    .parameter "requestExec"
    .parameter "conman"
    .parameter "reustrat"
    .parameter "kastrat"
    .parameter "rouplan"
    .parameter "httpProcessor"
    .parameter "retryHandler"
    .parameter "redirectStrategy"
    .parameter "targetAuthHandler"
    .parameter "proxyAuthHandler"
    .parameter "stateHandler"
    .parameter "params"

    .prologue
    .line 869
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected createCookieSpecRegistry()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .locals 3

    .prologue
    .line 342
    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;-><init>()V

    .line 343
    const-string v1, "best-match"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 346
    const-string v1, "compatibility"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 349
    const-string v1, "netscape"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 352
    const-string v1, "rfc2109"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 355
    const-string v1, "rfc2965"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 358
    const-string v1, "ignoreCookies"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 361
    return-object v0
.end method

.method protected createCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;
    .locals 1

    .prologue
    .line 402
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method protected createCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method protected createHttpContext()Lch/boye/httpclientandroidlib/protocol/HttpContext;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    .line 274
    const-string v1, "http.scheme-registry"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getAuthSchemes()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCookieSpecs()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    return-object v0
.end method

.method protected abstract createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
.end method

.method protected createHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;-><init>()V

    return-object v0
.end method

.method protected createRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method

.method protected determineParams(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 4
    .parameter "req"

    .prologue
    const/4 v3, 0x0

    .line 900
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "target"
    .parameter "request"

    .prologue
    .line 774
    const/4 v0, 0x0

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 16
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 781
    if-nez p2, :cond_0

    .line 782
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_0
    monitor-enter p0

    .line 795
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpContext()Lch/boye/httpclientandroidlib/protocol/HttpContext;

    move-result-object v2

    .line 796
    if-nez p3, :cond_1

    move-object v15, v2

    .line 802
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getProtocolProcessor()Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRedirectStrategy()Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineParams(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v14

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;

    move-result-object v2

    .line 815
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v15}, Lch/boye/httpclientandroidlib/client/RequestDirector;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    .line 799
    :cond_1
    :try_start_2
    new-instance v3, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v2}, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    move-object v15, v3

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 819
    :catch_0
    move-exception v2

    .line 820
    new-instance v3, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    invoke-direct {v3, v2}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "request"

    .prologue
    .line 730
    const/4 v0, 0x0

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "request"
    .parameter "context"

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 925
    .local p3, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 4
    .parameter "target"
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 934
    .local p3, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    if-nez p3, :cond_0

    .line 935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 943
    :try_start_0
    invoke-interface {p3, v1}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 971
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 972
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 973
    return-object v0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 947
    :try_start_1
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 954
    :goto_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 955
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 948
    :catch_1
    move-exception v1

    .line 951
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Error consuming content after an exception."

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 958
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 959
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 962
    :cond_2
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 963
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 966
    :cond_3
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 908
    .local p2, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 916
    .local p2, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    .line 917
    invoke-virtual {p0, v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getAuthSchemes()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .locals 1

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    .line 461
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    .line 500
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createClientConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 445
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 487
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .locals 1

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    .line 474
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;
    .locals 1

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;

    .line 583
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    .line 596
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .locals 1

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    if-nez v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    .line 635
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    .line 513
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 426
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    .line 569
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectStrategy()Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    .line 540
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    .line 453
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
    .locals 1
    .parameter "index"

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
    .locals 1
    .parameter "index"

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .locals 1

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    .line 609
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    .line 555
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 619
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    if-nez v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    .line 622
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lch/boye/httpclientandroidlib/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lch/boye/httpclientandroidlib/HttpRequestInterceptor;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lch/boye/httpclientandroidlib/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lch/boye/httpclientandroidlib/HttpResponseInterceptor;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthSchemes(Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;)V
    .locals 1
    .parameter "authSchemeRegistry"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieSpecs(Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;)V
    .locals 1
    .parameter "cookieSpecRegistry"

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V
    .locals 1
    .parameter "cookieStore"

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCredentialsProvider(Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .locals 1
    .parameter "credsProvider"

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;)V
    .locals 1
    .parameter "retryHandler"

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKeepAliveStrategy(Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;)V
    .locals 1
    .parameter "keepAliveStrategy"

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V
    .locals 1
    .parameter "proxyAuthHandler"

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRedirectHandler(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V
    .locals 1
    .parameter "redirectHandler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRedirectStrategy(Lch/boye/httpclientandroidlib/client/RedirectStrategy;)V
    .locals 1
    .parameter "redirectStrategy"

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V
    .locals 1
    .parameter "reuseStrategy"

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRoutePlanner(Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;)V
    .locals 1
    .parameter "routePlanner"

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V
    .locals 1
    .parameter "targetAuthHandler"

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserTokenHandler(Lch/boye/httpclientandroidlib/client/UserTokenHandler;)V
    .locals 1
    .parameter "userTokenHandler"

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    monitor-exit p0

    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
