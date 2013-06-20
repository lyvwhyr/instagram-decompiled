.class public Lcom/instagram/util/CheckpointUtil;
.super Ljava/lang/Object;
.source "CheckpointUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showCheckpointIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "checkpointUrl"

    .prologue
    .line 17
    invoke-static {p1}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Lcom/instagram/android/activity/SimpleWebViewActivity;->showCheckpoint(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method
