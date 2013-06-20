.class public Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SampleAuxiliaryInformationOffsetsBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "saio"


# instance fields
.field private auxInfoType:J

.field private auxInfoTypeParameter:J

.field private offsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "saio"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 86
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoType:J

    .line 88
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoTypeParameter:J

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    .line 92
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->getVersion()I

    move-result v2

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_2
    return-void
.end method

.method public getAuxInfoType()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoType:J

    return-wide v0
.end method

.method public getAuxInfoTypeParameter()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoTypeParameter:J

    return-wide v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "byteBuffer"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 67
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoType:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 69
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoTypeParameter:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 73
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 74
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->getVersion()I

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method protected getContentSize()J
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    add-int/lit8 v1, v0, 0x8

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    :goto_1
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getOffsets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    return-object v0
.end method

.method public setAuxInfoType(J)V
    .locals 0
    .parameter "auxInfoType"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoType:J

    .line 110
    return-void
.end method

.method public setAuxInfoTypeParameter(J)V
    .locals 0
    .parameter "auxInfoTypeParameter"

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->auxInfoTypeParameter:J

    .line 118
    return-void
.end method

.method public setOffsets(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, offsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SampleAuxiliaryInformationOffsetsBox;->offsets:Ljava/util/List;

    .line 126
    return-void
.end method
