.class public final Lcom/instagram/android/video/render/MediaScannerUtil;
.super Ljava/lang/Object;
.source "MediaScannerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerUtil"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Sorry, you cannot instantiate an utility class!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static scanFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {p0, v0, p2}, Lcom/instagram/android/video/render/MediaScannerUtil;->scanFile(Landroid/content/Context;Ljava/util/Queue;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static scanFile(Landroid/content/Context;Ljava/util/Queue;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, paths:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    new-instance v0, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;

    invoke-direct {v0, p1, p2}, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;-><init>(Ljava/util/Queue;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p0}, Lcom/instagram/android/video/render/MediaScannerUtil$MediaScannerHelper;->start(Landroid/content/Context;)V

    .line 46
    return-void
.end method
