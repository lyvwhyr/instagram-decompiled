.class public Lcom/instagram/android/video/filters/VesperFilter;
.super Lcom/instagram/android/video/filters/VideoFilter;
.source "VesperFilter.java"


# instance fields
.field private mapTexture:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x6a

    const-string v1, "Vesper"

    const-string v2, "vesper"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/filters/VideoFilter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected initProgram()V
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/instagram/android/video/filters/VesperFilter;->mProgram:I

    const-string v1, "map"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 25
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video/vesper/map.png"

    invoke-static {v0, v1}, Lcom/instagram/android/gl/GLHelper;->createTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/VesperFilter;->mapTexture:I

    .line 26
    return-void
.end method

.method protected setDrawingParameters()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 31
    const/16 v0, 0xde1

    iget v1, p0, Lcom/instagram/android/video/filters/VesperFilter;->mapTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 32
    return-void
.end method
