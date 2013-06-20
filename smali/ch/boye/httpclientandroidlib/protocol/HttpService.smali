.class public Lch/boye/httpclientandroidlib/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# instance fields
.field private volatile connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

.field private volatile expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

.field private volatile handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

.field private volatile params:Lch/boye/httpclientandroidlib/params/HttpParams;

.field private volatile processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

.field private volatile responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;)V
    .locals 1
    .parameter "proc"
    .parameter "connStrategy"
    .parameter "responseFactory"

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 77
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 78
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 80
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 81
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    .line 158
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setHttpProcessor(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;)V

    .line 159
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setConnReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V

    .line 160
    invoke-virtual {p0, p3}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setResponseFactory(Lch/boye/httpclientandroidlib/HttpResponseFactory;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 7
    .parameter "processor"
    .parameter "connStrategy"
    .parameter "responseFactory"
    .parameter "handlerResolver"
    .parameter "params"

    .prologue
    .line 140
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/protocol/HttpService;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "processor"
    .parameter "connStrategy"
    .parameter "responseFactory"
    .parameter "handlerResolver"
    .parameter "expectationVerifier"
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 77
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 78
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 80
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 81
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    if-nez p2, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    if-nez p3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    if-nez p6, :cond_3

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 116
    iput-object p2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 117
    iput-object p3, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 118
    iput-object p4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    .line 119
    iput-object p5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    .line 120
    iput-object p6, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 121
    return-void
.end method


# virtual methods
.method protected doService(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .parameter "request"
    .parameter "response"
    .parameter "context"

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    if-eqz v1, :cond_0

    .line 365
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;

    move-result-object v0

    .line 368
    :cond_0
    if-eqz v0, :cond_1

    .line 369
    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;->handle(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_1
    const/16 v0, 0x1f5

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "ex"
    .parameter "response"

    .prologue
    .line 327
    instance-of v0, p1, Lch/boye/httpclientandroidlib/MethodNotSupportedException;

    if-eqz v0, :cond_0

    .line 328
    const/16 v0, 0x1f5

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    .line 336
    :goto_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 337
    new-instance v1, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([B)V

    .line 338
    const-string v0, "text/plain; charset=US-ASCII"

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 339
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 340
    return-void

    .line 329
    :cond_0
    instance-of v0, p1, Lch/boye/httpclientandroidlib/UnsupportedHttpVersionException;

    if-eqz v0, :cond_1

    .line 330
    const/16 v0, 0x1f9

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 331
    :cond_1
    instance-of v0, p1, Lch/boye/httpclientandroidlib/ProtocolException;

    if-eqz v0, :cond_2

    .line 332
    const/16 v0, 0x190

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 334
    :cond_2
    const/16 v0, 0x1f4

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public handleRequest(Lch/boye/httpclientandroidlib/HttpServerConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 11
    .parameter "conn"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x1f4

    const/16 v9, 0xc8

    .line 232
    const-string v1, "http.connection"

    invoke-interface {p2, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestHeader()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v2

    .line 239
    new-instance v1, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v4

    iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v1, v4, v5}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v2, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 242
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    .line 244
    sget-object v4, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v1, v4}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 246
    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    move-object v5, v1

    .line 249
    :goto_0
    instance-of v1, v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_6

    .line 251
    move-object v0, v2

    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    const/16 v4, 0x64

    invoke-interface {v1, v5, v4, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 254
    new-instance v4, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v6

    iget-object v7, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v4, v6, v7}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v1, v4}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 257
    iget-object v4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_0

    .line 259
    :try_start_1
    iget-object v4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    invoke-interface {v4, v2, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;->verify(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v4

    if-ge v4, v9, :cond_1

    .line 271
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 272
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->flush()V

    .line 274
    move-object v0, v2

    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    move-object v1, v3

    .line 281
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 282
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    const/16 v3, 0xc8

    invoke-interface {v1, v5, v3, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 283
    new-instance v3, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v4

    iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v3, v4, v5}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 286
    const-string v3, "http.request"

    invoke-interface {p2, v3, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v3, "http.response"

    invoke-interface {p2, v3, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-interface {v3, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpProcessor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 290
    invoke-virtual {p0, v2, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpService;->doService(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 294
    :cond_2
    instance-of v3, v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_3

    .line 295
    check-cast v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 296
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_2
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    :cond_3
    :goto_3
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-interface {v2, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpProcessor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 309
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 310
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 311
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->flush()V

    .line 313
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    invoke-interface {v2, v1, p2}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 314
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->close()V

    .line 316
    :cond_4
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    :try_start_3
    iget-object v4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    sget-object v6, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v7, 0x1f4

    invoke-interface {v4, v6, v7, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v4

    .line 263
    new-instance v6, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v4, v6}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 265
    invoke-virtual {p0, v1, v4}, Lch/boye/httpclientandroidlib/protocol/HttpService;->handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V

    move-object v1, v4

    goto/16 :goto_1

    .line 277
    :cond_5
    move-object v0, v2

    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    :try_end_3
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    move-object v1, v3

    goto :goto_2

    .line 299
    :catch_1
    move-exception v1

    move-object v2, v1

    .line 300
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    sget-object v3, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-interface {v1, v3, v10, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 303
    new-instance v3, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v4

    iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v3, v4, v5}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 305
    invoke-virtual {p0, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpService;->handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V

    goto :goto_3

    :cond_7
    move-object v5, v1

    goto/16 :goto_0
.end method

.method public setConnReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V
    .locals 2
    .parameter "connStrategy"

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 181
    return-void
.end method

.method public setExpectationVerifier(Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;)V
    .locals 0
    .parameter "expectationVerifier"

    .prologue
    .line 211
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    .line 212
    return-void
.end method

.method public setHandlerResolver(Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;)V
    .locals 0
    .parameter "handlerResolver"

    .prologue
    .line 204
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    .line 205
    return-void
.end method

.method public setHttpProcessor(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;)V
    .locals 2
    .parameter "processor"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 171
    return-void
.end method

.method public setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 197
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 198
    return-void
.end method

.method public setResponseFactory(Lch/boye/httpclientandroidlib/HttpResponseFactory;)V
    .locals 2
    .parameter "responseFactory"

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 191
    return-void
.end method
