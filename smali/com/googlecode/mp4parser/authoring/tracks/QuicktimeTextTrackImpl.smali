.class public Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "QuicktimeTextTrackImpl.java"


# instance fields
.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field subs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 41
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 51
    new-instance v0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;-><init>()V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->setDataReferenceIndex(I)V

    .line 53
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 56
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 57
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 58
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 61
    return-void
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x1

    const-wide/16 v3, 0x0

    .line 94
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;

    .line 97
    iget-wide v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long v1, v7, v1

    .line 98
    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    .line 99
    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v7, v11, v12, v1, v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    iget-wide v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    iget-wide v9, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long/2addr v7, v9

    invoke-direct {v1, v11, v12, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    move-wide v1, v0

    .line 105
    goto :goto_0

    .line 100
    :cond_1
    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Subtitle display times may not intersect"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    return-object v5
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "text"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;-><init>()V

    .line 157
    new-instance v1, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 158
    new-instance v1, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 159
    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 65
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;

    .line 68
    iget-wide v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long v1, v7, v1

    .line 69
    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    :try_start_0
    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 79
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    move-wide v1, v0

    .line 85
    goto :goto_0

    .line 71
    :cond_1
    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Subtitle display times may not intersect"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v0, Ljava/lang/Error;

    const-string v1, "VM is broken. Does not support UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    return-object v5

    .line 70
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public getSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
