.class public Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;
.super Lcom/instagram/android/video/widget/IgTextureView;
.source "ScrubberPreviewTextureView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrubberPreviewTextureView"


# instance fields
.field private mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

.field private mScrubberFragment:Lcom/instagram/android/video/fragment/VideoScrubberFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/instagram/android/video/widget/IgTextureView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/video/widget/IgTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/video/widget/IgTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 38
    new-instance v0, Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {v0, p1, p2}, Lcom/instagram/android/video/gl/GLRenderContext;-><init>(Landroid/graphics/SurfaceTexture;I)V

    iput-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    .line 39
    iget-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mScrubberFragment:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    new-instance v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    iget-object v2, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mScrubberFragment:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;-><init>(Lcom/instagram/android/video/fragment/VideoScrubberFragment;Lcom/instagram/android/video/gl/GLRenderContext;)V

    iput-object v1, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    .line 41
    iget-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    iget-object v1, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mScrubberFragment:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iget-object v1, v1, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setController(Lcom/instagram/android/video/gl/RenderController;)V

    .line 42
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter "surface"

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->finish()V

    .line 49
    iput-object v1, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    .line 50
    iget-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mScrubberFragment:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    iput-object v1, v0, Lcom/instagram/android/video/fragment/VideoScrubberFragment;->mScrubberRenderController:Lcom/instagram/android/video/fragment/VideoScrubberFragment$ScrubberRenderController;

    .line 51
    iput-object v1, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mScrubberFragment:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public pauseRender()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->pause()V

    .line 58
    return-void
.end method

.method public resumeRender()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mOnScreenGLRenderContext:Lcom/instagram/android/video/gl/GLRenderContext;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRenderContext;->resume()V

    .line 64
    :cond_0
    return-void
.end method

.method public setScrubberFragment(Lcom/instagram/android/video/fragment/VideoScrubberFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/video/widget/ScrubberPreviewTextureView;->mScrubberFragment:Lcom/instagram/android/video/fragment/VideoScrubberFragment;

    .line 33
    return-void
.end method
