.class Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;
.super Ljava/lang/Object;
.source "MediaScannerUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mMimeType:Ljava/lang/String;

.field private mPaths:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, paths:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mPaths:Ljava/util/Queue;

    .line 58
    iput-object p2, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mMimeType:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private scanNextPath()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mPaths:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mPaths:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->scanNextPath()V

    .line 68
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->scanNextPath()V

    .line 72
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mConnection:Landroid/media/MediaScannerConnection;

    .line 63
    iget-object v0, p0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 64
    return-void
.end method
