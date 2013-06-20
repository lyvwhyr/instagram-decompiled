.class final Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;
.super Ljava/util/LinkedHashMap;
.source "CacheMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b8d9edd67bb1cbfL


# instance fields
.field private final maxEntries:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .parameter "maxEntries"

    .prologue
    .line 41
    const/16 v0, 0x14

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 42
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->maxEntries:I

    .line 43
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;>;"
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->size()I

    move-result v0

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheMap;->maxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
