.class public Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AC3TrackImpl.java"


# instance fields
.field acmod:I

.field bitRateAndFrameSizeTable:[[[[I

.field bitrate:I

.field bsid:I

.field bsmod:I

.field channelCount:I

.field frameSize:I

.field frmsizecod:I

.field fscod:I

.field private inputStream:Ljava/io/InputStream;

.field private lang:Ljava/lang/String;

.field lfeon:I

.field readSamples:Z

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field samplerate:I

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field stts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "fin"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 18
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    .line 39
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->parse(Ljava/io/InputStream;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "fin"
    .parameter "lang"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 18
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    .line 39
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->parse(Ljava/io/InputStream;)V

    .line 44
    return-void
.end method

.method private calcBitrateAndFrameSize(I)Z
    .locals 6
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 244
    ushr-int/lit8 v2, p1, 0x1

    .line 245
    and-int/lit8 v3, p1, 0x1

    .line 246
    const/16 v4, 0x12

    if-gt v2, v4, :cond_0

    if-gt v3, v0, :cond_0

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    :cond_0
    move v0, v1

    .line 251
    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    aget-object v4, v4, v5

    aget v1, v4, v1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitrate:I

    .line 250
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    goto :goto_0
.end method

.method private initBitRateAndFrameSizeTable()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 281
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 282
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v3

    .line 283
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v3

    .line 284
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 285
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 286
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v3

    .line 287
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v3

    .line 288
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 289
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 290
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 291
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 292
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 293
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 294
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v3

    .line 295
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v3

    .line 296
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 297
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 298
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v3

    .line 299
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v3

    .line 300
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 301
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 302
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v3

    .line 303
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v3

    .line 304
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 305
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 306
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 307
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 308
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 309
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 310
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v3

    .line 311
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v3

    .line 312
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 313
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 314
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v3

    .line 315
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v3

    .line 316
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 317
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 318
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v3

    .line 319
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v3

    .line 320
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 321
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 322
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 323
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 324
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 325
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 326
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v3

    .line 327
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v3

    .line 328
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 329
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 330
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v3

    .line 331
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v3

    .line 332
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 333
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 334
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v3

    .line 335
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v3

    .line 336
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 337
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 338
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 339
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 340
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 341
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 342
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x380

    aput v1, v0, v3

    .line 343
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x380

    aput v1, v0, v3

    .line 344
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 345
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 346
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x400

    aput v1, v0, v3

    .line 347
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x400

    aput v1, v0, v3

    .line 348
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 349
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 350
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 351
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 352
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 353
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 354
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x500

    aput v1, v0, v3

    .line 355
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x500

    aput v1, v0, v3

    .line 358
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 359
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 360
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x45

    aput v1, v0, v3

    .line 361
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x46

    aput v1, v0, v3

    .line 362
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 363
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 364
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x57

    aput v1, v0, v3

    .line 365
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x58

    aput v1, v0, v3

    .line 366
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 367
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 368
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x68

    aput v1, v0, v3

    .line 369
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x69

    aput v1, v0, v3

    .line 370
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 371
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 372
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x79

    aput v1, v0, v3

    .line 373
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x7a

    aput v1, v0, v3

    .line 374
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 375
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 376
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x8b

    aput v1, v0, v3

    .line 377
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x8c

    aput v1, v0, v3

    .line 378
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 379
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 380
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xae

    aput v1, v0, v3

    .line 381
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xaf

    aput v1, v0, v3

    .line 382
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 383
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 384
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xd0

    aput v1, v0, v3

    .line 385
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xd1

    aput v1, v0, v3

    .line 386
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 387
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 388
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xf3

    aput v1, v0, v3

    .line 389
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xf4

    aput v1, v0, v3

    .line 390
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 391
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 392
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x116

    aput v1, v0, v3

    .line 393
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x117

    aput v1, v0, v3

    .line 394
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 395
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 396
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x15c

    aput v1, v0, v3

    .line 397
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x15d

    aput v1, v0, v3

    .line 398
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 399
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 400
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1a1

    aput v1, v0, v3

    .line 401
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1a2

    aput v1, v0, v3

    .line 402
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 403
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 404
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1e7

    aput v1, v0, v3

    .line 405
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1e8

    aput v1, v0, v3

    .line 406
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 407
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 408
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x22d

    aput v1, v0, v3

    .line 409
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x22e

    aput v1, v0, v3

    .line 410
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 411
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 412
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x2b8

    aput v1, v0, v3

    .line 413
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x2b9

    aput v1, v0, v3

    .line 414
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 415
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 416
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x343

    aput v1, v0, v3

    .line 417
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x344

    aput v1, v0, v3

    .line 418
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 419
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 420
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x3cf

    aput v1, v0, v3

    .line 421
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x3cf

    aput v1, v0, v3

    .line 422
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 423
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 424
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x45a

    aput v1, v0, v3

    .line 425
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x45b

    aput v1, v0, v3

    .line 426
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 427
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 428
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x4e5

    aput v1, v0, v3

    .line 429
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x4e6

    aput v1, v0, v3

    .line 430
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 431
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 432
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x571

    aput v1, v0, v3

    .line 433
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x572

    aput v1, v0, v3

    .line 436
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 437
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 438
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 439
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 440
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 441
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 442
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x78

    aput v1, v0, v3

    .line 443
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x78

    aput v1, v0, v3

    .line 444
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 445
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 446
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x90

    aput v1, v0, v3

    .line 447
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x90

    aput v1, v0, v3

    .line 448
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 449
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 450
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xa8

    aput v1, v0, v3

    .line 451
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xa8

    aput v1, v0, v3

    .line 452
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 453
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 454
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 455
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 456
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 457
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 458
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xf0

    aput v1, v0, v3

    .line 459
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xf0

    aput v1, v0, v3

    .line 460
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 461
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 462
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x120

    aput v1, v0, v3

    .line 463
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x120

    aput v1, v0, v3

    .line 464
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 465
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 466
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x150

    aput v1, v0, v3

    .line 467
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x150

    aput v1, v0, v3

    .line 468
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 469
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 470
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 471
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 472
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 473
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 474
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x1e0

    aput v1, v0, v3

    .line 475
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x1e0

    aput v1, v0, v3

    .line 476
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 477
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 478
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v3

    .line 479
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v3

    .line 480
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 481
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 482
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x2a0

    aput v1, v0, v3

    .line 483
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x2a0

    aput v1, v0, v3

    .line 484
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 485
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 486
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 487
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 488
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 489
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 490
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x3c0

    aput v1, v0, v3

    .line 491
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x3c0

    aput v1, v0, v3

    .line 492
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 493
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 494
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 495
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 496
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 497
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 498
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x540

    aput v1, v0, v3

    .line 499
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x540

    aput v1, v0, v3

    .line 500
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 501
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 502
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x600

    aput v1, v0, v3

    .line 503
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x600

    aput v1, v0, v3

    .line 504
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 505
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 506
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x6c0

    aput v1, v0, v3

    .line 507
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x6c0

    aput v1, v0, v3

    .line 508
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 509
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 510
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x780

    aput v1, v0, v3

    .line 511
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x780

    aput v1, v0, v3

    .line 512
    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 3
    .parameter "fin"

    .prologue
    const/4 v2, 0x2

    .line 51
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    .line 52
    const/16 v0, 0x13

    const/4 v1, 0x3

    filled-new-array {v0, v2, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[I

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    .line 54
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->initBitRateAndFrameSizeTable()V

    .line 55
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readVariables()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 60
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v1, "ac-3"

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 62
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 64
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 66
    new-instance v1, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;-><init>()V

    .line 67
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setAcmod(I)V

    .line 68
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frmsizecod:I

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBitRateCode(I)V

    .line 69
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsid(I)V

    .line 70
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsmod:I

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsmod(I)V

    .line 71
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setFscod(I)V

    .line 72
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lfeon:I

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setLfeon(I)V

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setReserved(I)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 76
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 78
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 79
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 80
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    .line 84
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 87
    :cond_1
    return-void
.end method

.method private readSamples()Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x1

    .line 255
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return v1

    .line 258
    :cond_0
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples:Z

    .line 259
    new-array v2, v8, [B

    .line 260
    const/4 v0, 0x0

    .line 261
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v8}, Ljava/io/InputStream;->mark(I)V

    .line 262
    :goto_1
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 264
    const/4 v0, 0x4

    aget-byte v0, v2, v0

    and-int/lit8 v0, v0, 0x3f

    .line 265
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->calcBitrateAndFrameSize(I)Z

    .line 266
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 267
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    new-array v0, v0, [B

    .line 268
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 269
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x600

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->mark(I)V

    move v0, v1

    .line 272
    goto :goto_1

    :cond_1
    move v1, v0

    .line 273
    goto :goto_0
.end method

.method private readVariables()Z
    .locals 7

    .prologue
    const/16 v4, 0x64

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 132
    new-array v2, v4, [B

    .line 133
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 134
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v4, v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 138
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 139
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v3, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 140
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    .line 141
    const/16 v4, 0xb77

    if-ne v2, v4, :cond_0

    .line 144
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 145
    invoke-virtual {v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    .line 147
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->fscod:I

    packed-switch v2, :pswitch_data_0

    .line 165
    :goto_1
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    if-eqz v2, :cond_0

    .line 169
    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frmsizecod:I

    .line 171
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frmsizecod:I

    invoke-direct {p0, v2}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->calcBitrateAndFrameSize(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->frameSize:I

    if-eqz v2, :cond_0

    .line 178
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    .line 179
    invoke-virtual {v3, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsmod:I

    .line 180
    invoke-virtual {v3, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    .line 182
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_7

    .line 183
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    .line 188
    :cond_2
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_3

    .line 189
    invoke-virtual {v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 192
    :cond_3
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 196
    :cond_4
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    if-ne v0, v5, :cond_5

    .line 197
    invoke-virtual {v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 200
    :cond_5
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->acmod:I

    packed-switch v0, :pswitch_data_1

    .line 235
    :goto_2
    invoke-virtual {v3, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lfeon:I

    .line 237
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->lfeon:I

    if-ne v0, v1, :cond_6

    .line 238
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    :cond_6
    move v0, v1

    .line 240
    goto/16 :goto_0

    .line 149
    :pswitch_0
    const v2, 0xbb80

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_1

    .line 153
    :pswitch_1
    const v2, 0xac44

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_1

    .line 157
    :pswitch_2
    const/16 v2, 0x7d00

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_1

    .line 161
    :pswitch_3
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samplerate:I

    goto :goto_1

    .line 184
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bsid:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    goto/16 :goto_0

    .line 202
    :pswitch_4
    iput v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 206
    :pswitch_5
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 210
    :pswitch_6
    iput v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 214
    :pswitch_7
    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 218
    :pswitch_8
    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 222
    :pswitch_9
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 226
    :pswitch_a
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 230
    :pswitch_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->channelCount:I

    goto :goto_2

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
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
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 1
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
    .line 100
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "soun"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

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
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
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
    .line 92
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
