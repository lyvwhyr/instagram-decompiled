.class public Lcom/instagram/android/video/filters/AshbyFilter;
.super Lcom/instagram/android/video/filters/VideoFilter;
.source "AshbyFilter.java"


# instance fields
.field private levelsTexture:I

.field private tonemapTexture:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x74

    const-string v1, "Ashby"

    const-string v2, "ashby"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/filters/VideoFilter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected initProgram()V
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/instagram/android/video/filters/AshbyFilter;->mProgram:I

    const-string v1, "tonemap"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 26
    iget v0, p0, Lcom/instagram/android/video/filters/AshbyFilter;->mProgram:I

    const-string v1, "levels"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 28
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video/ashby/tonemap.png"

    invoke-static {v0, v1}, Lcom/instagram/android/gl/GLHelper;->createTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/AshbyFilter;->tonemapTexture:I

    .line 29
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video/ashby/levels.png"

    invoke-static {v0, v1}, Lcom/instagram/android/gl/GLHelper;->createTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/AshbyFilter;->levelsTexture:I

    .line 30
    return-void
.end method

.method protected setDrawingParameters()V
    .locals 2

    .prologue
    const/16 v1, 0xde1

    .line 34
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 35
    iget v0, p0, Lcom/instagram/android/video/filters/AshbyFilter;->tonemapTexture:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 37
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 38
    iget v0, p0, Lcom/instagram/android/video/filters/AshbyFilter;->levelsTexture:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 39
    return-void
.end method
