.class public final Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/instagram/android/mediacache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "sequenceNumber"
    .parameter "ins"

    .prologue
    .line 722
    iput-object p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 724
    iput-wide p3, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 725
    iput-object p5, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 726
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/instagram/android/mediacache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 716
    invoke-direct/range {p0 .. p5}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 753
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 755
    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v3}, Lcom/instagram/android/mediacache/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_0
    return-void
.end method

.method public edit()Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    .locals 4

    .prologue
    .line 734
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->sequenceNumber:J

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/mediacache/DiskLruCache;->access$1500(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;J)Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter "index"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 748
    invoke-virtual {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    #calls: Lcom/instagram/android/mediacache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/mediacache/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
