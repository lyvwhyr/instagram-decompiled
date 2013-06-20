.class Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;
.super Ljava/lang/Object;
.source "ImageListUber.java"


# instance fields
.field mDateTaken:J

.field mImage:Lcom/instagram/android/support/camera/gallery/IImage;

.field private final mList:Lcom/instagram/android/support/camera/gallery/IImageList;

.field mListIndex:I

.field private mOffset:I


# direct methods
.method public constructor <init>(Lcom/instagram/android/support/camera/gallery/IImageList;I)V
    .locals 1
    .parameter "list"
    .parameter "index"

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    .line 282
    iput-object p1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mList:Lcom/instagram/android/support/camera/gallery/IImageList;

    .line 283
    iput p2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    .line 284
    return-void
.end method


# virtual methods
.method public next()Z
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mList:Lcom/instagram/android/support/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/instagram/android/support/camera/gallery/IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mList:Lcom/instagram/android/support/camera/gallery/IImageList;

    iget v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    invoke-interface {v0, v1}, Lcom/instagram/android/support/camera/gallery/IImageList;->getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    .line 289
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    invoke-interface {v0}, Lcom/instagram/android/support/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mDateTaken:J

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method
