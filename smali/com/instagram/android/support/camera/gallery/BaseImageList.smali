.class public abstract Lcom/instagram/android/support/camera/gallery/BaseImageList;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/instagram/android/support/camera/gallery/IImageList;


# static fields
.field private static final CACHE_CAPACITY:I = 0x200

.field private static final TAG:Ljava/lang/String; = "BaseImageList"

.field private static final sPathWithId:Ljava/util/regex/Pattern;


# instance fields
.field protected mBaseUri:Landroid/net/Uri;

.field protected mBucketId:Ljava/lang/String;

.field private final mCache:Landroid/support/v4/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/c",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/android/support/camera/gallery/BaseImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorDeactivated:Z

.field protected mSort:I

.field protected mThumbUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/support/v4/c/c;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/support/v4/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCache:Landroid/support/v4/c/c;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    .line 55
    iput p3, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mSort:I

    .line 56
    iput-object p2, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 57
    iput-object p4, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mBucketId:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 61
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "BaseImageList"

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCache:Landroid/support/v4/c/c;

    invoke-virtual {v0}, Landroid/support/v4/c/c;->evictAll()V

    .line 69
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/instagram/android/support/camera/gallery/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isChildImageUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 185
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/support/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/support/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/support/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->invalidateCursor()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iput-object v3, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    iput-object v3, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 83
    :cond_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public contentUri(J)Landroid/net/Uri;
    .locals 2
    .parameter "id"

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 92
    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const-string v0, "BaseImageList"

    const-string v1, "id mismatch"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract createCursor()Landroid/database/Cursor;
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 103
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 3
    .parameter "i"

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCache:Landroid/support/v4/c/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/c/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/gallery/BaseImage;

    .line 125
    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 127
    if-nez v0, :cond_1

    move-object v0, v1

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    monitor-enter p0

    .line 129
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/instagram/android/support/camera/gallery/BaseImage;

    move-result-object v0

    .line 132
    :goto_1
    iget-object v1, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCache:Landroid/support/v4/c/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/c/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    .line 129
    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->isChildImageUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 202
    invoke-direct {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 203
    if-eqz v4, :cond_0

    .line 204
    monitor-enter p0

    .line 205
    const/4 v1, -0x1

    :try_start_1
    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 206
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 207
    invoke-virtual {p0, v4}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->getImageId(Landroid/database/Cursor;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    .line 208
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCache:Landroid/support/v4/c/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/c/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/gallery/BaseImage;

    .line 209
    if-nez v0, :cond_2

    .line 210
    invoke-virtual {p0, v4}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/instagram/android/support/camera/gallery/BaseImage;

    move-result-object v0

    .line 211
    iget-object v2, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCache:Landroid/support/v4/c/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/c/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    const-string v2, "BaseImageList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get id in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/instagram/android/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract getImageId(Landroid/database/Cursor;)J
.end method

.method public getImageIndex(Lcom/instagram/android/support/camera/gallery/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 221
    check-cast p1, Lcom/instagram/android/support/camera/gallery/BaseImage;

    .end local p1
    iget v0, p1, Lcom/instagram/android/support/camera/gallery/BaseImage;->mIndex:I

    return v0
.end method

.method protected invalidateCache()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCache:Landroid/support/v4/c/c;

    invoke-virtual {v0}, Landroid/support/v4/c/c;->evictAll()V

    .line 169
    return-void
.end method

.method protected invalidateCursor()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadImageFromCursor(Landroid/database/Cursor;)Lcom/instagram/android/support/camera/gallery/BaseImage;
.end method

.method public removeImage(Lcom/instagram/android/support/camera/gallery/IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p1}, Lcom/instagram/android/support/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    check-cast p1, Lcom/instagram/android/support/camera/gallery/BaseImage;

    .end local p1
    invoke-virtual {p1}, Lcom/instagram/android/support/camera/gallery/BaseImage;->onRemove()V

    .line 142
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->invalidateCursor()V

    .line 143
    invoke-virtual {p0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->invalidateCache()V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->getImageAt(I)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/support/camera/gallery/BaseImageList;->removeImage(Lcom/instagram/android/support/camera/gallery/IImage;)Z

    move-result v0

    return v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    iget v0, p0, Lcom/instagram/android/support/camera/gallery/BaseImageList;->mSort:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, " ASC"

    .line 237
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method
