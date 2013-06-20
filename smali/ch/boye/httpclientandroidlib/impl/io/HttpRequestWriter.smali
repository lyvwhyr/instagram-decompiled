.class public Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;
.source "HttpRequestWriter.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "buffer"
    .parameter "formatter"
    .parameter "params"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected writeHeadLine(Lch/boye/httpclientandroidlib/HttpMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;->lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    check-cast p1, Lch/boye/httpclientandroidlib/HttpRequest;

    .end local p1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatRequestLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 57
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    .line 58
    return-void
.end method
