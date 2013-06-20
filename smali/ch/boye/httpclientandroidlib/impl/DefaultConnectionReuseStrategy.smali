.class public Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method protected createTokenIterator(Lch/boye/httpclientandroidlib/HeaderIterator;)Lch/boye/httpclientandroidlib/TokenIterator;
    .locals 1
    .parameter "hit"

    .prologue
    .line 172
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;-><init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 7
    .parameter "response"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    if-nez p2, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v3

    .line 81
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    const-string v4, "chunked"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    :cond_2
    :goto_0
    return v2

    .line 87
    :cond_3
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    array-length v4, v0

    if-ne v4, v1, :cond_2

    .line 92
    aget-object v0, v0, v2

    .line 94
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 95
    if-ltz v0, :cond_2

    .line 106
    :cond_4
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 108
    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v0

    .line 133
    :cond_5
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 135
    :try_start_1
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;->createTokenIterator(Lch/boye/httpclientandroidlib/HeaderIterator;)Lch/boye/httpclientandroidlib/TokenIterator;

    move-result-object v4

    move v0, v2

    .line 137
    :cond_6
    :goto_1
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/TokenIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 138
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 139
    const-string v6, "Close"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    const-string v6, "Keep-Alive"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_6

    move v0, v1

    .line 143
    goto :goto_1

    .line 146
    :cond_7
    if-eqz v0, :cond_8

    move v2, v1

    .line 147
    goto :goto_0

    .line 158
    :cond_8
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_2

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    goto :goto_0
.end method
