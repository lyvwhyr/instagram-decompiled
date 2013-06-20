.class Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
.super Ljava/lang/Object;
.source "RequestProtocolCompliance.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final disallowedWithNoCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "min-fresh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "max-stale"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "max-age"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method private add100ContinueHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 10
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    .line 234
    .line 236
    const-string v0, "Expect"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 237
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    .line 238
    const-string v9, "100-continue"

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 244
    :cond_2
    if-nez v0, :cond_3

    .line 245
    const-string v0, "Expect"

    const-string v1, "100-continue"

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_3
    return-void
.end method

.method private addContentTypeHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 186
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method private buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/HeaderElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, outElts:Ljava/util/List;,"Ljava/util/List<Lch/boye/httpclientandroidlib/HeaderElement;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HeaderElement;

    .line 142
    if-nez v1, :cond_0

    .line 143
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrementOPTIONSMaxForwardsIfGreaterThen0(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 158
    const-string v0, "OPTIONS"

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v0, "Max-Forwards"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 167
    const-string v1, "Max-Forwards"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 168
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    const-string v1, "Max-Forwards"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 2
    .parameter "request"
    .parameter "version"

    .prologue
    .line 266
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 272
    return-object v0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    new-instance v1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private remove100ContinueHeaderIfExists(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 13
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    .line 206
    .line 208
    const-string v0, "Expect"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v5

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    array-length v6, v5

    move v3, v2

    move-object v4, v0

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 212
    invoke-interface {v7}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v8

    array-length v9, v8

    move v1, v2

    :goto_1
    if-ge v1, v9, :cond_1

    aget-object v10, v8, v1

    .line 213
    const-string v11, "100-continue"

    invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 214
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_0
    const/4 v0, 0x1

    goto :goto_2

    .line 220
    :cond_1
    if-eqz v0, :cond_2

    .line 221
    invoke-interface {p1, v7}, Lch/boye/httpclientandroidlib/HttpRequest;->removeHeader(Lch/boye/httpclientandroidlib/Header;)V

    .line 222
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HeaderElement;

    .line 223
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v3, "Expect"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_3

    .line 228
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 231
    :cond_3
    return-void
.end method

.method private requestContainsNoCacheDirectiveWithFieldName(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
    .locals 10
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 379
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 380
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 381
    const-string v8, "no-cache"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 383
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    .line 387
    :goto_2
    return-object v0

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 387
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private requestHasWeakETagAndRange(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
    .locals 3
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 329
    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :cond_1
    const-string v1, "Range"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    .line 337
    const-string v1, "If-Range"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_0

    .line 341
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 342
    const-string v2, "W/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    goto :goto_0
.end method

.method private requestHasWeekETagForPUTOrDELETEIfMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
    .locals 3
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 353
    const-string v2, "PUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DELETE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 358
    :cond_1
    const-string v1, "If-Match"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_2

    .line 360
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 361
    const-string v2, "W/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    goto :goto_0

    .line 365
    :cond_2
    const-string v1, "If-None-Match"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_0

    .line 369
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 370
    const-string v2, "W/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    goto :goto_0
.end method

.method private requestMustNotHaveEntity(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 153
    const-string v0, "TRACE"

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripOtherFreshnessDirectivesWithNoCache(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 12
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v1, v5, v3

    .line 124
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_2

    aget-object v9, v7, v1

    .line 125
    sget-object v10, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 126
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    const-string v10, "no-cache"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 129
    const/4 v0, 0x1

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 133
    :cond_3
    if-nez v0, :cond_4

    .line 136
    :goto_2
    return-void

    .line 134
    :cond_4
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 135
    const-string v0, "Cache-Control"

    invoke-direct {p0, v4}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private upgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 2
    .parameter "request"
    .parameter "version"

    .prologue
    .line 253
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 259
    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    new-instance v1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifyOPTIONSRequestWithBodyHasContentType(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 174
    const-string v0, "OPTIONS"

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local p1
    :cond_1
    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    .end local p1
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->addContentTypeHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    goto :goto_0
.end method

.method private verifyRequestWithExpectContinueFlagHas100continueHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 192
    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 194
    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->add100ContinueHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lch/boye/httpclientandroidlib/HttpRequest;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lch/boye/httpclientandroidlib/HttpRequest;)V

    goto :goto_0
.end method


# virtual methods
.method public getErrorForRequest(Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 5
    .parameter "errorCheck"

    .prologue
    const/16 v4, 0x190

    .line 300
    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request was compliant, therefore no error can be generated for it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :pswitch_0
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v3, 0x19b

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 315
    :goto_0
    return-object v0

    .line 306
    :pswitch_1
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const-string v3, "Weak eTag not compatible with byte range"

    invoke-direct {v1, v2, v4, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V

    goto :goto_0

    .line 310
    :pswitch_2
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const-string v3, "Weak eTag not compatible with PUT or DELETE requests"

    invoke-direct {v1, v2, v4, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V

    goto :goto_0

    .line 315
    :pswitch_3
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const-string v3, "No-Cache directive MUST NOT include a field name"

    invoke-direct {v1, v2, v4, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public makeRequestCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 2
    .parameter "request"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestMustNotHaveEntity(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 101
    check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->verifyRequestWithExpectContinueFlagHas100continueHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 105
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->verifyOPTIONSRequestWithBodyHasContentType(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 106
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->decrementOPTIONSMaxForwardsIfGreaterThen0(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 107
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->stripOtherFreshnessDirectivesWithNoCache(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 109
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestVersionIsTooLow(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->upgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p1

    .line 117
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 113
    .restart local p1
    :cond_2
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestMinorVersionIsTooHighMajorVersionsMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->downgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p1

    goto :goto_0
.end method

.method public requestIsFatallyNonCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/List;
    .locals 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestHasWeakETagAndRange(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestHasWeekETagForPUTOrDELETEIfMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestContainsNoCacheDirectiveWithFieldName(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_2
    return-object v0
.end method

.method protected requestMinorVersionIsTooHighMajorVersionsMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 4
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I

    move-result v2

    sget-object v3, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/HttpVersion;->getMajor()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I

    move-result v1

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/HttpVersion;->getMinor()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 282
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected requestVersionIsTooLow(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 289
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
