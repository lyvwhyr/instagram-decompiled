.class public Lcom/coremedia/iso/boxes/ClassificationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "ClassificationBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "clsf"


# instance fields
.field private classificationEntity:Ljava/lang/String;

.field private classificationInfo:Ljava/lang/String;

.field private classificationTableIndex:I

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "clsf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ClassificationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 83
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->bytesToFourCC([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I

    .line 86
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public getClassificationEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getClassificationInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getClassificationTableIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    iget v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 94
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeIso639(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;

    return-object v0
.end method

.method public setClassificationEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "classificationEntity"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationEntity:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setClassificationInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "classificationInfo"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationInfo:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setClassificationTableIndex(I)V
    .locals 0
    .parameter "classificationTableIndex"

    .prologue
    .line 64
    iput p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->classificationTableIndex:I

    .line 65
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ClassificationBox;->language:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v1, "ClassificationBox[language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "classificationEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getClassificationEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ";classificationTableIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getClassificationTableIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ";language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ";classificationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ClassificationBox;->getClassificationInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
