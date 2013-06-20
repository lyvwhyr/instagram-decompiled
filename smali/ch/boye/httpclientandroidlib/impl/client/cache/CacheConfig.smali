.class public Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;
.super Ljava/lang/Object;
.source "CacheConfig.java"


# static fields
.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_CORE:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKERS_MAX:I = 0x1

.field public static final DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS:I = 0x3c

.field public static final DEFAULT_HEURISTIC_CACHING_ENABLED:Z = false

.field public static final DEFAULT_HEURISTIC_COEFFICIENT:F = 0.1f

.field public static final DEFAULT_HEURISTIC_LIFETIME:J = 0x0L

.field public static final DEFAULT_MAX_CACHE_ENTRIES:I = 0x3e8

.field public static final DEFAULT_MAX_OBJECT_SIZE_BYTES:I = 0x2000

.field public static final DEFAULT_MAX_UPDATE_RETRIES:I = 0x1

.field public static final DEFAULT_REVALIDATION_QUEUE_SIZE:I = 0x64


# instance fields
.field private asynchronousWorkerIdleLifetimeSecs:I

.field private asynchronousWorkersCore:I

.field private asynchronousWorkersMax:I

.field private heuristicCachingEnabled:Z

.field private heuristicCoefficient:F

.field private heuristicDefaultLifetime:J

.field private isSharedCache:Z

.field private maxCacheEntries:I

.field private maxObjectSizeBytes:I

.field private maxUpdateRetries:I

.field private revalidationQueueSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/16 v0, 0x2000

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxObjectSizeBytes:I

    .line 135
    const/16 v0, 0x3e8

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxCacheEntries:I

    .line 136
    iput v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    .line 138
    const v0, 0x3dcccccd

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    .line 140
    iput-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache:Z

    .line 141
    iput v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    .line 142
    iput v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    .line 143
    const/16 v0, 0x3c

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    .line 144
    const/16 v0, 0x64

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return-void
.end method


# virtual methods
.method public getAsynchronousWorkerIdleLifetimeSecs()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    return v0
.end method

.method public getAsynchronousWorkersCore()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    return v0
.end method

.method public getAsynchronousWorkersMax()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    return v0
.end method

.method public getHeuristicCoefficient()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    return v0
.end method

.method public getHeuristicDefaultLifetime()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    return-wide v0
.end method

.method public getMaxCacheEntries()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxCacheEntries:I

    return v0
.end method

.method public getMaxObjectSizeBytes()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxObjectSizeBytes:I

    return v0
.end method

.method public getMaxUpdateRetries()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    return v0
.end method

.method public getRevalidationQueueSize()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    return v0
.end method

.method public isHeuristicCachingEnabled()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    return v0
.end method

.method public isSharedCache()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache:Z

    return v0
.end method

.method public setAsynchronousWorkerIdleLifetimeSecs(I)V
    .locals 0
    .parameter "secs"

    .prologue
    .line 323
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkerIdleLifetimeSecs:I

    .line 324
    return-void
.end method

.method public setAsynchronousWorkersCore(I)V
    .locals 0
    .parameter "min"

    .prologue
    .line 302
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersCore:I

    .line 303
    return-void
.end method

.method public setAsynchronousWorkersMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 284
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->asynchronousWorkersMax:I

    .line 285
    return-void
.end method

.method public setHeuristicCachingEnabled(Z)V
    .locals 0
    .parameter "heuristicCachingEnabled"

    .prologue
    .line 223
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCachingEnabled:Z

    .line 224
    return-void
.end method

.method public setHeuristicCoefficient(F)V
    .locals 0
    .parameter "heuristicCoefficient"

    .prologue
    .line 242
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicCoefficient:F

    .line 243
    return-void
.end method

.method public setHeuristicDefaultLifetime(J)V
    .locals 0
    .parameter "heuristicDefaultLifetimeSecs"

    .prologue
    .line 265
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->heuristicDefaultLifetime:J

    .line 266
    return-void
.end method

.method public setMaxCacheEntries(I)V
    .locals 0
    .parameter "maxCacheEntries"

    .prologue
    .line 192
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxCacheEntries:I

    .line 193
    return-void
.end method

.method public setMaxObjectSizeBytes(I)V
    .locals 0
    .parameter "maxObjectSizeBytes"

    .prologue
    .line 159
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxObjectSizeBytes:I

    .line 160
    return-void
.end method

.method public setMaxUpdateRetries(I)V
    .locals 0
    .parameter "maxUpdateRetries"

    .prologue
    .line 206
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->maxUpdateRetries:I

    .line 207
    return-void
.end method

.method public setRevalidationQueueSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 337
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->revalidationQueueSize:I

    .line 338
    return-void
.end method

.method public setSharedCache(Z)V
    .locals 0
    .parameter "isSharedCache"

    .prologue
    .line 178
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache:Z

    .line 179
    return-void
.end method
