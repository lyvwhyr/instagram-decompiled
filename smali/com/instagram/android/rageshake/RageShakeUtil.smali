.class public Lcom/instagram/android/rageshake/RageShakeUtil;
.super Ljava/lang/Object;
.source "RageShakeUtil.java"


# static fields
.field public static final INTENT_EXTRA_DESCRIPTION:Ljava/lang/String; = "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_DESCRIPTION"

.field public static final INTENT_EXTRA_FB_ACCESS_TOKEN:Ljava/lang/String; = "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_FB_ACCESS_TOKEN"

.field public static final INTENT_EXTRA_MEDIA_FILE_PATH:Ljava/lang/String; = "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_MEDIA_FILE_PATH"

.field public static final INTENT_EXTRA_RETRY:Ljava/lang/String; = "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_RETRY"

.field private static final SCREENSHOT_FILENAME:Ljava/lang/String; = "ig_bugreport.png"

.field private static final TAG:Ljava/lang/String; = "RageShakeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveScreenShot(Landroid/graphics/Bitmap;Ljava/io/File;)Landroid/net/Uri;
    .locals 4
    .parameter "bitmap"
    .parameter "directory"

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "ig_bugreport.png"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 73
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v1, v2}, Lcom/a/a/c/a;->a(Ljava/io/Closeable;Z)V

    .line 77
    :goto_0
    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/a/a/c/a;->a(Ljava/io/Closeable;Z)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "RageShakeUtil"

    const-string v2, "Couldn\'t save screenshot"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "activity"

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .line 46
    .end local p0
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget v0, Lcom/facebook/k;->rageshake_error_low_memory:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method
