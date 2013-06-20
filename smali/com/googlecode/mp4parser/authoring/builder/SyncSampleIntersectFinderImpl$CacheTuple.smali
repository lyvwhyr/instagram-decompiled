.class public Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;
.super Ljava/lang/Object;
.source "SyncSampleIntersectFinderImpl.java"


# instance fields
.field movie:Lcom/googlecode/mp4parser/authoring/Movie;

.field track:Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 0
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    .line 311
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    .line 312
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    if-ne p0, p1, :cond_1

    .line 324
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 317
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 319
    :cond_3
    check-cast p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;

    .line 321
    .end local p1
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    iget-object v3, p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    if-nez v2, :cond_4

    .line 322
    :cond_6
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    iget-object v3, p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->track:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 330
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 331
    return v0

    :cond_1
    move v0, v1

    .line 329
    goto :goto_0
.end method
