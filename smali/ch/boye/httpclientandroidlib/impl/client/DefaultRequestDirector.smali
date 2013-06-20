.class public Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/RequestDirector;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lch/boye/httpclientandroidlib/params/HttpParams;

.field protected final proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

.field protected final proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

.field protected final requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

.field protected final routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

.field protected final targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

.field protected final userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

.field private virtualHost:Lch/boye/httpclientandroidlib/HttpHost;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 4
    .parameter "log"
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
    .parameter "userTokenHandler"
    .parameter "params"

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectHandler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Log may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    if-nez p2, :cond_1

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request executor may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_1
    if-nez p3, :cond_2

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Client connection manager may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_2
    if-nez p4, :cond_3

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection reuse strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_3
    if-nez p5, :cond_4

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection keep alive strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_4
    if-nez p6, :cond_5

    .line 255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Route planner may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_5
    if-nez p7, :cond_6

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP protocol processor may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_6
    if-nez p8, :cond_7

    .line 263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request retry handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_7
    if-nez p9, :cond_8

    .line 267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Redirect strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_8
    if-nez p10, :cond_9

    .line 271
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target authentication handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_9
    if-nez p11, :cond_a

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Proxy authentication handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_a
    if-nez p12, :cond_b

    .line 279
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "User token handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_b
    if-nez p13, :cond_c

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_c
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 287
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    .line 288
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 289
    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 290
    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    .line 291
    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    .line 292
    iput-object p7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 293
    iput-object p8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    .line 294
    iput-object p9, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    .line 295
    iput-object p10, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    .line 296
    iput-object p11, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    .line 297
    move-object/from16 v0, p12

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    .line 298
    move-object/from16 v0, p13

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 302
    const/4 v1, 0x0

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    .line 303
    const/4 v1, 0x0

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 304
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v2, "http.protocol.max-redirects"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 305
    new-instance v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;-><init>()V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 306
    new-instance v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;-><init>()V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 307
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 15
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
    .parameter "userTokenHandler"
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    new-instance v2, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    invoke-direct {v2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 213
    return-void
.end method

.method private abortConnection()V
    .locals 4

    .prologue
    .line 1152
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 1153
    if-eqz v0, :cond_1

    .line 1156
    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 1158
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1171
    :cond_1
    :goto_1
    return-void

    .line 1159
    :catch_0
    move-exception v1

    .line 1160
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1161
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1167
    :catch_1
    move-exception v0

    .line 1168
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Error releasing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private invalidateAuthIfSuccessful(Lch/boye/httpclientandroidlib/auth/AuthState;)V
    .locals 2
    .parameter "authState"

    .prologue
    .line 1247
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    .line 1248
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->invalidate()V

    .line 1254
    :cond_0
    return-void
.end method

.method private processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 3
    .parameter
    .parameter "authState"
    .parameter "authHandler"
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;",
            "Lch/boye/httpclientandroidlib/auth/AuthState;",
            "Lch/boye/httpclientandroidlib/client/AuthenticationHandler;",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lch/boye/httpclientandroidlib/Header;>;"
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    .line 1183
    if-nez v0, :cond_0

    .line 1185
    invoke-interface {p3, p1, p4, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    .line 1186
    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScheme(Lch/boye/httpclientandroidlib/auth/AuthScheme;)V

    :cond_0
    move-object v1, v0

    .line 1188
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    .line 1190
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    .line 1191
    if-nez v0, :cond_1

    .line 1192
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " authorization challenge expected, but not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_1
    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->processChallenge(Lch/boye/httpclientandroidlib/Header;)V

    .line 1196
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Authorization challenge processed"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1197
    return-void
.end method

.method private tryConnect(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 6
    .parameter "req"
    .parameter "context"

    .prologue
    .line 565
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    .line 567
    const/4 v0, 0x0

    .line 570
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 572
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, v2, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 577
    :goto_1
    invoke-virtual {p0, v2, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->establishRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 599
    return-void

    .line 575
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v3

    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 579
    :catch_0
    move-exception v1

    .line 581
    :try_start_1
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 584
    :goto_2
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    invoke-interface {v3, v1, v0, p2}, Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 585
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") caught when connecting to the target host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 590
    :cond_1
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 591
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 593
    :cond_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Retrying connect"

    invoke-virtual {v1, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 595
    :cond_3
    throw v1

    .line 582
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private tryExecute(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 7
    .parameter "req"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 606
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v2

    .line 607
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v3

    move-object v0, v1

    .line 613
    :goto_0
    iget v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    .line 615
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->incrementExecCount()V

    .line 616
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 617
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Cannot retry non-repeatable request"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 618
    if-eqz v0, :cond_0

    .line 619
    new-instance v1, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;

    const-string v2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 623
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;

    const-string v1, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_1
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 633
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Reopening the direct connection."

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, v3, p2, v4}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 642
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to execute request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 645
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {v0, v2, v4, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 670
    :goto_1
    return-object v1

    .line 637
    :cond_4
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Proxied connection. Need to start over."

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Closing the connection."

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 651
    :try_start_1
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 654
    :goto_2
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getExecCount()I

    move-result v5

    invoke-interface {v4, v0, v5, p2}, Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 655
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 656
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") caught when processing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 660
    :cond_5
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 661
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 663
    :cond_6
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Retrying request"

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 666
    :cond_7
    throw v0

    .line 652
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .locals 6
    .parameter "authState"
    .parameter "host"
    .parameter "credsProvider"

    .prologue
    .line 1205
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1209
    :cond_0
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 1210
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v0

    .line 1211
    if-gez v0, :cond_1

    .line 1212
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v0

    .line 1213
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    .line 1216
    :cond_1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v2

    .line 1217
    new-instance v3, Lch/boye/httpclientandroidlib/auth/AuthScope;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1224
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication scope: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1226
    :cond_2
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    .line 1227
    if-nez v0, :cond_5

    .line 1228
    invoke-interface {p3, v3}, Lch/boye/httpclientandroidlib/client/CredentialsProvider;->getCredentials(Lch/boye/httpclientandroidlib/auth/AuthScope;)Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1230
    if-eqz v0, :cond_4

    .line 1231
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Found credentials"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1242
    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    .line 1243
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->setCredentials(Lch/boye/httpclientandroidlib/auth/Credentials;)V

    goto :goto_0

    .line 1233
    :cond_4
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Credentials not found"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 1237
    :cond_5
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1238
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Authentication failed"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1239
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
    .locals 1
    .parameter "request"

    .prologue
    .line 312
    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    .end local p1
    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    .line 316
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V

    goto :goto_0
.end method


# virtual methods
.method protected createConnectRequest(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 4
    .parameter "route"
    .parameter "context"

    .prologue
    .line 975
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    .line 977
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 978
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v0

    .line 979
    if-gez v0, :cond_0

    .line 980
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    .line 985
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 986
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 988
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    .line 992
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-direct {v2, v3, v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 995
    return-object v2
.end method

.method protected createTunnelToProxy(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 2
    .parameter "route"
    .parameter "hop"
    .parameter "context"

    .prologue
    .line 955
    new-instance v0, Lch/boye/httpclientandroidlib/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 12
    .parameter "route"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 812
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v10

    .line 813
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v11

    move v8, v7

    move-object v4, v9

    .line 817
    :cond_0
    :goto_0
    if-nez v8, :cond_4

    .line 819
    const/4 v8, 0x1

    .line 821
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1, p2, v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 825
    :cond_1
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createConnectRequest(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 829
    const-string v1, "http.target_host"

    invoke-interface {p2, v1, v11}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    const-string v1, "http.proxy_host"

    invoke-interface {p2, v1, v10}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    const-string v1, "http.connection"

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p2, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 835
    const-string v1, "http.auth.target-scope"

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-interface {p2, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 837
    const-string v1, "http.auth.proxy-scope"

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-interface {p2, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    const-string v1, "http.request"

    invoke-interface {p2, v1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 842
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v1, v0, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 844
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {v1, v0, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v4

    .line 846
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v4, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 847
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v0, v4, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 849
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    .line 850
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    .line 851
    new-instance v0, Lch/boye/httpclientandroidlib/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response to CONNECT request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_2
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    .line 858
    if-eqz v6, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isAuthenticating(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 861
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Proxy requested authentication"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 862
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->getChallenges(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v1

    .line 865
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :cond_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v0, v10, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    .line 876
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 880
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 881
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection kept alive"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 883
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 884
    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    move v0, v7

    :goto_1
    move v8, v0

    .line 891
    goto/16 :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 870
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    .line 898
    :cond_4
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    .line 900
    const/16 v1, 0x12b

    if-le v0, v1, :cond_8

    .line 903
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_5

    .line 905
    new-instance v1, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-interface {v4, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 908
    :cond_5
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    .line 909
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT refused by proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)V

    throw v0

    .line 886
    :cond_6
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    move v0, v7

    goto :goto_1

    .line 893
    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0, v9}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    goto/16 :goto_0

    .line 913
    :cond_8
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    .line 919
    return v7

    :cond_9
    move v0, v8

    goto :goto_1
.end method

.method protected determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 2
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 713
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    const-string v1, "http.default-host"

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lch/boye/httpclientandroidlib/HttpHost;

    .line 716
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 717
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host must not be null, or set in parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method protected establishRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 6
    .parameter "route"
    .parameter "context"

    .prologue
    .line 737
    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;-><init>()V

    .line 740
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    .line 741
    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRouteDirector;->nextStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I

    move-result v2

    .line 743
    packed-switch v2, :pswitch_data_0

    .line 780
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown step indicator "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from RouteDirector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :pswitch_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 784
    :goto_0
    :pswitch_1
    if-gtz v2, :cond_0

    .line 786
    return-void

    .line 751
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    .line 752
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Tunnel to target created."

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 753
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v3, v1, v4}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_0

    .line 761
    :pswitch_3
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 762
    invoke-virtual {p0, p1, v1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    .line 763
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Tunnel to proxy created."

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 764
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_0

    .line 770
    :pswitch_4
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_0

    .line 774
    :pswitch_5
    new-instance v0, Lch/boye/httpclientandroidlib/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to establish route: planned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 13
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 355
    .line 356
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v4

    .line 357
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-virtual {v4, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 358
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v4, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v5

    .line 360
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    const-string v3, "http.virtual-host"

    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpHost;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 364
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 366
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v1

    .line 367
    if-eq v1, v6, :cond_0

    .line 368
    new-instance v3, Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v1, v7}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 372
    :cond_0
    new-instance v3, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    invoke-direct {v3, v4, v5}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 377
    const/4 v1, 0x0

    move v5, v2

    .line 378
    :goto_0
    if-nez v2, :cond_6

    .line 384
    :try_start_0
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v4

    .line 385
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v6

    .line 389
    const-string v1, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 392
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-nez v1, :cond_2

    .line 393
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v1, v6, v7}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    move-result-object v8

    .line 395
    instance-of v1, p2, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    if-eqz v1, :cond_1

    .line 396
    move-object v0, p2

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    move-object v1, v0

    invoke-interface {v1, v8}, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;->setConnectionRequest(Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;)V

    .line 399
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->getTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)J
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v9

    .line 401
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v9, v10, v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 408
    :try_start_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->isStaleCheckingEnabled(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Stale connection check"

    invoke-virtual {v1, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isStale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Stale connection detected"

    invoke-virtual {v1, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 414
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    .line 420
    :cond_2
    instance-of v1, p2, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    if-eqz v1, :cond_3

    .line 421
    move-object v0, p2

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    move-object v1, v0

    iget-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1, v8}, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;)V
    :try_end_2
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 425
    :cond_3
    :try_start_3
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->tryConnect(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_3
    .catch Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    .line 435
    :try_start_4
    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V

    .line 438
    invoke-virtual {p0, v4, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 441
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 443
    if-nez p1, :cond_4

    .line 444
    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object p1

    .line 447
    :cond_4
    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    .line 450
    const-string v6, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    const-string v6, "http.proxy_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    const-string v1, "http.connection"

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    const-string v1, "http.auth.target-scope"

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    const-string v1, "http.auth.proxy-scope"

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-virtual {v1, v4, v6, v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 464
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->tryExecute(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v4

    .line 465
    if-nez v4, :cond_9

    move-object v1, v4

    .line 467
    goto/16 :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 404
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 405
    throw v2
    :try_end_4
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 542
    :catch_1
    move-exception v1

    .line 543
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connection has been shut down"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 546
    throw v2

    .line 426
    :catch_2
    move-exception v1

    .line 427
    :try_start_5
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 428
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 430
    :cond_5
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->getResponse()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 527
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_11

    .line 530
    :cond_7
    if-eqz v5, :cond_8

    .line 531
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    .line 532
    :cond_8
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 540
    :goto_1
    return-object v1

    .line 471
    :cond_9
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v4, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 472
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-virtual {v1, v4, v5, v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 476
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-object/from16 v0, p3

    invoke-interface {v1, v4, v0}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v5

    .line 477
    if-eqz v5, :cond_b

    .line 479
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v0, p3

    invoke-interface {v1, v4, v0}, Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)J

    move-result-wide v8

    .line 480
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 482
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_d

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    :goto_2
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection can be kept alive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 489
    :cond_a
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v6}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 492
    :cond_b
    move-object/from16 v0, p3

    invoke-virtual {p0, v3, v4, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->handleResponse(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    move-result-object v1

    .line 493
    if-nez v1, :cond_e

    .line 494
    const/4 v1, 0x1

    move-object v2, v3

    .line 515
    :goto_3
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v3, :cond_c

    if-nez v7, :cond_c

    .line 516
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lch/boye/httpclientandroidlib/client/UserTokenHandler;->getUserToken(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v3

    .line 517
    const-string v6, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v3}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    if-eqz v3, :cond_c

    .line 519
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v6, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    :cond_c
    move-object v3, v2

    move v2, v1

    move-object v1, v4

    .line 523
    goto/16 :goto_0

    .line 485
    :cond_d
    const-string v1, "indefinitely"

    goto :goto_2

    .line 496
    :cond_e
    if-eqz v5, :cond_10

    .line 498
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v6

    .line 499
    invoke-static {v6}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 502
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    .line 509
    :goto_4
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v3

    invoke-virtual {v6, v3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 510
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_f
    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 512
    goto :goto_3

    .line 504
    :cond_10
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    .line 505
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->invalidateAuthIfSuccessful(Lch/boye/httpclientandroidlib/auth/AuthState;)V

    .line 506
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->invalidateAuthIfSuccessful(Lch/boye/httpclientandroidlib/auth/AuthState;)V
    :try_end_5
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 547
    :catch_3
    move-exception v1

    .line 548
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 549
    throw v1

    .line 535
    :cond_11
    :try_start_6
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 536
    new-instance v3, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-direct {v3, v2, v4, v5}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V

    .line 537
    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_6
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 550
    :catch_4
    move-exception v1

    .line 551
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 552
    throw v1

    .line 553
    :catch_5
    move-exception v1

    .line 554
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 555
    throw v1
.end method

.method protected handleResponse(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;
    .locals 9
    .parameter "roureq"
    .parameter "response"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 1017
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    .line 1018
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    .line 1021
    invoke-static {v2}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isRedirecting(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    invoke-interface {v3, v0, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectStrategy;->isRedirected(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1024
    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-lt v3, v4, :cond_0

    .line 1025
    new-instance v0, Lch/boye/httpclientandroidlib/client/RedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum redirects ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_0
    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 1031
    iput-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 1033
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    invoke-interface {v3, v0, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectStrategy;->getRedirect(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v3

    .line 1034
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    .line 1035
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v3, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 1037
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1039
    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1042
    :cond_1
    new-instance v4, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1048
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v5, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    .line 1049
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v5, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    .line 1052
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    invoke-virtual {v1, v4}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1053
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->invalidate()V

    .line 1054
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v1

    .line 1055
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->invalidate()V

    .line 1060
    :cond_2
    invoke-direct {p0, v3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v1

    .line 1061
    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 1063
    invoke-virtual {p0, v4, v1, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    .line 1064
    new-instance p1, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    .end local p1
    invoke-direct {p1, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 1066
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1067
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirecting to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' via "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1142
    :cond_3
    :goto_0
    return-object p1

    .line 1073
    .restart local p1
    :cond_4
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    .line 1076
    if-eqz v6, :cond_9

    invoke-static {v2}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isAuthenticating(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1078
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1080
    const-string v0, "http.target_host"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    .line 1082
    if-nez v0, :cond_a

    .line 1083
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    move-object v7, v0

    .line 1086
    :goto_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Target requested authentication"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1087
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->getChallenges(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v1

    .line 1090
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :cond_5
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v0, v7, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    .line 1101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_3

    move-object p1, v8

    .line 1105
    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1095
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    move-object p1, v8

    .line 1096
    goto :goto_0

    .line 1109
    :cond_6
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    .line 1112
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1114
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v7

    .line 1116
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Proxy requested authentication"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1117
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->getChallenges(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v1

    .line 1120
    :try_start_1
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1129
    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v0, v7, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    .line 1131
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_3

    move-object p1, v8

    .line 1135
    goto/16 :goto_0

    .line 1123
    :catch_1
    move-exception v0

    .line 1124
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1125
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    move-object p1, v8

    .line 1126
    goto/16 :goto_0

    .line 1139
    :cond_8
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    :cond_9
    move-object p1, v8

    .line 1142
    goto/16 :goto_0

    :cond_a
    move-object v7, v0

    goto/16 :goto_1
.end method

.method protected releaseConnection()V
    .locals 3

    .prologue
    .line 683
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 688
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected rewriteRequestURI(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 4
    .parameter "request"
    .parameter "route"

    .prologue
    .line 327
    :try_start_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 328
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;)Ljava/net/URI;

    move-result-object v0

    .line 333
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;)Ljava/net/URI;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
