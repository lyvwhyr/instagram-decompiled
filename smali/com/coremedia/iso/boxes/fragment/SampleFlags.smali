.class public Lcom/coremedia/iso/boxes/fragment/SampleFlags;
.super Ljava/lang/Object;
.source "SampleFlags.java"


# instance fields
.field private reserved:I

.field private sampleDegradationPriority:I

.field private sampleDependsOn:I

.field private sampleHasRedundancy:I

.field private sampleIsDependedOn:I

.field private sampleIsDifferenceSample:Z

.field private samplePaddingValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "bb"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 50
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    .line 51
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    .line 52
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    .line 53
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    .line 54
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    .line 55
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    .line 56
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    .line 57
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    if-ne p0, p1, :cond_1

    .line 193
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 181
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

    .line 183
    :cond_3
    check-cast p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 185
    .end local p1
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 186
    :cond_4
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 187
    :cond_5
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 188
    :cond_6
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 189
    :cond_7
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 190
    :cond_8
    iget-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    iget-boolean v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 191
    :cond_9
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    iget v3, p1, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "os"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x2

    .line 61
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 62
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 63
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    invoke-virtual {v2, v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 64
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    invoke-virtual {v2, v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 65
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    invoke-virtual {v2, v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 66
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 67
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 68
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    const/16 v1, 0x10

    invoke-virtual {v2, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReserved()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    return v0
.end method

.method public getSampleDegradationPriority()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return v0
.end method

.method public getSampleDependsOn()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    return v0
.end method

.method public getSampleHasRedundancy()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    return v0
.end method

.method public getSampleIsDependedOn()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    return v0
.end method

.method public getSamplePaddingValue()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    add-int/2addr v0, v1

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    add-int/2addr v0, v1

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    add-int/2addr v0, v1

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    add-int/2addr v0, v1

    .line 203
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 204
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    add-int/2addr v0, v1

    .line 205
    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSampleIsDifferenceSample()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    return v0
.end method

.method public setReserved(I)V
    .locals 0
    .parameter "reserved"

    .prologue
    .line 76
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    .line 77
    return-void
.end method

.method public setSampleDegradationPriority(I)V
    .locals 0
    .parameter "sampleDegradationPriority"

    .prologue
    .line 163
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    .line 164
    return-void
.end method

.method public setSampleDependsOn(I)V
    .locals 0
    .parameter "sampleDependsOn"

    .prologue
    .line 97
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    .line 98
    return-void
.end method

.method public setSampleHasRedundancy(I)V
    .locals 0
    .parameter "sampleHasRedundancy"

    .prologue
    .line 138
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    .line 139
    return-void
.end method

.method public setSampleIsDependedOn(I)V
    .locals 0
    .parameter "sampleIsDependedOn"

    .prologue
    .line 118
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:I

    .line 119
    return-void
.end method

.method public setSampleIsDifferenceSample(Z)V
    .locals 0
    .parameter "sampleIsDifferenceSample"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    .line 156
    return-void
.end method

.method public setSamplePaddingValue(I)V
    .locals 0
    .parameter "samplePaddingValue"

    .prologue
    .line 146
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SampleFlags{reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleDependsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleHasRedundancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplePaddingValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleIsDifferenceSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleDegradationPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
