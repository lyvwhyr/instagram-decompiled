.class public Lcom/instagram/android/video/model/VideoFile;
.super Ljava/lang/Object;
.source "VideoFile.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private length:J

.field private systemStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "filePath"
    .parameter "systemStartTime"
    .parameter "length"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/android/video/model/VideoFile;->filePath:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lcom/instagram/android/video/model/VideoFile;->systemStartTime:J

    .line 16
    iput-wide p4, p0, Lcom/instagram/android/video/model/VideoFile;->length:J

    .line 17
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/video/model/VideoFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/instagram/android/video/model/VideoFile;->length:J

    return-wide v0
.end method

.method public getSystemStartTime()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/instagram/android/video/model/VideoFile;->systemStartTime:J

    return-wide v0
.end method
