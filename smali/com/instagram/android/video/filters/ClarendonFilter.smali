.class public Lcom/instagram/android/video/filters/ClarendonFilter;
.super Lcom/instagram/android/video/filters/VideoFilter;
.source "ClarendonFilter.java"


# instance fields
.field private map1Texture:I

.field private map2Texture:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x70

    const-string v1, "Clarendon"

    const-string v2, "clarendon"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/filters/VideoFilter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected initProgram()V
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/instagram/android/video/filters/ClarendonFilter;->mProgram:I

    const-string v1, "map"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 26
    iget v0, p0, Lcom/instagram/android/video/filters/ClarendonFilter;->mProgram:I

    const-string v1, "map2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 28
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video/clarendon/Glacial1.png"

    invoke-static {v0, v1}, Lcom/instagram/android/gl/GLHelper;->createTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/ClarendonFilter;->map1Texture:I

    .line 29
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video/clarendon/Glacial2.png"

    invoke-static {v0, v1}, Lcom/instagram/android/gl/GLHelper;->createTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/ClarendonFilter;->map2Texture:I

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
    iget v0, p0, Lcom/instagram/android/video/filters/ClarendonFilter;->map1Texture:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 37
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 38
    iget v0, p0, Lcom/instagram/android/video/filters/ClarendonFilter;->map2Texture:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 39
    return-void
.end method
