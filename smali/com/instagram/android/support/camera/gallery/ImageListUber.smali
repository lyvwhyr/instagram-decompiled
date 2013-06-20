.class public Lcom/instagram/android/support/camera/gallery/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/instagram/android/support/camera/gallery/IImageList;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageListUber"


# instance fields
.field private mLastListIndex:I

.field private final mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipCounts:[I

.field private mSkipList:[J

.field private mSkipListSize:I

.field private final mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;


# direct methods
.method public constructor <init>([Lcom/instagram/android/support/camera/gallery/IImageList;I)V
    .locals 5
    .parameter "sublist"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, [Lcom/instagram/android/support/camera/gallery/IImageList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/support/camera/gallery/IImageList;

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    .line 58
    new-instance v2, Ljava/util/PriorityQueue;

    const/4 v3, 0x4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/instagram/android/support/camera/gallery/ImageListUber$AscendingComparator;

    invoke-direct {v0, v4}, Lcom/instagram/android/support/camera/gallery/ImageListUber$AscendingComparator;-><init>(Lcom/instagram/android/support/camera/gallery/ImageListUber$1;)V

    :goto_0
    invoke-direct {v2, v3, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    .line 62
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    .line 63
    iput v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    .line 64
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 66
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 67
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    array-length v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    aget-object v1, v1, v0

    .line 69
    new-instance v3, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;-><init>(Lcom/instagram/android/support/camera/gallery/IImageList;I)V

    .line 70
    invoke-virtual {v3}, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    new-instance v0, Lcom/instagram/android/support/camera/gallery/ImageListUber$DescendingComparator;

    invoke-direct {v0, v4}, Lcom/instagram/android/support/camera/gallery/ImageListUber$DescendingComparator;-><init>(Lcom/instagram/android/support/camera/gallery/ImageListUber$1;)V

    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method private modifySkipCountForDeletedImage(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 179
    .line 180
    iget v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 181
    iget-object v3, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v3, v3, v0

    .line 182
    const-wide/16 v5, -0x1

    and-long/2addr v5, v3

    long-to-int v5, v5

    .line 183
    add-int v6, v1, v5

    if-le v6, p1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    const-wide/16 v5, 0x1

    sub-long v2, v3, v5

    aput-wide v2, v1, v0

    .line 189
    :cond_0
    return-void

    .line 187
    :cond_1
    add-int/2addr v1, v5

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextMergeSlot()Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 147
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;

    .line 148
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget v1, v0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iget v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mLastListIndex:I

    if-ne v1, v2, :cond_1

    .line 150
    iget v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v1, v1, -0x1

    .line 151
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v3, v2, v1

    add-long/2addr v3, v6

    aput-wide v3, v2, v1

    goto :goto_0

    .line 153
    :cond_1
    iget v1, v0, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    iput v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mLastListIndex:I

    .line 154
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    array-length v1, v1

    iget v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    if-ne v1, v2, :cond_2

    .line 155
    iget v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    .line 156
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    iget v3, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iput-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    iget v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    iget v3, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mLastListIndex:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    aput-wide v3, v1, v2

    goto :goto_0
.end method

.method private removeImage(Lcom/instagram/android/support/camera/gallery/IImage;I)Z
    .locals 1
    .parameter "image"
    .parameter "index"

    .prologue
    .line 192
    invoke-interface {p1}, Lcom/instagram/android/support/camera/gallery/IImage;->getContainer()Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/instagram/android/support/camera/gallery/IImageList;->removeImage(Lcom/instagram/android/support/camera/gallery/IImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, p2}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 296
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/instagram/android/support/camera/gallery/IImageList;->close()V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 77
    invoke-interface {v4}, Lcom/instagram/android/support/camera/gallery/IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 84
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 85
    invoke-interface {v4}, Lcom/instagram/android/support/camera/gallery/IImageList;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return v1
.end method

.method public getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 8
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 103
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->getCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipCounts:[I

    .line 111
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 121
    iget v3, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    .line 122
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v4, v2, v1

    .line 124
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v6, v6

    .line 125
    const/16 v2, 0x20

    shr-long/2addr v4, v2

    long-to-int v4, v4

    .line 126
    add-int v2, v0, v6

    if-le v2, p1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v1, v1, v4

    sub-int v0, p1, v0

    add-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    aget-object v1, v1, v4

    invoke-interface {v1, v0}, Lcom/instagram/android/support/camera/gallery/IImageList;->getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    .line 140
    :cond_2
    :goto_1
    return-object v0

    .line 130
    :cond_3
    add-int v2, v0, v6

    .line 131
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipCounts:[I

    aget v5, v0, v4

    add-int/2addr v5, v6

    aput v5, v0, v4

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {v1}, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 135
    :cond_6
    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v1

    .line 136
    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    .line 137
    :cond_7
    if-ne v0, p1, :cond_4

    .line 138
    iget-object v0, v1, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    .line 139
    invoke-virtual {v1}, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 4
    .parameter "uri"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 166
    invoke-interface {v0, p1}, Lcom/instagram/android/support/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 169
    :goto_1
    return-object v0

    .line 165
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getImageIndex(Lcom/instagram/android/support/camera/gallery/IImage;)I
    .locals 12
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 211
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/instagram/android/support/camera/gallery/IImage;->getContainer()Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    invoke-static {v3, v2}, Lcom/instagram/android/support/camera/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 213
    if-ne v5, v1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :cond_0
    :try_start_1
    invoke-interface {v2, p1}, Lcom/instagram/android/support/camera/gallery/IImageList;->getImageIndex(Lcom/instagram/android/support/camera/gallery/IImage;)I

    move-result v2

    .line 220
    iget v6, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipListSize:I

    move v3, v0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_0
    if-ge v3, v6, :cond_7

    .line 221
    iget-object v4, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSkipList:[J

    aget-wide v7, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const-wide/16 v9, -0x1

    and-long/2addr v9, v7

    long-to-int v4, v9

    .line 223
    const/16 v9, 0x20

    shr-long/2addr v7, v9

    long-to-int v7, v7

    .line 224
    if-ne v7, v5, :cond_3

    .line 225
    if-ge v0, v4, :cond_2

    .line 226
    add-int/2addr v0, v2

    .line 238
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    .line 228
    :cond_2
    sub-int/2addr v0, v4

    .line 230
    :cond_3
    add-int/2addr v4, v2

    .line 220
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_0

    .line 240
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 234
    :goto_2
    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->nextMergeSlot()Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v2

    .line 235
    if-nez v2, :cond_6

    move v0, v1

    goto :goto_1

    .line 236
    :cond_6
    iget-object v3, v2, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;

    if-ne v3, p1, :cond_4

    .line 237
    invoke-virtual {v2}, Lcom/instagram/android/support/camera/gallery/ImageListUber$MergeSlot;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/ImageListUber;->mSubList:[Lcom/instagram/android/support/camera/gallery/IImageList;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 92
    invoke-interface {v4}, Lcom/instagram/android/support/camera/gallery/IImageList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    :goto_1
    return v0

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public removeImage(Lcom/instagram/android/support/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->getImageIndex(Lcom/instagram/android/support/camera/gallery/IImage;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->removeImage(Lcom/instagram/android/support/camera/gallery/IImage;I)Z

    move-result v0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/instagram/android/support/camera/gallery/ImageListUber;->removeImage(Lcom/instagram/android/support/camera/gallery/IImage;I)Z

    move-result v0

    goto :goto_0
.end method
