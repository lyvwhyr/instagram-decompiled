.class public Lcom/instagram/android/video/filters/YUVFilter;
.super Lcom/instagram/android/video/filters/VideoFilter;
.source "YUVFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, -0x1

    const-string v1, "YUV"

    const-string v2, "yuv"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/filters/VideoFilter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
