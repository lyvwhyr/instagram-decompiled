.class public Lcom/instagram/android/mediacache/CompressedBackedLruCache;
.super Landroid/support/v4/c/c;
.source "CompressedBackedLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/c/c",
        "<TT;",
        "Lcom/instagram/android/mediacache/CompressedBackedBitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "maxSize"
    .parameter "maxEntries"
    .parameter "minTrimCount"

    .prologue
    .line 15
    .local p0, this:Lcom/instagram/android/mediacache/CompressedBackedLruCache;,"Lcom/instagram/android/mediacache/CompressedBackedLruCache<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/c/c;-><init>(III)V

    .line 16
    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Lcom/instagram/android/mediacache/CompressedBackedBitmap;)I
    .locals 1
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/instagram/android/mediacache/CompressedBackedBitmap;",
            ")I"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/instagram/android/mediacache/CompressedBackedLruCache;,"Lcom/instagram/android/mediacache/CompressedBackedLruCache<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Lcom/instagram/android/mediacache/CompressedBackedBitmap;->getCompressedImageSize()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    .local p0, this:Lcom/instagram/android/mediacache/CompressedBackedLruCache;,"Lcom/instagram/android/mediacache/CompressedBackedLruCache<TT;>;"
    check-cast p2, Lcom/instagram/android/mediacache/CompressedBackedBitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/mediacache/CompressedBackedLruCache;->sizeOf(Ljava/lang/Object;Lcom/instagram/android/mediacache/CompressedBackedBitmap;)I

    move-result v0

    return v0
.end method
