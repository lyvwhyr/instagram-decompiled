.class public Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;
.super Ljava/lang/Object;
.source "IgVideoCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mSnapshot:Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;)V
    .locals 0
    .parameter "snapshot"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;->mSnapshot:Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;

    .line 79
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;->mSnapshot:Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->close()V

    .line 88
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;->mSnapshot:Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method
