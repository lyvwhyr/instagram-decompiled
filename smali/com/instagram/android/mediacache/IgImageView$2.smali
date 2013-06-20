.class Lcom/instagram/android/mediacache/IgImageView$2;
.super Ljava/lang/Object;
.source "IgImageView.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/IgImageView;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindToTask(Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)V
    .locals 2
    .parameter "loadTask"

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->mUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/mediacache/IgImageView;->access$100(Lcom/instagram/android/mediacache/IgImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #setter for: Lcom/instagram/android/mediacache/IgImageView;->mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;
    invoke-static {v0, p1}, Lcom/instagram/android/mediacache/IgImageView;->access$202(Lcom/instagram/android/mediacache/IgImageView;Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    .line 77
    :cond_0
    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #setter for: Lcom/instagram/android/mediacache/IgImageView;->mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;
    invoke-static {v0, v2}, Lcom/instagram/android/mediacache/IgImageView;->access$202(Lcom/instagram/android/mediacache/IgImageView;Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    .line 66
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    .line 67
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->onLoadListener:Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$300(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->onLoadListener:Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$300(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 70
    :cond_0
    return-void
.end method

.method public reportProgress(Ljava/lang/String;I)V
    .locals 1
    .parameter "url"
    .parameter "progress"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    iget-boolean v0, v0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$100(Lcom/instagram/android/mediacache/IgImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$400(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$400(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;->onProgress(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$100(Lcom/instagram/android/mediacache/IgImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    .line 47
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {v0, p2}, Lcom/instagram/android/mediacache/IgImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/mediacache/IgImageView;->mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->access$202(Lcom/instagram/android/mediacache/IgImageView;Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    .line 49
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->onLoadListener:Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$300(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView$2;->this$0:Lcom/instagram/android/mediacache/IgImageView;

    #getter for: Lcom/instagram/android/mediacache/IgImageView;->onLoadListener:Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgImageView;->access$300(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_0
    return-void
.end method
