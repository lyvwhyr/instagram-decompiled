.class Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;


# instance fields
.field private final cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

.field private final cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:I

.field private final resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

.field private final responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

.field private final storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

.field private final uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 3
    .parameter "resourceFactory"
    .parameter "storage"
    .parameter "config"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 64
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    .line 65
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    .line 66
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    .line 67
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxObjectSizeBytes()I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:I

    .line 68
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    .line 69
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    .line 70
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    .line 71
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 74
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;)Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    return-object v0
.end method

.method private addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "variantKey"
    .parameter "variantCacheKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p3, variants:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;>;"
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v0, p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 297
    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_0

    .line 300
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;

    invoke-direct {v2, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public cacheAndReturnResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 6
    .parameter "host"
    .parameter "request"
    .parameter "originResponse"
    .parameter "requestSent"
    .parameter "responseReceived"

    .prologue
    .line 239
    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->getResponseReader(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->readResponse()V

    .line 242
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->isLimitReached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 246
    :cond_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v5

    .line 247
    invoke-virtual {p0, p3, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->isIncompleteResponse(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0, p3, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->generateIncompleteResponseError(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V

    .line 257
    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 258
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method doGetUpdatedParentEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 7
    .parameter "requestId"
    .parameter "existing"
    .parameter "entry"
    .parameter "variantKey"
    .parameter "variantCacheKey"

    .prologue
    .line 192
    .line 193
    if-nez p2, :cond_0

    .line 197
    .end local p3
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v5

    .line 198
    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 199
    invoke-interface {v6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/util/Map;)V

    return-object v0

    .restart local p3
    :cond_0
    move-object p3, p2

    goto :goto_0
.end method

.method public flushCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 2
    .parameter "host"
    .parameter "request"

    .prologue
    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .parameter "host"
    .parameter "request"

    .prologue
    .line 277
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 278
    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .parameter "host"
    .parameter "request"
    .parameter "response"

    .prologue
    .line 88
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 89
    return-void
.end method

.method generateIncompleteResponseError(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 6
    .parameter "response"
    .parameter "resource"

    .prologue
    .line 173
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v3, 0x1f6

    const-string v4, "Bad Gateway"

    invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    .line 176
    const-string v2, "Content-Type"

    const-string v3, "text/plain;charset=UTF-8"

    invoke-interface {v1, v2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "Received incomplete response with Content-Length %d but actual body length %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 181
    const-string v2, "Content-Length"

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v2, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 183
    return-object v1
.end method

.method public getCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 4
    .parameter "host"
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v2, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 268
    if-nez v0, :cond_1

    move-object v0, v1

    .line 272
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v3, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 272
    :cond_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    goto :goto_0
.end method

.method getResponseReader(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;
    .locals 6
    .parameter "request"
    .parameter "backEndResponse"

    .prologue
    .line 262
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:I

    int-to-long v2, v2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;JLch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-object v0
.end method

.method public getVariantCacheEntriesWithEtags(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
    .locals 4
    .parameter "host"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 283
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 290
    :goto_0
    return-object v0

    .line 285
    :cond_1
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    invoke-direct {p0, v1, v0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 290
    goto :goto_0
.end method

.method isIncompleteResponse(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Z
    .locals 6
    .parameter "resp"
    .parameter "resource"

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    .line 156
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xce

    if-eq v1, v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    const-string v1, "Content-Length"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public reuseVariantEntryFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
    .locals 7
    .parameter "target"
    .parameter "req"
    .parameter "variant"

    .prologue
    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getEntry()Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v3

    .line 136
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 139
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v6, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter "entry"

    .prologue
    .line 93
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeNonVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    goto :goto_0
.end method

.method storeNonVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 2
    .parameter "target"
    .parameter "req"
    .parameter "entry"

    .prologue
    .line 102
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0, p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 104
    return-void
.end method

.method storeVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .locals 5
    .parameter "target"
    .parameter "req"
    .parameter "entry"

    .prologue
    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v2, v0, p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 114
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;

    invoke-direct {v2, p0, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not update key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 6
    .parameter "target"
    .parameter "request"
    .parameter "stale"
    .parameter "originResponse"
    .parameter "requestSent"
    .parameter "responseReceived"

    .prologue
    .line 212
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 218
    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 219
    return-object v0
.end method

.method public updateVariantCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 6
    .parameter "target"
    .parameter "request"
    .parameter "stale"
    .parameter "originResponse"
    .parameter "requestSent"
    .parameter "responseReceived"
    .parameter "cacheKey"

    .prologue
    .line 225
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, p7, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 232
    return-object v0
.end method
