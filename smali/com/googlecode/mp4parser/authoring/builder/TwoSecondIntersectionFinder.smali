.class public Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;
.super Ljava/lang/Object;
.source "TwoSecondIntersectionFinder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 8
    .parameter "track"

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 34
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 36
    :cond_0
    return-wide v1
.end method

.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 14
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v5

    .line 45
    const-wide/16 v0, 0x0

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Track;

    .line 47
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v3

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v7

    div-long/2addr v3, v7

    long-to-double v3, v3

    .line 48
    cmpg-double v0, v1, v3

    if-gez v0, :cond_6

    move-wide v0, v3

    :goto_1
    move-wide v1, v0

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    const-wide/high16 v3, 0x4000

    div-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 54
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 55
    const/4 v0, 0x1

    .line 58
    :cond_1
    new-array v6, v0, [J

    .line 59
    const-wide/16 v0, -0x1

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 60
    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    aput-wide v1, v6, v0

    .line 62
    const-wide/16 v1, 0x0

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v12, v1

    move-wide v2, v12

    move v1, v0

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 65
    const/4 v4, 0x0

    :goto_2
    int-to-long v8, v4

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    .line 66
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v8

    div-long v8, v2, v8

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    long-to-int v5, v8

    add-int/lit8 v8, v5, 0x1

    .line 67
    array-length v5, v6

    if-ge v8, v5, :cond_2

    .line 70
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-long v9, v1

    aput-wide v9, v6, v8

    .line 71
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 65
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto :goto_2

    .line 74
    :cond_3
    add-int/lit8 v0, v1, 0x1

    int-to-long v1, v0

    .line 76
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    .line 77
    aget-wide v3, v6, v0

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_4

    .line 78
    aput-wide v1, v6, v0

    .line 80
    :cond_4
    aget-wide v1, v6, v0

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 82
    :cond_5
    return-object v6

    :cond_6
    move-wide v0, v1

    goto :goto_1
.end method
