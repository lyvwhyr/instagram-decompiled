.class public Landroid/support/v4/c/c;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NO_LIMIT:I = 0x7fffffff


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final maxEntries:I

.field private maxSize:I

.field private final minTrimCount:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 62
    const v0, 0x7fffffff

    invoke-direct {p0, v0, p1}, Landroid/support/v4/c/c;-><init>(II)V

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/c/c;-><init>(III)V

    .line 72
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-gtz p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-gtz p2, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxEntries <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput p3, p0, Landroid/support/v4/c/c;->minTrimCount:I

    .line 91
    iput p1, p0, Landroid/support/v4/c/c;->maxSize:I

    .line 92
    iput p2, p0, Landroid/support/v4/c/c;->maxEntries:I

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    .line 94
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/c/c;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 323
    if-gez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    return v0
.end method

.method private trimToCount(I)V
    .locals 5
    .parameter "maxCount"

    .prologue
    .line 224
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 226
    monitor-exit p0

    .line 252
    :goto_0
    return-void

    .line 228
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    const/4 v0, 0x0

    move v1, v0

    .line 234
    :goto_1
    monitor-enter p0

    .line 235
    :try_start_1
    iget v0, p0, Landroid/support/v4/c/c;->minTrimCount:I

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    invoke-virtual {p0, v1}, Landroid/support/v4/c/c;->onEvictions(I)V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 239
    :cond_3
    :try_start_3
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 242
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    invoke-direct {p0, v2, v3}, Landroid/support/v4/c/c;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/support/v4/c/c;->size:I

    .line 244
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    invoke-virtual {p0, v0}, Landroid/support/v4/c/c;->onSizeChanged(I)V

    .line 245
    iget v0, p0, Landroid/support/v4/c/c;->evictionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->evictionCount:I

    .line 246
    add-int/lit8 v0, v1, 0x1

    .line 247
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/v4/c/c;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v0

    .line 250
    goto :goto_1

    .line 247
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private trimToSize(I)V
    .locals 5
    .parameter "maxSize"

    .prologue
    .line 188
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    monitor-enter p0

    .line 189
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    if-gt v0, p1, :cond_0

    .line 190
    monitor-exit p0

    .line 221
    :goto_0
    return-void

    .line 192
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    const/4 v0, 0x0

    move v1, v0

    .line 198
    :goto_1
    monitor-enter p0

    .line 199
    :try_start_1
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/c/c;->size:I

    if-eqz v0, :cond_2

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 192
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 204
    :cond_2
    :try_start_3
    iget v0, p0, Landroid/support/v4/c/c;->minTrimCount:I

    if-lt v1, v0, :cond_3

    iget v0, p0, Landroid/support/v4/c/c;->size:I

    if-le v0, p1, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    invoke-virtual {p0, v1}, Landroid/support/v4/c/c;->onEvictions(I)V

    goto :goto_0

    .line 208
    :cond_5
    :try_start_4
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 211
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    invoke-direct {p0, v2, v3}, Landroid/support/v4/c/c;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/support/v4/c/c;->size:I

    .line 213
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    invoke-virtual {p0, v0}, Landroid/support/v4/c/c;->onSizeChanged(I)V

    .line 214
    iget v0, p0, Landroid/support/v4/c/c;->evictionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->evictionCount:I

    .line 215
    add-int/lit8 v0, v1, 0x1

    .line 216
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/v4/c/c;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v0

    .line 219
    goto/16 :goto_1
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized entries()I
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "evicted"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/c/c;->trimToSize(I)V

    .line 351
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    iget v1, p0, Landroid/support/v4/c/c;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/c/c;->hitCount:I

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v4/c/c;->onHits(I)V

    .line 113
    monitor-exit p0

    .line 149
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget v0, p0, Landroid/support/v4/c/c;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->missCount:I

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/c/c;->onMisses(I)V

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {p0, p1}, Landroid/support/v4/c/c;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    if-nez v1, :cond_2

    .line 128
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 131
    :cond_2
    monitor-enter p0

    .line 132
    :try_start_2
    iget v0, p0, Landroid/support/v4/c/c;->createCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->createCount:I

    .line 133
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_3

    .line 137
    iget-object v2, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    if-eqz v0, :cond_4

    .line 145
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/support/v4/c/c;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_3
    :try_start_3
    iget v2, p0, Landroid/support/v4/c/c;->size:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/c/c;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/c/c;->size:I

    .line 140
    iget v2, p0, Landroid/support/v4/c/c;->size:I

    invoke-virtual {p0, v2}, Landroid/support/v4/c/c;->onSizeChanged(I)V

    goto :goto_1

    .line 142
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 148
    :cond_4
    iget v0, p0, Landroid/support/v4/c/c;->maxSize:I

    invoke-direct {p0, v0}, Landroid/support/v4/c/c;->trimToSize(I)V

    move-object v0, v1

    .line 149
    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxEntries()I
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->maxEntries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onEvictions(I)V
    .locals 0
    .parameter "evictedItemCount"

    .prologue
    .line 343
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    return-void
.end method

.method protected onHits(I)V
    .locals 0
    .parameter "hitsCount"

    .prologue
    .line 341
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    return-void
.end method

.method protected onMisses(I)V
    .locals 0
    .parameter "missesCount"

    .prologue
    .line 342
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    return-void
.end method

.method protected onSizeChanged(I)V
    .locals 0
    .parameter "newSize"

    .prologue
    .line 344
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    monitor-enter p0

    .line 166
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/c;->putCount:I

    .line 167
    iget v0, p0, Landroid/support/v4/c/c;->size:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/c/c;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/c/c;->size:I

    .line 168
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_2

    .line 170
    iget v1, p0, Landroid/support/v4/c/c;->size:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/c/c;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/c/c;->size:I

    .line 172
    :cond_2
    iget v1, p0, Landroid/support/v4/c/c;->size:I

    invoke-virtual {p0, v1}, Landroid/support/v4/c/c;->onSizeChanged(I)V

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v0, :cond_3

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/support/v4/c/c;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    :cond_3
    iget v1, p0, Landroid/support/v4/c/c;->maxSize:I

    iget v2, p0, Landroid/support/v4/c/c;->maxEntries:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/c/c;->trimTo(II)V

    .line 180
    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_1

    .line 273
    iget v1, p0, Landroid/support/v4/c/c;->size:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/c/c;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/c/c;->size:I

    .line 274
    iget v1, p0, Landroid/support/v4/c/c;->size:I

    invoke-virtual {p0, v1}, Landroid/support/v4/c/c;->onSizeChanged(I)V

    .line 276
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    if-eqz v0, :cond_2

    .line 279
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/c/c;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    :cond_2
    return-object v0

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v4/c/c;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/support/v4/c/c;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 427
    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/support/v4/c/c;->hitCount:I

    iget v2, p0, Landroid/support/v4/c/c;->missCount:I

    add-int/2addr v1, v2

    .line 428
    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v4/c/c;->hitCount:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 429
    :cond_0
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v4/c/c;->maxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v4/c/c;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/support/v4/c/c;->missCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected trimTo(II)V
    .locals 0
    .parameter "size"
    .parameter "count"

    .prologue
    .line 255
    .local p0, this:Landroid/support/v4/c/c;,"Landroid/support/v4/c/c<TK;TV;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/c/c;->trimToSize(I)V

    .line 256
    invoke-direct {p0, p2}, Landroid/support/v4/c/c;->trimToCount(I)V

    .line 257
    return-void
.end method
