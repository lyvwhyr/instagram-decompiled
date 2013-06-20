.class public Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;
.super Ljava/lang/Object;
.source "CachingHttpClient.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpClient;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final CACHE_RESPONSE_STATUS:Ljava/lang/String; = "http.cache.response.status"

.field private static final SUPPORTS_RANGE_AND_CONTENT_RANGE_HEADERS:Z


# instance fields
.field private final asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

.field private final backend:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private final cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;

.field private final conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:I

.field private final requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;

.field private final responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

.field private final responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;

.field private final responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;

.field private final responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

.field private final sharedCache:Z

.field private final suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

.field private final validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>()V

    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 204
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 2
    .parameter "client"
    .parameter "storage"
    .parameter "config"

    .prologue
    .line 254
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;-><init>()V

    invoke-direct {v0, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 1
    .parameter "client"
    .parameter "resourceFactory"
    .parameter "storage"
    .parameter "config"

    .prologue
    .line 237
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    invoke-direct {v0, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 1
    .parameter "client"
    .parameter "config"

    .prologue
    .line 217
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 220
    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;)V
    .locals 2
    .parameter "backend"
    .parameter "validityPolicy"
    .parameter "responseCachingPolicy"
    .parameter "responseCache"
    .parameter "responseGenerator"
    .parameter "cacheableRequestPolicy"
    .parameter "suitabilityChecker"
    .parameter "conditionalRequestBuilder"
    .parameter "responseCompliance"
    .parameter "requestCompliance"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 270
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V

    .line 271
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxObjectSizeBytes()I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:I

    .line 272
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v1

    iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z

    .line 273
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 274
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    .line 275
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;

    .line 276
    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    .line 277
    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    .line 278
    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;

    .line 279
    iput-object p7, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 280
    iput-object p8, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    .line 281
    iput-object p9, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;

    .line 282
    iput-object p10, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;

    .line 283
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->makeAsynchronousValidator(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    .line 284
    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 3
    .parameter "client"
    .parameter "cache"
    .parameter "config"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpClient may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpCache may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    if-nez p3, :cond_2

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CacheConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxObjectSizeBytes()I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:I

    .line 158
    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z

    .line 159
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 160
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    .line 161
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    .line 162
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:I

    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;-><init>(IZ)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;

    .line 163
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    .line 164
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;

    .line 165
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0, v1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 166
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    .line 168
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;

    .line 169
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;

    .line 171
    invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->makeAsynchronousValidator(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    .line 172
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 192
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 195
    return-void
.end method

.method private alreadyHaveNewerCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .locals 3
    .parameter "target"
    .parameter "request"
    .parameter "backendResponse"

    .prologue
    const/4 v0, 0x0

    .line 871
    const/4 v1, 0x0

    .line 873
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-interface {v2, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->getCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 877
    :goto_0
    if-nez v1, :cond_1

    .line 888
    :cond_0
    :goto_1
    return v0

    .line 878
    :cond_1
    const-string v2, "Date"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 879
    if-eqz v1, :cond_0

    .line 880
    const-string v2, "Date"

    invoke-interface {p3, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    .line 881
    if-eqz v2, :cond_0

    .line 883
    :try_start_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 884
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 885
    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 886
    :catch_0
    move-exception v1

    goto :goto_1

    .line 874
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private explicitFreshnessRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 11
    .parameter "request"
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 583
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    .line 584
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 585
    const-string v7, "max-stale"

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 587
    :try_start_0
    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 588
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v7, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v7

    .line 589
    iget-object v9, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v9, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 590
    sub-long/2addr v7, v9

    int-to-long v9, v6

    cmp-long v6, v7, v9

    if-lez v6, :cond_2

    const/4 v0, 0x1

    .line 600
    :goto_2
    return v0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    const/4 v0, 0x1

    goto :goto_2

    .line 594
    :cond_0
    const-string v7, "min-fresh"

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "max-age"

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 596
    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 584
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 600
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private flushEntriesInvalidatedByRequest(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 3
    .parameter "target"
    .parameter "request"

    .prologue
    .line 519
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Unable to flush invalidated entries from cache"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private generateCachedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 5
    .parameter "request"
    .parameter "context"
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 528
    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 534
    :goto_0
    sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_HIT:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;

    invoke-direct {p0, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V

    .line 535
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v1, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 536
    const-string v1, "Warning"

    const-string v2, "110 localhost \"Response is stale\""

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_1
    return-object v0

    .line 532
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private generateGatewayTimeout(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 4
    .parameter "context"

    .prologue
    .line 551
    sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V

    .line 552
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v2, 0x1f8

    const-string v3, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method private generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 604
    const-string v0, "ch.boye.httpclientandroidlib.client"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    .line 607
    const-string v2, "http"

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    const-string v2, "%d.%d localhost (Apache-HttpClient/%s (cache))"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_1
    return-object v0

    .line 605
    :cond_0
    const-string v0, "UNAVAILABLE"

    goto :goto_0

    .line 611
    :cond_1
    const-string v2, "%s/%d.%d localhost (Apache-HttpClient/%s (cache))"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getExistingCacheVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
    .locals 4
    .parameter "target"
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
    .line 486
    const/4 v0, 0x0

    .line 488
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->getVariantCacheEntriesWithEtags(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Unable to retrieve variant entries from cache"

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFatallyNoncompliantResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "request"
    .parameter "context"

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestIsFatallyNonCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 477
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;

    .line 478
    sget-object v2, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;

    invoke-direct {p0, p2, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V

    .line 479
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->getErrorForRequest(Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_0
    return-object v0
.end method

.method private getUpdatedVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 8
    .parameter "target"
    .parameter "conditionalRequest"
    .parameter "requestDate"
    .parameter "responseDate"
    .parameter "backendResponse"
    .parameter "matchingVariant"
    .parameter "matchedEntry"

    .prologue
    .line 757
    .line 759
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-virtual {p6}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v7}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->updateVariantCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p7

    .line 764
    .end local p7
    :goto_0
    return-object p7

    .line 761
    .restart local p7
    :catch_0
    move-exception v0

    .line 762
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Could not update cache entry"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 6
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 406
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v5

    .line 407
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, p1, p2, p4, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->canCachedResponseBeUsed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0, p2, p3, p4, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateCachedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 411
    :cond_0
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->mayCallBackend(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateGatewayTimeout(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isRevalidatable(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 416
    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 4
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 448
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->mayCallBackend(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v2, 0x1f8

    const-string v3, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    .line 459
    :goto_0
    return-object v0

    .line 453
    :cond_0
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getExistingCacheVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 456
    invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->negotiateResponseFromVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private handleRevalidationFailure(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "request"
    .parameter "context"
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 543
    invoke-direct {p0, p1, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateGatewayTimeout(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 546
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->unvalidatedCacheHit(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private makeAsynchronousValidator(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
    .locals 1
    .parameter "config"

    .prologue
    .line 288
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    invoke-direct {v0, p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mayCallBackend(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 9
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 572
    const-string v1, "Cache-Control"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 573
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_1

    aget-object v7, v5, v1

    .line 574
    const-string v8, "only-if-cached"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 579
    :goto_2
    return v0

    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 572
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 579
    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private recordCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 4
    .parameter "target"
    .parameter "request"

    .prologue
    .line 504
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 505
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache hit [host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 509
    :cond_0
    return-void
.end method

.method private recordCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 4
    .parameter "target"
    .parameter "request"

    .prologue
    .line 496
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 497
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache miss [host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 501
    :cond_0
    return-void
.end method

.method private recordCacheUpdate(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 512
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 513
    sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->VALIDATED:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V

    .line 514
    return-void
.end method

.method private retryRequestUnconditionally(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .parameter "matchedEntry"

    .prologue
    .line 748
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    invoke-virtual {v0, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    .line 750
    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 424
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Revalidating the cache entry"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 427
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleWhileRevalidating(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0, p2, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateCachedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    .line 438
    :goto_0
    return-object v0

    .line 436
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    invoke-direct {p0, p2, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleRevalidationFailure(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 439
    :catch_1
    move-exception v0

    .line 440
    new-instance v1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private revalidationResponseIsTooOld(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 2
    .parameter "backendResponse"
    .parameter "cacheEntry"

    .prologue
    .line 677
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 678
    const-string v1, "Date"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 679
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 681
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 682
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 683
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 691
    :goto_0
    return v0

    .line 684
    :catch_0
    move-exception v0

    .line 691
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private satisfyFromCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 4
    .parameter "target"
    .parameter "request"

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 465
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->getCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 466
    :catch_0
    move-exception v1

    .line 467
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Unable to retrieve entries from cache"

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 617
    if-eqz p1, :cond_0

    .line 618
    const-string v0, "http.cache.response.status"

    invoke-interface {p1, v0, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    :cond_0
    return-void
.end method

.method private shouldSendNotModifiedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .locals 2
    .parameter "request"
    .parameter "responseEntry"

    .prologue
    .line 778
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private staleIfErrorAppliesTo(I)Z
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 832
    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 1
    .parameter "request"
    .parameter "entry"
    .parameter "now"

    .prologue
    .line 566
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->isSharedCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->explicitFreshnessRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryToUpdateVariantMap(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
    .locals 3
    .parameter "target"
    .parameter "request"
    .parameter "matchingVariant"

    .prologue
    .line 770
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->reuseVariantEntryFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Could not update cache entry to reuse variant"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unvalidatedCacheHit(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "context"
    .parameter "entry"

    .prologue
    .line 558
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 559
    sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_HIT:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V

    .line 560
    const-string v1, "Warning"

    const-string v2, "111 localhost \"Revalidation failed\""

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-object v0
.end method


# virtual methods
.method callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 6
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 665
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    .line 667
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Calling the backend"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v5

    .line 669
    const-string v0, "Via"

    invoke-direct {p0, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method clientRequestsOurOptions(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 4
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 648
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    .line 650
    const-string v2, "OPTIONS"

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    const-string v2, "*"

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    const-string v1, "0"

    const-string v2, "Max-Forwards"

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "target"
    .parameter "request"

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 371
    sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MISS:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V

    .line 373
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->clientRequestsOurOptions(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V

    .line 377
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;-><init>()V

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    invoke-direct {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getFatallyNoncompliantResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 382
    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->makeRequestCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p2

    .line 385
    const-string v0, "Via"

    invoke-interface {p2, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->flushEntriesInvalidatedByRequest(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 389
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;

    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->isServableFromCache(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_2
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->satisfyFromCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 394
    if-nez v0, :cond_3

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter "request"

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 4
    .parameter "request"
    .parameter "context"

    .prologue
    .line 343
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 344
    new-instance v1, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    invoke-virtual {p0, v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 328
    .local p3, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 333
    .local p3, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    invoke-virtual {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 334
    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 355
    .local p2, responseHandler:Lch/boye/httpclientandroidlib/client/ResponseHandler;,"Lch/boye/httpclientandroidlib/client/ResponseHandler<+TT;>;"
    invoke-virtual {p0, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 356
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCacheHits()J
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheMisses()J
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheUpdates()J
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 644
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 7
    .parameter "target"
    .parameter "request"
    .parameter "requestDate"
    .parameter "responseDate"
    .parameter "backendResponse"

    .prologue
    .line 845
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Handling Backend response"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 846
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;

    invoke-virtual {v0, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensureProtocolCompliance(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 848
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;

    invoke-virtual {v0, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v6

    .line 849
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-interface {v0, p1, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 850
    if-eqz v6, :cond_1

    invoke-direct {p0, p1, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->alreadyHaveNewerCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->cacheAndReturnResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p5

    .line 866
    .end local p5
    :cond_0
    :goto_0
    return-object p5

    .line 855
    .restart local p5
    :catch_0
    move-exception v0

    .line 856
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Unable to store entries in cache"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 859
    :cond_1
    if-nez v6, :cond_0

    .line 861
    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->flushCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 862
    :catch_1
    move-exception v0

    .line 863
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Unable to flush invalid cache entries"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isSharedCache()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z

    return v0
.end method

.method negotiateResponseFromVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 8
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;)",
            "Lch/boye/httpclientandroidlib/HttpResponse;"
        }
    .end annotation

    .prologue
    .line 697
    .local p4, variants:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;>;"
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    invoke-virtual {v0, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequestFromVariants(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v2

    .line 699
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    .line 700
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0, p1, v2, p3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v5

    .line 701
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    .line 703
    const-string v0, "Via"

    invoke-direct {p0, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-interface {v5}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 706
    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 742
    :cond_0
    :goto_0
    return-object v0

    .line 709
    :cond_1
    const-string v0, "ETag"

    invoke-interface {v5, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 710
    if-nez v0, :cond_2

    .line 711
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "304 response did not contain ETag"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    .line 712
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_2
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;

    .line 717
    if-nez v6, :cond_3

    .line 718
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "304 response did not contain ETag matching one sent in If-None-Match"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 719
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 722
    :cond_3
    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getEntry()Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v7

    .line 724
    invoke-direct {p0, v5, v7}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidationResponseIsTooOld(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 725
    invoke-direct {p0, p1, p2, p3, v7}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->retryRequestUnconditionally(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_4
    invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheUpdate(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    move-object v0, p0

    move-object v1, p1

    .line 731
    invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getUpdatedVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v1

    .line 735
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 736
    invoke-direct {p0, p1, p2, v6}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->tryToUpdateVariantMap(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V

    .line 738
    invoke-direct {p0, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->shouldSendNotModifiedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 15
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .parameter "cacheEntry"

    .prologue
    .line 788
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v11

    .line 790
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v7

    .line 791
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v2, v0, v11, v1}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v6

    .line 792
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v8

    .line 794
    move-object/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidationResponseIsTooOld(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v2

    .line 797
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v7

    .line 798
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v2, v1}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v6

    .line 799
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v8

    .line 802
    :cond_0
    const-string v2, "Via"

    invoke-direct {p0, v6}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-interface {v6}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    .line 805
    const/16 v3, 0x130

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 806
    :cond_1
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheUpdate(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 809
    :cond_2
    const/16 v3, 0x130

    if-ne v2, v3, :cond_4

    .line 810
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-interface/range {v2 .. v8}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->updateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v2

    .line 812
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2, v4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 814
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v3, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    .line 827
    :goto_0
    return-object v2

    .line 816
    :cond_3
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v3, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    goto :goto_0

    .line 819
    :cond_4
    invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleIfErrorAppliesTo(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1, v8}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 822
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    .line 823
    const-string v3, "Warning"

    const-string v4, "110 localhost \"Response is stale\""

    invoke-interface {v2, v3, v4}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v9, p0

    move-object/from16 v10, p1

    move-object v12, v7

    move-object v13, v8

    move-object v14, v6

    .line 827
    invoke-virtual/range {v9 .. v14}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public supportsRangeAndContentRangeHeaders()Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method
