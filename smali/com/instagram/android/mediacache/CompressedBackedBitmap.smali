.class public Lcom/instagram/android/mediacache/CompressedBackedBitmap;
.super Ljava/lang/Object;
.source "CompressedBackedBitmap.java"


# instance fields
.field private compressedImageSize:I

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "bitmap"
    .parameter "compressedImageSize"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/android/mediacache/CompressedBackedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 15
    iput p2, p0, Lcom/instagram/android/mediacache/CompressedBackedBitmap;->compressedImageSize:I

    .line 16
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/mediacache/CompressedBackedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCompressedImageSize()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/instagram/android/mediacache/CompressedBackedBitmap;->compressedImageSize:I

    return v0
.end method
