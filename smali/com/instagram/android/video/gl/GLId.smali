.class public Lcom/instagram/android/video/gl/GLId;
.super Ljava/lang/Object;
.source "GLId.java"


# static fields
.field static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/instagram/android/video/gl/GLId;->sNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2
    .parameter "gl"
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 46
    const-class v0, Lcom/instagram/android/video/gl/GLId;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
    .locals 2
    .parameter "gl11ep"
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 51
    const-class v0, Lcom/instagram/android/video/gl/GLId;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 2
    .parameter "gl"
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 42
    const-class v0, Lcom/instagram/android/video/gl/GLId;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized glGenBuffers(I[II)V
    .locals 5
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 36
    const-class v2, Lcom/instagram/android/video/gl/GLId;

    monitor-enter v2

    move v0, p0

    .end local p0
    .local v0, n:I
    :goto_0
    add-int/lit8 p0, v0, -0x1

    .end local v0           #n:I
    .restart local p0
    if-lez v0, :cond_0

    .line 37
    add-int v1, p2, p0

    :try_start_0
    sget v3, Lcom/instagram/android/video/gl/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/instagram/android/video/gl/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    .end local p0
    .restart local v0       #n:I
    goto :goto_0

    .line 39
    .end local v0           #n:I
    .restart local p0
    :cond_0
    monitor-exit v2

    return-void

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized glGenTextures(I[II)V
    .locals 5
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 30
    const-class v2, Lcom/instagram/android/video/gl/GLId;

    monitor-enter v2

    move v0, p0

    .end local p0
    .local v0, n:I
    :goto_0
    add-int/lit8 p0, v0, -0x1

    .end local v0           #n:I
    .restart local p0
    if-lez v0, :cond_0

    .line 31
    add-int v1, p2, p0

    :try_start_0
    sget v3, Lcom/instagram/android/video/gl/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/instagram/android/video/gl/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    .end local p0
    .restart local v0       #n:I
    goto :goto_0

    .line 33
    .end local v0           #n:I
    .restart local p0
    :cond_0
    monitor-exit v2

    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
