.class Lcom/instagram/android/video/gl/GLRenderContext$2;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/gl/GLRenderContext;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/gl/GLRenderContext;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext$2;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$2;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$200(Lcom/instagram/android/video/gl/GLRenderContext;)[Landroid/graphics/SurfaceTexture;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$2;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$200(Lcom/instagram/android/video/gl/GLRenderContext;)[Landroid/graphics/SurfaceTexture;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method
