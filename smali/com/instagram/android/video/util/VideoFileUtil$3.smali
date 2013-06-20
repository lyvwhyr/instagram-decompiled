.class final Lcom/instagram/android/video/util/VideoFileUtil$3;
.super Ljava/lang/Object;
.source "VideoFileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/android/video/util/VideoFileUtil$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "VideoFileUtil"

    const-string v1, "Cleaning up previous recordings"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/instagram/android/video/util/VideoFileUtil$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/video/util/VideoFileUtil;->getClipsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/video/util/VideoFileUtil;->deleteFiles(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method
