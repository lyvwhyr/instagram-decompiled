.class Lcom/instagram/android/support/camera/LoadImageTask;
.super Landroid/os/AsyncTask;
.source "LoadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadImageTask"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mImage:Lcom/instagram/android/support/camera/gallery/IImage;

.field private mLoadImageListener:Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mLoadImageListener:Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/support/camera/LoadImageTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 42
    iget-object v2, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 49
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/instagram/util/FileUtil;->copyToTempFile(Landroid/content/Context;Ljava/io/InputStream;)Landroid/net/Uri;

    move-result-object v4

    .line 52
    const/4 v0, 0x1

    invoke-static {v3, v4, v0}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/instagram/android/support/camera/gallery/IImageList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 54
    :try_start_2
    invoke-interface {v0, v4}, Lcom/instagram/android/support/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v3

    iput-object v3, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    .line 56
    iget-object v3, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    if-eqz v3, :cond_0

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x3fb47ae147ae147bL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    div-int/lit8 v3, v3, 0x4

    .line 59
    iget-object v4, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v4, v5, v3, v6, v7}, Lcom/instagram/android/support/camera/gallery/IImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 68
    :cond_0
    if-eqz v2, :cond_1

    .line 70
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 74
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Lcom/instagram/android/support/camera/gallery/IImageList;->close()V

    .line 79
    :cond_2
    :goto_1
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 68
    :goto_2
    if-eqz v2, :cond_3

    .line 70
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 74
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Lcom/instagram/android/support/camera/gallery/IImageList;->close()V

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 70
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 74
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 75
    invoke-interface {v1}, Lcom/instagram/android/support/camera/gallery/IImageList;->close()V

    :cond_5
    throw v0

    .line 71
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_5

    .line 68
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 66
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/support/camera/LoadImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "aVoid"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mLoadImageListener:Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mLoadImageListener:Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;

    iget-object v1, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    iget-object v2, p0, Lcom/instagram/android/support/camera/LoadImageTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;->onLoadImageFinished(Lcom/instagram/android/support/camera/gallery/IImage;Landroid/graphics/Bitmap;)V

    .line 89
    :cond_0
    return-void
.end method
