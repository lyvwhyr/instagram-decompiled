.class public Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "BaseLocationBox.java"


# instance fields
.field baseLocation:Ljava/lang/String;

.field purchaseLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "bloc"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "baseLocation"
    .parameter "purchaseLocation"

    .prologue
    .line 37
    const-string v0, "bloc"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    const/16 v0, 0x200

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 94
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 86
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

    .line 88
    :cond_3
    check-cast p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;

    .line 90
    .end local p1
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 91
    :cond_6
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 92
    goto :goto_0

    .line 91
    :cond_7
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBaseLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 76
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    const/16 v0, 0x200

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x404

    return-wide v0
.end method

.method public getPurchaseLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 100
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 101
    return v0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public setBaseLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "baseLocation"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPurchaseLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "purchaseLocation"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    .line 56
    return-void
.end method
