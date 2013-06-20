.class public Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;
.source "HttpRequestParser.java"


# instance fields
.field private final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private final requestFactory:Lch/boye/httpclientandroidlib/HttpRequestFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpRequestFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2
    .parameter "buffer"
    .parameter "parser"
    .parameter "requestFactory"
    .parameter "params"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 78
    if-nez p3, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->requestFactory:Lch/boye/httpclientandroidlib/HttpRequestFactory;

    .line 82
    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 83
    return-void
.end method


# virtual methods
.method protected parseHead(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)Lch/boye/httpclientandroidlib/HttpMessage;
    .locals 3
    .parameter "sessionBuffer"

    .prologue
    .line 89
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    .line 90
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v0

    .line 91
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    new-instance v0, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    const-string v1, "Client closed connection"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    .line 95
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->lineParser:Lch/boye/httpclientandroidlib/message/LineParser;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v1, v2, v0}, Lch/boye/httpclientandroidlib/message/LineParser;->parseRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestParser;->requestFactory:Lch/boye/httpclientandroidlib/HttpRequestFactory;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpRequestFactory;->newHttpRequest(Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    return-object v0
.end method
