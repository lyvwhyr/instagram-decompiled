.class public final Lcom/instagram/android/mediacache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field private final entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/instagram/android/mediacache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Entry;)V
    .locals 0
    .parameter
    .parameter "entry"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p2, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    .line 770
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 763
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->completeEdit(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$2000(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V

    .line 846
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->completeEdit(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$2000(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V

    .line 834
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1100(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->completeEdit(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$2000(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_0

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .parameter "index"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    monitor-enter v1

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 781
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$600(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    const/4 v0, 0x0

    monitor-exit v1

    .line 784
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .parameter "index"

    .prologue
    .line 805
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    monitor-enter v1

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 809
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/instagram/android/mediacache/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 817
    const/4 v2, 0x0

    .line 819
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/mediacache/DiskLruCache;->access$1900()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 823
    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    .line 825
    return-void

    .line 823
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
