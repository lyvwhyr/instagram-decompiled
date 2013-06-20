.class Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
.super Ljava/lang/Object;
.source "CachedResponseSuitabilityChecker.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final heuristicCoefficient:F

.field private final heuristicDefaultLifetime:J

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final sharedCache:Z

.field private final useHeuristicCaching:Z

.field private final validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 71
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 2
    .parameter "validityStrategy"
    .parameter "config"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 63
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    .line 64
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    .line 65
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    .line 66
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    .line 67
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    .line 68
    return-void
.end method

.method private etagValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 10
    .parameter "request"
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 269
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    const-string v2, "If-None-Match"

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    .line 272
    if-eqz v4, :cond_5

    .line 273
    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v2, v4, v3

    .line 274
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v6

    array-length v7, v6

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_4

    aget-object v8, v6, v2

    .line 275
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    const-string v9, "*"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 278
    :cond_1
    const/4 v0, 0x1

    .line 283
    :goto_3
    return v0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 273
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 283
    goto :goto_3
.end method

.method private getMaxStale(Lch/boye/httpclientandroidlib/HttpRequest;)J
    .locals 14
    .parameter "request"

    .prologue
    .line 93
    const-wide/16 v1, -0x1

    .line 94
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_6

    aget-object v0, v6, v5

    .line 95
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v4, v0

    move-wide v12, v1

    move-wide v0, v12

    :goto_1
    if-ge v4, v9, :cond_5

    aget-object v2, v8, v4

    .line 96
    const-string v3, "max-stale"

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-wide/16 v10, -0x1

    cmp-long v3, v0, v10

    if-nez v3, :cond_2

    .line 99
    const-wide v0, 0x7fffffffffffffffL

    .line 95
    :cond_1
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 102
    :cond_2
    :try_start_0
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 103
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gez v10, :cond_3

    const-wide/16 v2, 0x0

    .line 104
    :cond_3
    const-wide/16 v10, -0x1

    cmp-long v10, v0, v10

    if-eqz v10, :cond_4

    cmp-long v10, v2, v0

    if-gez v10, :cond_1

    :cond_4
    move-wide v0, v2

    .line 105
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 109
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 94
    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v12, v0

    move-wide v1, v12

    goto :goto_0

    .line 115
    :cond_6
    return-wide v1
.end method

.method private hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 255
    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 259
    const-string v0, "If-Modified-Since"

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasUnsupportedConditionalHeaders(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 249
    const-string v0, "If-Range"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-Match"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-Unmodified-Since"

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z

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

.method private hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z
    .locals 5
    .parameter "request"
    .parameter "headerName"

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 325
    :try_start_0
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/4 v0, 0x1

    .line 331
    :cond_0
    return v0

    .line 327
    :catch_0
    move-exception v4

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isFreshEnough(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;)Z
    .locals 8
    .parameter "entry"
    .parameter "request"
    .parameter "now"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 75
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isResponseFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v6

    .line 76
    :cond_1
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isResponseHeuristicallyFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :cond_2
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->originInsistsOnFreshness(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v6, v7

    goto :goto_0

    .line 80
    :cond_3
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->getMaxStale(Lch/boye/httpclientandroidlib/HttpRequest;)J

    move-result-wide v0

    .line 81
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    move v6, v7

    goto :goto_0

    .line 82
    :cond_4
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    move v0, v6

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method private lastModifiedValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 7
    .parameter "request"
    .parameter "entry"
    .parameter "now"

    .prologue
    const/4 v1, 0x0

    .line 295
    const-string v0, "Last-Modified"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 296
    const/4 v0, 0x0

    .line 298
    if-eqz v2, :cond_0

    .line 299
    :try_start_0
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 305
    :goto_0
    if-nez v2, :cond_1

    move v0, v1

    .line 319
    :goto_1
    return v0

    .line 301
    :catch_0
    move-exception v2

    move-object v2, v0

    goto :goto_0

    .line 309
    :cond_1
    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 311
    :try_start_1
    invoke-interface {v5}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 312
    invoke-virtual {v5, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v0, v1

    .line 313
    goto :goto_1

    .line 315
    :catch_1
    move-exception v5

    .line 309
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 319
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private originInsistsOnFreshness(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    const-string v3, "s-maxage"

    invoke-virtual {v2, p1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 5
    .parameter "request"
    .parameter "entry"
    .parameter "now"

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v3

    .line 232
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v4

    .line 234
    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->etagValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v1

    move v2, v1

    .line 235
    :goto_0
    if-eqz v4, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->lastModifiedValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v1

    .line 237
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v2, :cond_0

    if-nez v1, :cond_3

    .line 245
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v2, v0

    .line 234
    goto :goto_0

    :cond_2
    move v1, v0

    .line 235
    goto :goto_1

    .line 240
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_0

    .line 242
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v1, :cond_0

    .line 245
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public canCachedResponseBeUsed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 15
    .parameter "host"
    .parameter "request"
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 131
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isFreshEnough(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Cache entry was not fresh enough"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 133
    const/4 v3, 0x0

    .line 211
    :goto_0
    return v3

    .line 136
    :cond_0
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->contentLengthHeaderMatchesActualLength(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Cache entry Content-Length and header information do not match"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 138
    const/4 v3, 0x0

    goto :goto_0

    .line 141
    :cond_1
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedConditionalHeaders(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Request contained conditional headers we don\'t handle"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 143
    const/4 v3, 0x0

    goto :goto_0

    .line 146
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 147
    const/4 v3, 0x0

    goto :goto_0

    .line 150
    :cond_3
    const-string v3, "Cache-Control"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_b

    aget-object v3, v5, v4

    .line 151
    invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v7

    array-length v8, v7

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_a

    aget-object v9, v7, v3

    .line 152
    const-string v10, "no-cache"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 153
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Response contained NO CACHE directive, cache was not suitable"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 154
    const/4 v3, 0x0

    goto :goto_0

    .line 157
    :cond_4
    const-string v10, "no-store"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 158
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Response contained NO STORE directive, cache was not suitable"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 159
    const/4 v3, 0x0

    goto :goto_0

    .line 162
    :cond_5
    const-string v10, "max-age"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 164
    :try_start_0
    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 165
    iget-object v11, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v11

    int-to-long v13, v10

    cmp-long v10, v11, v13

    if-lez v10, :cond_6

    .line 166
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Response from cache was NOT suitable due to max age"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 169
    :catch_0
    move-exception v3

    .line 171
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response from cache was malformed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 172
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 176
    :cond_6
    const-string v10, "max-stale"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 178
    :try_start_1
    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 179
    iget-object v11, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v11

    int-to-long v13, v10

    cmp-long v10, v11, v13

    if-lez v10, :cond_7

    .line 180
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Response from cache was not suitable due to Max stale freshness"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 183
    :catch_1
    move-exception v3

    .line 185
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response from cache was malformed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 186
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 190
    :cond_7
    const-string v10, "min-fresh"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 192
    :try_start_2
    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 193
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gez v11, :cond_8

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 194
    :cond_8
    iget-object v11, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v11

    .line 195
    iget-object v13, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v13

    .line 196
    sub-long v11, v13, v11

    cmp-long v9, v11, v9

    if-gez v9, :cond_9

    .line 197
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Response from cache was not suitable due to min fresh freshness requirement"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 201
    :catch_2
    move-exception v3

    .line 203
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response from cache was malformed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 204
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 151
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 150
    :cond_a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_1

    .line 210
    :cond_b
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Response from cache was suitable"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 211
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z

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
