.class public abstract Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;
.super Ljava/lang/Object;
.source "AbstractHttpServerConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpServerConnection;


# instance fields
.field private final entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

.field private final entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

.field private eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

.field private inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

.field private responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 78
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    .line 80
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    .line 81
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    .line 82
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    .line 94
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createEntitySerializer()Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    .line 95
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createEntityDeserializer()Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

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

.method protected createHttpRequestFactory()Lch/boye/httpclientandroidlib/HttpRequestFactory;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;-><init>()V

    return-object v0
.end method

.method protected createRequestParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;
    .locals 2
    .parameter "buffer"
    .parameter "requestFactory"
    .parameter "params"

    .prologue
    .line 167
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;
    .locals 2
    .parameter "buffer"
    .parameter "params"

    .prologue
    .line 186
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpResponseWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/boye/httpclientandroidlib/impl/io/HttpResponseWriter;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    .line 260
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 264
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->doFlush()V

    .line 265
    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

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
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 225
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 226
    instance-of v0, p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 227
    check-cast v0, Lch/boye/httpclientandroidlib/io/EofSensor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    .line 229
    :cond_2
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createHttpRequestFactory()Lch/boye/httpclientandroidlib/HttpRequestFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createRequestParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    .line 233
    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createResponseWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    .line 235
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->createConnectionMetrics(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    .line 238
    return-void
.end method

.method protected isEof()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

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

.method public isStale()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->isEof()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    .line 303
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->isEof()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public receiveRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 254
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->deserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 255
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 256
    return-void
.end method

.method public receiveRequestHeader()Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 243
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->requestParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpMessageParser;->parse()Lch/boye/httpclientandroidlib/HttpMessage;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequest;

    .line 244
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 245
    return-object v0
.end method

.method public sendResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 281
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->serialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto :goto_0
.end method

.method public sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 273
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->responseWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/HttpMessageWriter;->write(Lch/boye/httpclientandroidlib/HttpMessage;)V

    .line 274
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpServerConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 277
    :cond_1
    return-void
.end method
