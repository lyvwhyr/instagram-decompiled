.class Lcom/instagram/android/mediacache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$1;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$1;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$1;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->access$000(Lcom/instagram/android/mediacache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    monitor-exit v1

    .line 255
    :goto_0
    return-object v3

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$1;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->access$100(Lcom/instagram/android/mediacache/DiskLruCache;)V

    .line 250
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$1;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->access$200(Lcom/instagram/android/mediacache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$1;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->access$300(Lcom/instagram/android/mediacache/DiskLruCache;)V

    .line 252
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$1;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    const/4 v2, 0x0

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/instagram/android/mediacache/DiskLruCache;->access$402(Lcom/instagram/android/mediacache/DiskLruCache;I)I

    .line 254
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
