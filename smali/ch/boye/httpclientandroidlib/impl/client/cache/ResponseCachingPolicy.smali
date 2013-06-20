.class Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:I

.field private final sharedCache:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .parameter "maxObjectSizeBytes"
    .parameter "sharedCache"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 67
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:I

    .line 68
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    .line 69
    return-void
.end method

.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v0, 0x0

    .line 233
    const-string v1, "Cache-Control"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    const-string v1, "Expires"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 235
    const-string v2, "Date"

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 236
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 238
    :try_start_0
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 239
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private from1_0Origin(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 247
    const-string v0, "Via"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    array-length v1, v0

    if-ge v2, v1, :cond_1

    aget-object v0, v0, v2

    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 251
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "HTTP/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    .line 254
    :cond_0
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 258
    :cond_1
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private requestProtocolGreaterThanAccepted(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 2
    .parameter "req"

    .prologue
    .line 262
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z
    .locals 12
    .parameter "msg"
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 166
    const-string v1, "Cache-Control"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    .line 167
    array-length v5, v4

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 168
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v6

    array-length v7, v6

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_3

    aget-object v8, v6, v2

    .line 169
    array-length v9, p2

    move v1, v0

    :goto_2
    if-ge v1, v9, :cond_2

    aget-object v10, p2, v1

    .line 170
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 171
    const/4 v0, 0x1

    .line 176
    :cond_0
    return v0

    .line 169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 167
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method protected isExplicitlyCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v0, 0x1

    .line 180
    const-string v1, "Expires"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "max-age"

    aput-object v3, v1, v2

    const-string v2, "s-maxage"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "must-revalidate"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "proxy-revalidate"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "public"

    aput-object v2, v1, v0

    .line 185
    invoke-virtual {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isExplicitlyNonCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 10
    .parameter "response"

    .prologue
    const/4 v0, 0x0

    .line 152
    const-string v1, "Cache-Control"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    .line 153
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 154
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_3

    aget-object v7, v5, v1

    .line 155
    const-string v8, "no-store"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "no-cache"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v8, :cond_2

    const-string v8, "private"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 158
    :cond_0
    const/4 v0, 0x1

    .line 162
    :cond_1
    return v0

    .line 154
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public isResponseCacheable(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 4
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response was not cacheable."

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "no-store"

    aput-object v2, v1, v0

    .line 203
    invoke-virtual {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    :cond_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response was not cacheable."

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v1, :cond_4

    .line 218
    const-string v1, "Authorization"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    .line 220
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "s-maxage"

    aput-object v2, v1, v0

    const-string v0, "must-revalidate"

    aput-object v0, v1, v3

    const/4 v0, 0x2

    const-string v2, "public"

    aput-object v2, v1, v0

    .line 223
    invoke-virtual {p0, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 227
    :cond_4
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    goto :goto_0
.end method

.method public isResponseCacheable(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 10
    .parameter "httpMethod"
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    .line 81
    const-string v2, "GET"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response was not cacheable."

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 105
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response was not cacheable (Unknown Status code)"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :sswitch_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Response was cacheable"

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 109
    const-string v2, "Content-Length"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 112
    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:I

    if-gt v2, v3, :cond_0

    .line 116
    :cond_2
    const-string v2, "Age"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 118
    array-length v2, v2

    if-gt v2, v1, :cond_0

    .line 121
    const-string v2, "Expires"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 123
    array-length v2, v2

    if-gt v2, v1, :cond_0

    .line 126
    const-string v2, "Date"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 128
    array-length v3, v2

    if-ne v3, v1, :cond_0

    .line 132
    const/4 v3, 0x0

    :try_start_0
    aget-object v2, v2, v3

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const-string v2, "Vary"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    array-length v5, v4

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v4, v3

    .line 138
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v6

    array-length v7, v6

    move v2, v0

    :goto_2
    if-ge v2, v7, :cond_3

    aget-object v8, v6, v2

    .line 139
    const-string v9, "*"

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 99
    :sswitch_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Response was not cacheable (Partial Content)"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcb -> :sswitch_0
        0xce -> :sswitch_1
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x19a -> :sswitch_0
    .end sparse-switch
.end method
