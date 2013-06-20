.class public Lcom/instagram/android/video/VideoFileSizeManager;
.super Ljava/lang/Object;
.source "VideoFileSizeManager.java"


# static fields
.field private static final MEGABYTE:I = 0x100000

.field private static final MINIMUM_MEGABYTES:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableSpace()J
    .locals 5

    .prologue
    .line 17
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMinimumSpaceMegabytes()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x64

    return v0
.end method

.method public static hasEnoughSpaceToStartRecording()Z
    .locals 4

    .prologue
    .line 22
    invoke-static {}, Lcom/instagram/android/video/VideoFileSizeManager;->getAvailableSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
