.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxGarbageLines:I

.field private final responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "buffer"
    .parameter "parser"
    .parameter "responseFactory"
    .parameter "params"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 66
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 78
    if-nez p3, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 83
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 84
    const-string v0, "http.connection.max-status-line-garbage"

    const v1, 0x7fffffff

    invoke-interface {p4, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    .line 86
    return-void
.end method


# virtual methods
.method protected parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
    .locals 7
    .parameter "sessionBuffer"

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 93
    move v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 98
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v2

    .line 99
    if-ne v2, v6, :cond_0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lch/boye/httpclientandroidlib/NoHttpResponseException;

    const-string v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    new-instance v3, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 104
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v4, v5, v3}, Lch/boye/httpclientandroidlib/message/LineParser;->hasProtocolVersion(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v0, v1, v3}, Lch/boye/httpclientandroidlib/message/LineParser;->parseStatusLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    if-eq v2, v6, :cond_2

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    if-lt v0, v2, :cond_3

    .line 109
    :cond_2
    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    const-string v1, "The server failed to respond with a valid HTTP response"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Garbage in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 115
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_0
.end method
