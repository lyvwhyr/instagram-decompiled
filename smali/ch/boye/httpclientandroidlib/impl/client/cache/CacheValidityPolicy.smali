.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
.super Ljava/lang/Object;
.source "CacheValidityPolicy.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final MAX_AGE:J = 0x80000000L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private mayReturnStaleIfError([Lch/boye/httpclientandroidlib/Header;J)Z
    .locals 10
    .parameter "headers"
    .parameter "stalenessSecs"

    .prologue
    const/4 v2, 0x0

    .line 152
    .line 153
    array-length v4, p1

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, p1, v3

    .line 154
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    .line 155
    const-string v8, "stale-if-error"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 157
    :try_start_0
    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 158
    int-to-long v7, v7

    cmp-long v7, p2, v7

    if-gtz v7, :cond_1

    .line 159
    const/4 v0, 0x1

    .line 153
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v7

    .line 154
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_2
    return v0
.end method


# virtual methods
.method protected contentLengthHeaderMatchesActualLength(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasContentLengthHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getContentLengthValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAgeValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 12
    .parameter "entry"

    .prologue
    const-wide v2, 0x80000000L

    const-wide/16 v7, 0x0

    .line 232
    .line 233
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v6, v0

    move-wide v4, v7

    :goto_0
    if-ge v6, v10, :cond_2

    aget-object v0, v9, v6

    .line 236
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 237
    cmp-long v11, v0, v7

    if-gez v11, :cond_0

    move-wide v0, v2

    .line 243
    :cond_0
    :goto_1
    cmp-long v11, v0, v4

    if-lez v11, :cond_1

    .line 233
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 241
    goto :goto_1

    :cond_1
    move-wide v0, v4

    .line 243
    goto :goto_2

    .line 245
    :cond_2
    return-wide v4
.end method

.method protected getApparentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 7
    .parameter "entry"

    .prologue
    const-wide/16 v0, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v2

    .line 223
    if-nez v2, :cond_1

    .line 224
    const-wide v0, 0x80000000L

    .line 228
    :cond_0
    :goto_0
    return-wide v0

    .line 225
    :cond_1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v2, v3, v5

    .line 226
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 228
    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    goto :goto_0
.end method

.method protected getContentLengthValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 3
    .parameter "entry"

    .prologue
    const-wide/16 v0, -0x1

    .line 196
    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 197
    if-nez v2, :cond_0

    .line 203
    :goto_0
    return-wide v0

    .line 201
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getCorrectedInitialAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 4
    .parameter "entry"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCorrectedReceivedAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getResponseDelaySecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCorrectedReceivedAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 5
    .parameter "entry"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getApparentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    .line 250
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getAgeValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    .line 251
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 4
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCorrectedInitialAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getResidentTimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCurrentDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 264
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method protected getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 2
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 172
    const-string v1, "Date"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 173
    if-nez v1, :cond_0

    .line 180
    :goto_0
    return-object v0

    .line 176
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getExpirationDate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 2
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 294
    const-string v1, "Expires"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 295
    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-object v0

    .line 298
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 6
    .parameter "entry"

    .prologue
    const-wide/16 v2, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getMaxAge(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    .line 59
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 70
    :goto_0
    return-wide v0

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    move-wide v0, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getExpirationDate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v1

    .line 67
    if-nez v1, :cond_2

    move-wide v0, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 70
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHeuristicFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;FJ)J
    .locals 6
    .parameter "entry"
    .parameter "coefficient"
    .parameter "defaultLifetime"

    .prologue
    const-wide/16 v0, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v2

    .line 98
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getLastModifiedValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v3

    .line 100
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 102
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    move-wide p3, v0

    .line 107
    .end local p3
    :cond_0
    :goto_0
    return-wide p3

    .line 104
    .restart local p3
    :cond_1
    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    long-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-long p3, v0

    goto :goto_0
.end method

.method protected getLastModifiedValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 2
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 184
    const-string v1, "Last-Modified"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 185
    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-object v0

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMaxAge(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 14
    .parameter "entry"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v5, 0x0

    .line 273
    .line 274
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v9

    array-length v10, v9

    move v6, v5

    move-wide v0, v7

    :goto_0
    if-ge v6, v10, :cond_4

    aget-object v2, v9, v6

    .line 275
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v11

    array-length v12, v11

    move v4, v5

    :goto_1
    if-ge v4, v12, :cond_3

    aget-object v2, v11, v4

    .line 276
    const-string v3, "max-age"

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "s-maxage"

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 280
    cmp-long v13, v0, v7

    if-eqz v13, :cond_1

    cmp-long v13, v2, v0

    if-gez v13, :cond_2

    :cond_1
    move-wide v0, v2

    .line 275
    :cond_2
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    .line 285
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 274
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    .line 290
    :cond_4
    return-wide v0
.end method

.method protected getResidentTimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 4
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 268
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 269
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getResponseDelaySecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .locals 4
    .parameter "entry"

    .prologue
    .line 255
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 256
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 5
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 318
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 319
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    .line 320
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x0

    .line 321
    :goto_0
    return-wide v0

    :cond_0
    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z
    .locals 8
    .parameter "entry"
    .parameter "directive"

    .prologue
    const/4 v0, 0x0

    .line 307
    const-string v1, "Cache-Control"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 308
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    .line 309
    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    const/4 v0, 0x1

    .line 314
    :cond_0
    return v0

    .line 308
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method protected hasContentLengthHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 208
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 4
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseHeuristicallyFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z
    .locals 4
    .parameter "entry"
    .parameter "now"
    .parameter "coefficient"
    .parameter "defaultLifetime"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getHeuristicFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;FJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRevalidatable(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 111
    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Last-Modified"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayReturnStaleIfError(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 3
    .parameter "request"
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 144
    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 145
    const-string v2, "Cache-Control"

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lch/boye/httpclientandroidlib/Header;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Cache-Control"

    invoke-virtual {p2, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lch/boye/httpclientandroidlib/Header;J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayReturnStaleWhileRevalidating(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 12
    .parameter "entry"
    .parameter "now"

    .prologue
    const/4 v0, 0x0

    .line 124
    const-string v1, "Cache-Control"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 125
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    .line 126
    const-string v8, "stale-while-revalidate"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    :try_start_0
    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 129
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 139
    :cond_0
    return v0

    .line 132
    :catch_0
    move-exception v7

    .line 125
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public mustRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 116
    const-string v0, "must-revalidate"

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public proxyRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 120
    const-string v0, "proxy-revalidate"

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
