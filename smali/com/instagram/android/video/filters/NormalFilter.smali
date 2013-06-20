.class public Lcom/instagram/android/video/filters/NormalFilter;
.super Lcom/instagram/android/video/filters/VideoFilter;
.source "NormalFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x0

    const-string v1, "Normal"

    const-string v2, "normal"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/filters/VideoFilter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
