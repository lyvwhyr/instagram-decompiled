.class abstract Lcom/instagram/android/video/gl/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/instagram/android/video/gl/Texture;


# static fields
.field private static final MAX_TEXTURE_SIZE:I = 0x1000

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/instagram/android/video/gl/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Lcom/instagram/android/video/gl/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/instagram/android/video/gl/BasicTexture;-><init>(Lcom/instagram/android/video/gl/GLCanvas;II)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Lcom/instagram/android/video/gl/GLCanvas;II)V
    .locals 3
    .parameter "canvas"
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mWidth:I

    .line 45
    iput v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mHeight:I

    .line 52
    iput-object v1, p0, Lcom/instagram/android/video/gl/BasicTexture;->mCanvasRef:Lcom/instagram/android/video/gl/GLCanvas;

    .line 58
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/BasicTexture;->setAssociatedCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 59
    iput p2, p0, Lcom/instagram/android/video/gl/BasicTexture;->mId:I

    .line 60
    iput p3, p0, Lcom/instagram/android/video/gl/BasicTexture;->mState:I

    .line 61
    sget-object v1, Lcom/instagram/android/video/gl/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private freeResource()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mCanvasRef:Lcom/instagram/android/video/gl/GLCanvas;

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/BasicTexture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {v0, p0}, Lcom/instagram/android/video/gl/GLCanvas;->unloadTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mState:I

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/BasicTexture;->setAssociatedCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 175
    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidateAllTextures()V
    .locals 4

    .prologue
    .line 200
    sget-object v1, Lcom/instagram/android/video/gl/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 201
    :try_start_0
    sget-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/BasicTexture;

    .line 202
    const/4 v3, 0x0

    iput v3, v0, Lcom/instagram/android/video/gl/BasicTexture;->mState:I

    .line 203
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/instagram/android/video/gl/BasicTexture;->setAssociatedCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    return-void
.end method

.method public static yieldAllTextures()V
    .locals 3

    .prologue
    .line 192
    sget-object v1, Lcom/instagram/android/video/gl/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/BasicTexture;

    .line 194
    invoke-virtual {v0}, Lcom/instagram/android/video/gl/BasicTexture;->yield()V

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    return-void
.end method


# virtual methods
.method public draw(Lcom/instagram/android/video/gl/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLCanvas;->drawTexture(Lcom/instagram/android/video/gl/BasicTexture;IIII)V

    .line 135
    return-void
.end method

.method public draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 139
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLCanvas;->drawTexture(Lcom/instagram/android/video/gl/BasicTexture;IIII)V

    .line 140
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/instagram/android/video/gl/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/BasicTexture;->recycle()V

    .line 181
    sget-object v0, Lcom/instagram/android/video/gl/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mId:I

    return v0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    iget v1, p0, Lcom/instagram/android/video/gl/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/instagram/android/video/gl/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/instagram/android/video/gl/BasicTexture;->freeResource()V

    .line 157
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/video/gl/BasicTexture;->mCanvasRef:Lcom/instagram/android/video/gl/GLCanvas;

    .line 72
    return-void
.end method

.method protected setBorder(Z)V
    .locals 0
    .parameter "hasBorder"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/instagram/android/video/gl/BasicTexture;->mHasBorder:Z

    .line 130
    return-void
.end method

.method protected setSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x1000

    .line 79
    iput p1, p0, Lcom/instagram/android/video/gl/BasicTexture;->mWidth:I

    .line 80
    iput p2, p0, Lcom/instagram/android/video/gl/BasicTexture;->mHeight:I

    .line 81
    invoke-static {p1}, Lcom/instagram/android/video/util/VideoUtil;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureWidth:I

    .line 82
    invoke-static {p2}, Lcom/instagram/android/video/util/VideoUtil;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureHeight:I

    .line 83
    iget v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureHeight:I

    if-le v0, v1, :cond_1

    .line 84
    :cond_0
    const-string v0, "BasicTexture"

    const-string v1, "texture is too large: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/instagram/android/video/gl/BasicTexture;->mTextureHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_1
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/instagram/android/video/gl/BasicTexture;->freeResource()V

    .line 166
    return-void
.end method
