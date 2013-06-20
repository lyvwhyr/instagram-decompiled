.class Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;
.super Ljava/lang/Object;
.source "MultiBitmapFetcher.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/MultiBitmapFetcher;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->this$0:Lcom/instagram/android/mediacache/MultiBitmapFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized setCallbackBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->this$0:Lcom/instagram/android/mediacache/MultiBitmapFetcher;

    #getter for: Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mBitmapMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->access$000(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->this$0:Lcom/instagram/android/mediacache/MultiBitmapFetcher;

    #getter for: Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mPendingUrls:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->access$100(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->this$0:Lcom/instagram/android/mediacache/MultiBitmapFetcher;

    #getter for: Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mPendingUrls:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->access$100(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->this$0:Lcom/instagram/android/mediacache/MultiBitmapFetcher;

    #getter for: Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mCallback:Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;
    invoke-static {v0}, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->access$200(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->this$0:Lcom/instagram/android/mediacache/MultiBitmapFetcher;

    #getter for: Lcom/instagram/android/mediacache/MultiBitmapFetcher;->mBitmapMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->access$000(Lcom/instagram/android/mediacache/MultiBitmapFetcher;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;->setBitmaps(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bindToTask(Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)V
    .locals 0
    .parameter "bitmapCallbacks"

    .prologue
    .line 41
    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->setCallbackBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 37
    return-void
.end method

.method public reportProgress(Ljava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "progress"

    .prologue
    .line 32
    return-void
.end method

.method public setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/MultiBitmapFetcher$1;->setCallbackBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 28
    return-void
.end method
