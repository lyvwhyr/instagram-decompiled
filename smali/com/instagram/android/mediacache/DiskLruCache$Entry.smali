.class final Lcom/instagram/android/mediacache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field private currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/instagram/android/mediacache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"

    .prologue
    .line 916
    iput-object p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p2, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 918
    #getter for: Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$2200(Lcom/instagram/android/mediacache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J

    .line 919
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;Lcom/instagram/android/mediacache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 892
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;-><init>(Lcom/instagram/android/mediacache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 892
    iget-wide v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/instagram/android/mediacache/DiskLruCache$Entry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 892
    iput-wide p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 892
    iput-boolean p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/instagram/android/mediacache/DiskLruCache$Entry;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/instagram/android/mediacache/DiskLruCache$Entry;Lcom/instagram/android/mediacache/DiskLruCache$Editor;)Lcom/instagram/android/mediacache/DiskLruCache$Editor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 892
    iput-object p1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->currentEditor:Lcom/instagram/android/mediacache/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/instagram/android/mediacache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 892
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter "strings"

    .prologue
    .line 947
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4
    .parameter "strings"

    .prologue
    .line 933
    array-length v0, p1

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$2200(Lcom/instagram/android/mediacache/DiskLruCache;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 934
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 938
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 939
    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    invoke-direct {p0, p1}, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 944
    :cond_1
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 951
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$2300(Lcom/instagram/android/mediacache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 955
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->this$0:Lcom/instagram/android/mediacache/DiskLruCache;

    #getter for: Lcom/instagram/android/mediacache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/instagram/android/mediacache/DiskLruCache;->access$2300(Lcom/instagram/android/mediacache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7

    .prologue
    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    iget-object v2, p0, Lcom/instagram/android/mediacache/DiskLruCache$Entry;->lengths:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 924
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 926
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
