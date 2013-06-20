.class Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic this$1:Lcom/instagram/android/mediacache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 850
    iput-object p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    .line 851
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 852
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/instagram/android/mediacache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 848
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 877
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->access$2102(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->access$2102(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .parameter "oneByte"

    .prologue
    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->access$2102(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 868
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->access$2102(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
