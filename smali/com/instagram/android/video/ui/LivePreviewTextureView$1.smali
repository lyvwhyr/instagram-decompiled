.class Lcom/instagram/android/video/ui/LivePreviewTextureView$1;
.super Lcom/instagram/android/video/gl/RenderController;
.source "LivePreviewTextureView.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/ui/LivePreviewTextureView;Lcom/instagram/android/video/gl/GLRenderContext;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    invoke-direct {p0, p2}, Lcom/instagram/android/video/gl/RenderController;-><init>(Lcom/instagram/android/video/gl/GLRenderContext;)V

    return-void
.end method

.method private prepareMediaPlayers()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 131
    const-string v0, "LivePreviewTextureView"

    const-string v2, "Preparing Media Players"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v2

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->getInputSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/android/video/gl/GLRenderContext;->getInputSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    const-string v3, "LivePreviewTextureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while prepare: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #setter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaCompleted:Z
    invoke-static {v0, v6}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$302(Lcom/instagram/android/video/ui/LivePreviewTextureView;Z)Z

    .line 154
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #setter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mCurrentPlayer:I
    invoke-static {v0, v1}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$402(Lcom/instagram/android/video/ui/LivePreviewTextureView;I)I

    .line 155
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 156
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #setter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z
    invoke-static {v0, v6}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$502(Lcom/instagram/android/video/ui/LivePreviewTextureView;Z)Z

    .line 157
    return-void
.end method

.method private releaseMediaPlayers()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 160
    const-string v1, "LivePreviewTextureView"

    const-string v2, "Releasing Media Players"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #setter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mPrepared:Z
    invoke-static {v1, v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$502(Lcom/instagram/android/video/ui/LivePreviewTextureView;Z)Z

    .line 162
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 164
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const-string v0, "LivePreviewTextureView"

    const-string v1, "Done Releasing"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$002(Lcom/instagram/android/video/ui/LivePreviewTextureView;[Landroid/media/MediaPlayer;)[Landroid/media/MediaPlayer;

    .line 169
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->releaseMediaPlayers()V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->releaseMediaPlayers()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->setupMediaPlayers()V

    .line 116
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->prepareMediaPlayers()V

    .line 117
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    new-instance v1, Lcom/instagram/android/video/ui/LivePreviewTextureView$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1$1;-><init>(Lcom/instagram/android/video/ui/LivePreviewTextureView$1;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public preInit()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_WHEN_DIRTY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/gl/GLRenderContext;->setRenderMode(Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;)V

    .line 99
    invoke-direct {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->prepareMediaPlayers()V

    .line 100
    iget-object v0, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    .line 101
    iget-object v1, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mMediaPlayers:[Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$000(Lcom/instagram/android/video/ui/LivePreviewTextureView;)[Landroid/media/MediaPlayer;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v2, v0

    .line 103
    const-string v1, "LivePreviewTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOrientation:I
    invoke-static {v3}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$100(Lcom/instagram/android/video/ui/LivePreviewTextureView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v1, "LivePreviewTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Live preview aspect ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->getRenderContext()Lcom/instagram/android/video/gl/GLRenderContext;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/ui/LivePreviewTextureView$1;->this$0:Lcom/instagram/android/video/ui/LivePreviewTextureView;

    #getter for: Lcom/instagram/android/video/ui/LivePreviewTextureView;->mOrientation:I
    invoke-static {v2}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->access$100(Lcom/instagram/android/video/ui/LivePreviewTextureView;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/video/gl/GLRenderContext;->setAspectRatioRotation(FI)V

    .line 106
    return-void
.end method
