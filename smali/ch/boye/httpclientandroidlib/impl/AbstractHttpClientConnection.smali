.class public abstract Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;
.super Ljava/lang/Object;
.source "AbstractHttpClientConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpClientConnection;


# instance fields
.field private final entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

.field private final entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

.field private eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

.field private inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

.field private responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 78
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    .line 80
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    .line 81
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    .line 82
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    .line 94
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createEntitySerializer()Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    .line 95
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createEntityDeserializer()Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    .line 96
    return-void
.end method


# virtual methods
.method protected abstract assertOpen()V
.end method

.method protected createConnectionMetrics(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;
    .locals 1
    .parameter "inTransportMetric"
    .parameter "outTransportMetric"

    .prologue
    .line 195
    new-instance v0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;-><init>(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)V

    return-object v0
.end method

.method protected createEntityDeserializer()Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;-><init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createEntitySerializer()Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;-><init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createHttpResponseFactory()Lch/boye/httpclientandroidlib/HttpResponseFactory;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;-><init>()V

    return-object v0
.end method

.method protected createRequestWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;
    .locals 2
    .parameter "buffer"
    .parameter "params"

    .prologue
    .line 186
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;
    .locals 2
    .parameter "buffer"
    .parameter "responseFactory"
    .parameter "params"

    .prologue
    .line 167
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/HttpResponseParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    .line 272
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 276
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->doFlush()V

    .line 277
    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method protected init(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "inbuffer"
    .parameter "outbuffer"
    .parameter "params"

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output session buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 225
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 226
    instance-of v0, p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 227
    check-cast v0, Lch/boye/httpclientandroidlib/io/EofSensor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    .line 229
    :cond_2
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createHttpResponseFactory()Lch/boye/httpclientandroidlib/HttpResponseFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createResponseParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    .line 233
    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createRequestWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    .line 235
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createConnectionMetrics(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    .line 238
    return-void
.end method

.method protected isEof()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/EofSensor;->isEof()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 241
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 242
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->isEof()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    .line 312
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->isEof()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 295
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->deserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 296
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 297
    return-void
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 282
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpMessageParser;->parse()Lch/boye/httpclientandroidlib/HttpMessage;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpResponse;

    .line 283
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 284
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 286
    :cond_0
    return-object v0
.end method

.method public sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 261
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->serialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto :goto_0
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 251
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/HttpMessageWriter;->write(Lch/boye/httpclientandroidlib/HttpMessage;)V

    .line 252
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 253
    return-void
.end method
