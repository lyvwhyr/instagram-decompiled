.class public final Lcom/instagram/android/mediacache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset; = null

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/mediacache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/mediacache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-wide v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    .line 226
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 235
    iput-wide v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->nextSequenceNumber:J

    .line 240
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 242
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/DiskLruCache$1;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 260
    iput-object p1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->directory:Ljava/io/File;

    .line 261
    iput p2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->appVersion:I

    .line 262
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 263
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 264
    iput p3, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    .line 265
    iput-wide p4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->maxSize:J

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/mediacache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/mediacache/DiskLruCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;J)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/mediacache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/Closeable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$1900()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/instagram/android/mediacache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/mediacache/DiskLruCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/DiskLruCache;->completeEdit(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/instagram/android/mediacache/DiskLruCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/instagram/android/mediacache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/mediacache/DiskLruCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/instagram/android/mediacache/DiskLruCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 131
    if-eqz p0, :cond_0

    .line 133
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    throw v0

    .line 136
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcom/instagram/android/mediacache/DiskLruCache$Editor;Z)V
    .locals 10
    .parameter "editor"
    .parameter "success"

    .prologue
    const/4 v0, 0x0

    .line 550
    monitor-enter p0

    :try_start_0
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Editor;->entry:Lcom/instagram/android/mediacache/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->access$1400(Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    move-result-object v2

    .line 551
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 556
    :cond_0
    if-eqz p2, :cond_3

    :try_start_1
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$600(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    .line 557
    :goto_0
    iget v3, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_3

    .line 558
    invoke-virtual {v2, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 559
    invoke-virtual {p1}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 557
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_3
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_6

    .line 568
    invoke-virtual {v2, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 569
    if-eqz p2, :cond_5

    .line 570
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 571
    invoke-virtual {v2, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 572
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 573
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1000(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 574
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 575
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1000(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 576
    iget-wide v8, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    .line 567
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 579
    :cond_5
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 583
    :cond_6
    iget v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    .line 584
    const/4 v0, 0x0

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v2, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$702(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    .line 585
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$600(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 586
    const/4 v0, 0x1

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$602(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Z)Z

    .line 587
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1100(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 588
    if-eqz p2, :cond_7

    .line 589
    iget-wide v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/instagram/android/mediacache/DiskLruCache;->nextSequenceNumber:J

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1202(Lcom/instagram/android/mediacache/DiskLruCache$Entry;J)J

    .line 596
    :cond_7
    :goto_4
    iget-wide v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :cond_8
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 592
    :cond_9
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1100(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1100(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, original:[Ljava/lang/Object;,"[TT;"
    array-length v0, p0

    .line 97
    if-le p1, p2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 103
    :cond_2
    sub-int v1, p2, p1

    .line 104
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 106
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-object v0
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .parameter "dir"

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 116
    if-nez v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-static {v3}, Lcom/instagram/android/mediacache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 123
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 441
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    .locals 4
    .parameter "key"
    .parameter "expectedSequenceNumber"

    .prologue
    const/4 v1, 0x0

    .line 502
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->checkNotClosed()V

    .line 503
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    .line 505
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1200(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 522
    :goto_0
    monitor-exit p0

    return-object v0

    .line 509
    :cond_1
    if-nez v0, :cond_2

    .line 510
    :try_start_1
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;Lcom/instagram/android/mediacache/DiskLruCache$1;)V

    .line 511
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 516
    :goto_1
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$1;)V

    .line 517
    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$702(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    .line 520
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 512
    :cond_2
    :try_start_2
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 513
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"

    .prologue
    .line 710
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/instagram/android/mediacache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 606
    .line 607
    iget v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/instagram/android/mediacache/DiskLruCache;
    .locals 6
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    .line 280
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    if-gtz p2, :cond_1

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/mediacache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 289
    iget-object v1, v0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    :try_start_0
    invoke-direct {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->readJournal()V

    .line 292
    invoke-direct {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->processJournal()V

    .line 293
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-object v0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->delete()V

    .line 303
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 304
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/mediacache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 305
    invoke-direct {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->rebuildJournal()V

    goto :goto_0
.end method

.method private processJournal()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 380
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    .line 382
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 383
    :goto_1
    iget v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_0

    .line 384
    iget-wide v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1000(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 387
    :cond_1
    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$702(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move v1, v2

    .line 388
    :goto_2
    iget v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_2

    .line 389
    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/android/mediacache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 390
    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/android/mediacache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 392
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 395
    :cond_3
    return-void
.end method

.method private static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "in"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 163
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 164
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 165
    :cond_0
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 172
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 173
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_2
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .parameter "reader"

    .prologue
    .line 144
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 145
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 147
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 148
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0
.end method

.method private readJournal()V
    .locals 8

    .prologue
    .line 310
    new-instance v1, Ljava/io/FileReader;

    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 311
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 313
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 318
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/instagram/android/mediacache/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 323
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 333
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/instagram/android/mediacache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V

    .line 329
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 330
    if-nez v2, :cond_1

    .line 339
    :goto_0
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 341
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 344
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 345
    array-length v0, v2

    if-ge v0, v4, :cond_0

    .line 346
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    aget-object v1, v2, v7

    .line 350
    aget-object v0, v2, v5

    const-string v3, "REMOVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v2

    if-ne v0, v4, :cond_2

    .line 351
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    .line 356
    if-nez v0, :cond_6

    .line 357
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;Lcom/instagram/android/mediacache/DiskLruCache$1;)V

    .line 358
    iget-object v3, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 361
    :goto_1
    aget-object v0, v2, v5

    const-string v3, "CLEAN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v2

    iget v3, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    add-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_3

    .line 362
    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z
    invoke-static {v1, v7}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$602(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Z)Z

    .line 363
    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v1, v6}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$702(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    .line 364
    array-length v0, v2

    invoke-static {v2, v4, v0}, Lcom/instagram/android/mediacache/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #calls: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$800(Lcom/instagram/android/mediacache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_3
    aget-object v0, v2, v5

    const-string v3, "DIRTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v2

    if-ne v0, v4, :cond_4

    .line 366
    new-instance v0, Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    invoke-direct {v0, p0, v1, v6}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$1;)V

    #setter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$702(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    goto :goto_0

    .line 367
    :cond_4
    aget-object v0, v2, v5

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, v2

    if-eq v0, v4, :cond_1

    .line 370
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 406
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 407
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    iget v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 413
    iget v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    .line 418
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1100(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 421
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1100(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 426
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 427
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 4

    .prologue
    .line 685
    :goto_0
    iget-wide v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/instagram/android/mediacache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 689
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 703
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 682
    :goto_0
    monitor-exit p0

    return-void

    .line 674
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    .line 675
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 676
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 679
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->trimToSize()V

    .line 680
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->close()V

    .line 699
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 700
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    .locals 2
    .parameter "key"

    .prologue
    .line 498
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->checkNotClosed()V

    .line 663
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->trimToSize()V

    .line 664
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 458
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->checkNotClosed()V

    .line 459
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-nez v2, :cond_0

    move-object v1, v3

    .line 490
    :goto_0
    monitor-exit p0

    return-object v1

    .line 465
    :cond_0
    :try_start_1
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$600(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 466
    goto :goto_0

    .line 474
    :cond_1
    iget v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    iget v4, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_2

    .line 477
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 481
    goto :goto_0

    .line 484
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    .line 485
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 486
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/instagram/android/mediacache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 490
    :cond_3
    new-instance v1, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1200(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/instagram/android/mediacache/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->checkNotClosed()V

    .line 448
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 618
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->checkNotClosed()V

    .line 619
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;

    .line 621
    if-eqz v0, :cond_0

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 642
    :goto_0
    monitor-exit p0

    return v0

    .line 630
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1000(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J

    .line 631
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->access$1000(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 625
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 626
    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 634
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->redundantOpCount:I

    .line 635
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 636
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-direct {p0}, Lcom/instagram/android/mediacache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 642
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/instagram/android/mediacache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
