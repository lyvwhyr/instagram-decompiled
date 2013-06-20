.class Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
.super Ljava/lang/Object;
.source "ResponseProtocolCompliance.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final UNEXPECTED_100_CONTINUE:Ljava/lang/String; = "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

.field private static final UNEXPECTED_PARTIAL_CONTENT:Ljava/lang/String; = "partial content was returned for a request that did not ask for it"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backendResponseMustNotHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 2
    .parameter "request"
    .parameter "backendResponse"

    .prologue
    .line 205
    const-string v0, "HEAD"

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 97
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 99
    :cond_0
    return-void
.end method

.method private ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 179
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 187
    const-string v0, "Content-Length"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-interface {p2, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensure206ContainsDateHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 161
    const-string v0, "Date"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    const-string v0, "Date"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method private ensure304DoesNotContainExtraEntityHeaders(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v0, 0x0

    .line 193
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Allow"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "Content-Encoding"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Content-Language"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Content-Length"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Content-MD5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Content-Range"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Content-Type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Last-Modified"

    aput-object v3, v1, v2

    .line 197
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_0

    .line 198
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 199
    invoke-interface {p1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method private ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 169
    const-string v0, "Range"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    .line 171
    :cond_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 174
    new-instance v0, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    const-string v1, "partial content was returned for a request that did not ask for it"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOriginalRequestProtocol(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;)Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1
    .parameter "request"

    .prologue
    .line 246
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method private identityIsNotUsedInContentEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 14
    .parameter "response"

    .prologue
    .line 132
    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    .line 133
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 158
    :cond_0
    return-void

    .line 134
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    const/4 v2, 0x0

    .line 136
    array-length v6, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v0, v4, v3

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const/4 v1, 0x1

    .line 139
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v13, v0

    move v0, v1

    move v1, v2

    move v2, v13

    :goto_1
    if-ge v2, v9, :cond_4

    aget-object v10, v8, v2

    .line 140
    const-string v11, "identity"

    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 141
    const/4 v1, 0x1

    .line 139
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_2
    if-nez v0, :cond_3

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/4 v0, 0x0

    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 150
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v7, "Content-Encoding"

    invoke-direct {v2, v7, v0}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v1

    goto :goto_0

    .line 153
    :cond_6
    if-eqz v2, :cond_0

    .line 154
    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 155
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    .line 156
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_3
.end method

.method private removeResponseTransferEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 241
    const-string v0, "TE"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 242
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private requestDidNotExpect100ContinueButResponseIsOne(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 213
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 220
    .end local p1
    :cond_0
    return-void

    .line 217
    .restart local p1
    :cond_1
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    .end local p1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    .line 219
    :goto_0
    instance-of v1, v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_2

    .line 220
    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :cond_2
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 223
    new-instance v0, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    const-string v1, "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p1
    :cond_3
    move-object v0, p1

    .line 217
    goto :goto_0
.end method

.method private requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 250
    instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    return v0
.end method

.method private transferEncodingIsNotReturnedTo1_0Client(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local p1
    :cond_1
    check-cast p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    .end local p1
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->getOriginalRequestProtocol(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    .line 233
    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v0

    if-gez v0, :cond_0

    .line 237
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->removeResponseTransferEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V

    goto :goto_0
.end method

.method private warningsWithNonMatchingWarnDatesAreRemoved(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 13
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x0

    .line 105
    :try_start_0
    const-string v1, "Date"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 108
    :goto_0
    if-nez v4, :cond_1

    .line 129
    :cond_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    move-object v4, v0

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "Warning"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v5

    .line 110
    if-eqz v5, :cond_0

    array-length v0, v5

    if-eqz v0, :cond_0

    .line 111
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    array-length v7, v5

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v1, v5, v3

    .line 114
    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->getWarningValues(Lch/boye/httpclientandroidlib/Header;)[Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    move-result-object v8

    array-length v9, v8

    move v1, v2

    :goto_2
    if-ge v1, v9, :cond_4

    aget-object v10, v8, v1

    .line 115
    invoke-virtual {v10}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->getWarnDate()Ljava/util/Date;

    move-result-object v11

    .line 116
    if-eqz v11, :cond_2

    invoke-virtual {v11, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 117
    :cond_2
    new-instance v11, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v12, "Warning"

    invoke-virtual {v10}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 119
    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    .line 113
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 123
    :cond_5
    if-eqz v0, :cond_0

    .line 124
    const-string v0, "Warning"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 125
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    .line 126
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_4
.end method


# virtual methods
.method public ensureProtocolCompliance(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .parameter "request"
    .parameter "response"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->backendResponseMustNotHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 76
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestDidNotExpect100ContinueButResponseIsOne(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->transferEncodingIsNotReturnedTo1_0Client(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 87
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure206ContainsDateHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 89
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure304DoesNotContainExtraEntityHeaders(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 91
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->identityIsNotUsedInContentEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 93
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->warningsWithNonMatchingWarnDatesAreRemoved(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 94
    return-void
.end method
