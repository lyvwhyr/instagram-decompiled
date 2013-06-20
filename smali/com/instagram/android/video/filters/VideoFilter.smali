.class public abstract Lcom/instagram/android/video/filters/VideoFilter;
.super Lcom/instagram/android/gl/IgFilter;
.source "VideoFilter.java"


# static fields
.field protected static final COORDS_PER_VERTEX:I = 0x2

.field public static final TAG:Ljava/lang/String; = "VideoFilter"

.field protected static final VERTEX_STRIDE:I = 0x8

.field protected static final mirroredVertices:[F

.field protected static rotatedTextureVerticesBuffer:Ljava/nio/FloatBuffer;

.field protected static surfaceVerticesBuffer:Ljava/nio/FloatBuffer;

.field protected static textureVerticesBuffer:Ljava/nio/FloatBuffer;

.field protected static final transformationVertices:[[F


# instance fields
.field protected mPositionHandle:I

.field protected mProgram:I

.field protected mTextureCoordHandle:I

.field private mUseFinalTransformOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 54
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/instagram/android/video/filters/VideoFilter;->mirroredVertices:[F

    .line 61
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/video/filters/VideoFilter;->transformationVertices:[[F

    .line 119
    const/high16 v0, 0x3f80

    invoke-static {v0, v4}, Lcom/instagram/android/video/filters/VideoFilter;->getSquareVertices(FI)[F

    move-result-object v0

    .line 120
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 121
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/instagram/android/video/filters/VideoFilter;->surfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 123
    sget-object v1, Lcom/instagram/android/video/filters/VideoFilter;->surfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 124
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->surfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->transformationVertices:[[F

    aget-object v0, v0, v4

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/video/filters/VideoFilter;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 129
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/instagram/android/video/filters/VideoFilter;->transformationVertices:[[F

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 130
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->transformationVertices:[[F

    aget-object v0, v0, v4

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/video/filters/VideoFilter;->rotatedTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 136
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->rotatedTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/instagram/android/video/filters/VideoFilter;->transformationVertices:[[F

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 137
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->rotatedTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    return-void

    .line 54
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "resInfix"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/gl/IgFilter;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method protected static final getSquareVertices(FI)[F
    .locals 7
    .parameter "aspectRatio"
    .parameter "rotation"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/high16 v4, 0x3f80

    const/high16 v3, -0x4080

    .line 33
    .line 36
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v3, v0, v5

    aput p0, v0, v2

    aput v4, v0, v6

    const/4 v1, 0x3

    aput p0, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    neg-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    neg-float v2, p0

    aput v2, v0, v1

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    neg-float v1, p0

    aput v1, v0, v5

    aput v4, v0, v2

    aput p0, v0, v6

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    neg-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    goto :goto_0
.end method

.method public static setFinalTransformFlipped(Z)V
    .locals 4
    .parameter "flipped"

    .prologue
    const/4 v1, 0x0

    .line 182
    sget-object v2, Lcom/instagram/android/video/filters/VideoFilter;->rotatedTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/instagram/android/video/filters/VideoFilter;->transformationVertices:[[F

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v0, v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 183
    sget-object v0, Lcom/instagram/android/video/filters/VideoFilter;->rotatedTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    return-void

    :cond_0
    move v0, v1

    .line 182
    goto :goto_0
.end method


# virtual methods
.method public draw(I)V
    .locals 6
    .parameter "sourceTexture"

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/instagram/android/video/filters/VideoFilter;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 189
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 190
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 192
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mPositionHandle:I

    sget-object v5, Lcom/instagram/android/video/filters/VideoFilter;->surfaceVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 194
    iget-boolean v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mUseFinalTransformOnce:Z

    if-eqz v0, :cond_0

    .line 195
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mTextureCoordHandle:I

    sget-object v5, Lcom/instagram/android/video/filters/VideoFilter;->rotatedTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 197
    iput-boolean v3, p0, Lcom/instagram/android/video/filters/VideoFilter;->mUseFinalTransformOnce:Z

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/video/filters/VideoFilter;->setDrawingParameters()V

    .line 205
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 206
    return-void

    .line 199
    :cond_0
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mTextureCoordHandle:I

    sget-object v5, Lcom/instagram/android/video/filters/VideoFilter;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    if-eqz v0, :cond_0

    .line 211
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public final getProgram()I
    .locals 4

    .prologue
    .line 145
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    if-nez v0, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/video/filters/VideoFilter;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getProgramCode(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    .line 149
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 151
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    const-string v1, "image"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 153
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mPositionHandle:I

    .line 154
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 156
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mTextureCoordHandle:I

    .line 157
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mTextureCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 159
    invoke-virtual {p0}, Lcom/instagram/android/video/filters/VideoFilter;->initProgram()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    const-string v0, "VideoFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/video/filters/VideoFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " program: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mProgram:I

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "VideoFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error initializing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/video/filters/VideoFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected initProgram()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method protected setDrawingParameters()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public setUseFinalTransformOnce()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/filters/VideoFilter;->mUseFinalTransformOnce:Z

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/instagram/android/video/filters/VideoFilter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
