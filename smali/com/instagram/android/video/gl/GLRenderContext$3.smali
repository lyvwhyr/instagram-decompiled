.class Lcom/instagram/android/video/gl/GLRenderContext$3;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/gl/GLRenderContext;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/instagram/android/video/gl/GLRenderContext;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    iput p2, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->val$index:I

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$200(Lcom/instagram/android/video/gl/GLRenderContext;)[Landroid/graphics/SurfaceTexture;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    iget v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->val$index:I

    #setter for: Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$302(Lcom/instagram/android/video/gl/GLRenderContext;I)I

    .line 353
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mInputSurfaceTextures:[Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->access$200(Lcom/instagram/android/video/gl/GLRenderContext;)[Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$3;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mCurrentIndex:I
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$300(Lcom/instagram/android/video/gl/GLRenderContext;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 355
    :cond_0
    return-void
.end method
