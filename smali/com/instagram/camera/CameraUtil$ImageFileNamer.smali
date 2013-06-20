.class Lcom/instagram/camera/CameraUtil$ImageFileNamer;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# instance fields
.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 246
    return-void
.end method


# virtual methods
.method public generateName(J)Ljava/lang/String;
    .locals 7
    .parameter "dateTaken"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 249
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 250
    iget-object v1, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 254
    div-long v1, p1, v5

    iget-wide v3, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mLastDate:J

    div-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 255
    iget v1, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iput-wide p1, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mLastDate:J

    .line 259
    const/4 v1, 0x0

    iput v1, p0, Lcom/instagram/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
