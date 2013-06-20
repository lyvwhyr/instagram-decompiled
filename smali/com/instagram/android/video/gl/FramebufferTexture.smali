.class public Lcom/instagram/android/video/gl/FramebufferTexture;
.super Ljava/lang/Object;
.source "FramebufferTexture.java"


# instance fields
.field private mFramebuffer:I

.field private mSize:I

.field private mTexture:I


# direct methods
.method public constructor <init>(I)V
    .locals 10
    .parameter "size"

    .prologue
    const v9, 0x8d40

    const/16 v2, 0x1908

    const/4 v4, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mSize:I

    .line 16
    new-array v3, v4, [I

    .line 17
    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 18
    aget v3, v3, v1

    iput v3, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mFramebuffer:I

    .line 19
    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->createTexture(I)I

    move-result v3

    iput v3, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mTexture:I

    .line 20
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p1

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 21
    iget v2, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mFramebuffer:I

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 22
    const v2, 0x8ce0

    iget v3, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mTexture:I

    invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 23
    invoke-static {v1, v1, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 24
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const v0, 0x8d40

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 53
    new-array v0, v3, [I

    .line 54
    iget v1, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mFramebuffer:I

    aput v1, v0, v2

    .line 55
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 56
    iget v1, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mTexture:I

    aput v1, v0, v2

    .line 57
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 58
    return-void
.end method

.method public getFramebuffer()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mFramebuffer:I

    return v0
.end method

.method public getTexture()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mTexture:I

    return v0
.end method

.method public resize(I)V
    .locals 12
    .parameter "size"

    .prologue
    const v11, 0x8d40

    const/16 v2, 0x1908

    const/4 v10, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 35
    iget v3, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mSize:I

    if-ne p1, v3, :cond_0

    .line 49
    :goto_0
    return-void

    .line 38
    :cond_0
    iput p1, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mSize:I

    .line 40
    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->createTexture(I)I

    move-result v9

    .line 41
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p1

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 42
    iget v2, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mFramebuffer:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 43
    const v2, 0x8ce0

    invoke-static {v11, v2, v0, v9, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 45
    new-array v0, v10, [I

    iget v2, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mTexture:I

    aput v2, v0, v1

    .line 46
    invoke-static {v10, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 48
    iput v9, p0, Lcom/instagram/android/video/gl/FramebufferTexture;->mTexture:I

    goto :goto_0
.end method
