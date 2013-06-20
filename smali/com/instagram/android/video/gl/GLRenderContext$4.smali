.class Lcom/instagram/android/video/gl/GLRenderContext$4;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/gl/GLRenderContext;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/instagram/android/video/gl/GLRenderContext;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    iput p2, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->val$size:I

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$400(Lcom/instagram/android/video/gl/GLRenderContext;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    iget v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->val$size:I

    #setter for: Lcom/instagram/android/video/gl/GLRenderContext;->mSize:I
    invoke-static {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->access$402(Lcom/instagram/android/video/gl/GLRenderContext;I)I

    .line 402
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer1:Lcom/instagram/android/video/gl/FramebufferTexture;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->access$500(Lcom/instagram/android/video/gl/GLRenderContext;)Lcom/instagram/android/video/gl/FramebufferTexture;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->val$size:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/FramebufferTexture;->resize(I)V

    .line 403
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->this$0:Lcom/instagram/android/video/gl/GLRenderContext;

    #getter for: Lcom/instagram/android/video/gl/GLRenderContext;->mOffscreenBuffer2:Lcom/instagram/android/video/gl/FramebufferTexture;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->access$600(Lcom/instagram/android/video/gl/GLRenderContext;)Lcom/instagram/android/video/gl/FramebufferTexture;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/video/gl/GLRenderContext$4;->val$size:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/FramebufferTexture;->resize(I)V

    .line 405
    :cond_0
    return-void
.end method
