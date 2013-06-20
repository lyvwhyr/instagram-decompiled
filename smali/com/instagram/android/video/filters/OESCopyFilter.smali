.class public Lcom/instagram/android/video/filters/OESCopyFilter;
.super Lcom/instagram/android/video/filters/VideoFilter;
.source "OESCopyFilter.java"


# instance fields
.field private OESSurfaceVerticesBuffer:Ljava/nio/FloatBuffer;

.field private OESTextureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private mTransformMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 30
    const/4 v0, -0x2

    const-string v1, "OES"

    const-string v2, "oes"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/filters/VideoFilter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESSurfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 36
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 40
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/video/filters/OESCopyFilter;->setAspectRatioRotation(FI)V

    .line 41
    return-void
.end method


# virtual methods
.method public draw(I[F)V
    .locals 6
    .parameter "sourceTexture"
    .parameter "transform"

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/video/filters/OESCopyFilter;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 57
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 58
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    iget v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->mPositionHandle:I

    iget-object v5, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESSurfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 62
    iget v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->mTextureCoordHandle:I

    iget-object v5, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 65
    iget v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->mTransformMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 67
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 68
    return-void
.end method

.method public initProgram()V
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->mProgram:I

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->mTransformMatrixHandle:I

    .line 45
    return-void
.end method

.method public setAspectRatioRotation(FI)V
    .locals 3
    .parameter "f"
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESSurfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p1, p2}, Lcom/instagram/android/video/filters/OESCopyFilter;->getSquareVertices(FI)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 49
    iget-object v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESSurfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    iget-object v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/instagram/android/video/filters/OESCopyFilter;->transformationVertices:[[F

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/filters/OESCopyFilter;->OESTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    return-void
.end method
