.class public Lcom/instagram/android/model/PendingMedia;
.super Ljava/lang/Object;
.source "PendingMedia.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PendingMedia"


# instance fields
.field private inTags:Lcom/instagram/android/people/model/PeopleTagCollection;

.field private mCaption:Ljava/lang/String;

.field private mFacebookEnabled:Z

.field private mFilterType:I

.field private mFlickrEnabled:Z

.field private mFoursquareEnabled:Z

.field private mImageFilePath:Ljava/lang/String;

.field private mInProgress:Z

.field private mKey:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mMediaId:Ljava/lang/String;

.field private mMediaType:Lcom/instagram/android/model/Media$MediaType;

.field private mOrientation:I

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private volatile mServerStatus:Lcom/instagram/android/model/PendingMedia$Status;

.field private mSourceType:I

.field private mStitchedVideoFilePath:Ljava/lang/String;

.field private volatile mTargetStatus:Lcom/instagram/android/model/PendingMedia$Status;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTumblrEnabled:Z

.field private mTwitterEnabled:Z

.field private mVenue:Lcom/instagram/android/location/Venue;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoLength:F

.field private mVideoResult:Ljava/lang/String;

.field private mVideoSessionPath:Ljava/lang/String;

.field private mVideoUploadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/video/api/VideoUploadUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    iput-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mServerStatus:Lcom/instagram/android/model/PendingMedia$Status;

    .line 40
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    iput-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mTargetStatus:Lcom/instagram/android/model/PendingMedia$Status;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/model/PendingMedia;->mVideoLength:F

    .line 73
    new-instance v0, Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/model/PendingMedia;->inTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 114
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mKey:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static createImage(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;
    .locals 2
    .parameter "imageFilePath"
    .parameter "key"

    .prologue
    .line 91
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/instagram/android/model/PendingMedia;

    invoke-direct {v0, p1}, Lcom/instagram/android/model/PendingMedia;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    iput-object v1, v0, Lcom/instagram/android/model/PendingMedia;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    .line 94
    invoke-virtual {v0, p0}, Lcom/instagram/android/model/PendingMedia;->setImageFilePath(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createVideo(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;
    .locals 2
    .parameter "key"

    .prologue
    .line 108
    new-instance v0, Lcom/instagram/android/model/PendingMedia;

    invoke-direct {v0, p0}, Lcom/instagram/android/model/PendingMedia;-><init>(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    iput-object v1, v0, Lcom/instagram/android/model/PendingMedia;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    .line 110
    return-object v0
.end method


# virtual methods
.method public clearGeotag()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lcom/instagram/android/model/PendingMedia;->mLatitude:D

    .line 159
    iput-wide v0, p0, Lcom/instagram/android/model/PendingMedia;->mLongitude:D

    .line 160
    return-void
.end method

.method public createThumbnail(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "size"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mImageFilePath:Ljava/lang/String;

    invoke-static {v0, p1, p1}, Lcom/instagram/util/BitmapHelper;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mFilterType:I

    return v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInProgress()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/instagram/android/model/PendingMedia;->mInProgress:Z

    return v0
.end method

.method public getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->inTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/instagram/android/model/PendingMedia;->mLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/instagram/android/model/PendingMedia;->mLongitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Lcom/instagram/android/model/Media$MediaType;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mOrientation:I

    return v0
.end method

.method public getOriginalHeight()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalHeight:I

    return v0
.end method

.method public getOriginalWidth()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalWidth:I

    return v0
.end method

.method public getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mServerStatus:Lcom/instagram/android/model/PendingMedia$Status;

    return-object v0
.end method

.method public getShortestOriginalSide()I
    .locals 2

    .prologue
    .line 340
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalHeight:I

    iget v1, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mSourceType:I

    return v0
.end method

.method public getStitchedVideoFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mStitchedVideoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetStatus()Lcom/instagram/android/model/PendingMedia$Status;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mTargetStatus:Lcom/instagram/android/model/PendingMedia$Status;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVenue()Lcom/instagram/android/location/Venue;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mVenue:Lcom/instagram/android/location/Venue;

    return-object v0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mVideoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mVideoLength:F

    return v0
.end method

.method public getVideoResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mVideoResult:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSessionPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mVideoSessionPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUploadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/video/api/VideoUploadUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mVideoUploadUrls:Ljava/util/List;

    return-object v0
.end method

.method public hasInTags()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/instagram/android/model/PendingMedia;->inTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOriginalSize()Z
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFacebookEnabled()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/instagram/android/model/PendingMedia;->mFacebookEnabled:Z

    return v0
.end method

.method public isFlickrEnabled()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/instagram/android/model/PendingMedia;->mFlickrEnabled:Z

    return v0
.end method

.method public isFoursquareEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/instagram/android/model/PendingMedia;->mFoursquareEnabled:Z

    return v0
.end method

.method public isGeotagEnabled()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 154
    iget-wide v0, p0, Lcom/instagram/android/model/PendingMedia;->mLatitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/instagram/android/model/PendingMedia;->mLongitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTumblrEnabled()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/instagram/android/model/PendingMedia;->mTumblrEnabled:Z

    return v0
.end method

.method public isTwitterEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/instagram/android/model/PendingMedia;->mTwitterEnabled:Z

    return v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "caption"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mCaption:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .parameter "filterType"

    .prologue
    .line 142
    iput p1, p0, Lcom/instagram/android/model/PendingMedia;->mFilterType:I

    .line 143
    return-void
.end method

.method public setImageFilePath(Ljava/lang/String;)V
    .locals 2
    .parameter "imageFilePath"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mImageFilePath:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 215
    sget v1, Lcom/facebook/e;->pending_media_row_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/instagram/android/model/PendingMedia;->createThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/PendingMedia;->mThumbnail:Landroid/graphics/Bitmap;

    .line 217
    return-void
.end method

.method public setInProgress(Z)V
    .locals 0
    .parameter "inProgress"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/instagram/android/model/PendingMedia;->mInProgress:Z

    .line 261
    return-void
.end method

.method public setInTags(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/people/model/PeopleTag;>;"
    new-instance v0, Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v0, p1}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/instagram/android/model/PendingMedia;->inTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 313
    return-void
.end method

.method public setIsFacebookEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/instagram/android/model/PendingMedia;->mFacebookEnabled:Z

    .line 245
    return-void
.end method

.method public setIsFlickrEnabled(Z)V
    .locals 0
    .parameter "flickrEnabled"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/instagram/android/model/PendingMedia;->mFlickrEnabled:Z

    .line 305
    return-void
.end method

.method public setIsFoursquareEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/instagram/android/model/PendingMedia;->mFoursquareEnabled:Z

    .line 249
    return-void
.end method

.method public setIsTumblrEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/instagram/android/model/PendingMedia;->mTumblrEnabled:Z

    .line 253
    return-void
.end method

.method public setIsTwitterEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/instagram/android/model/PendingMedia;->mTwitterEnabled:Z

    .line 241
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mKey:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/instagram/android/model/PendingMedia;->mLatitude:D

    .line 168
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/instagram/android/model/PendingMedia;->mLongitude:D

    .line 176
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaId"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mMediaId:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 348
    iput p1, p0, Lcom/instagram/android/model/PendingMedia;->mOrientation:I

    .line 349
    return-void
.end method

.method public setOriginalHeight(I)V
    .locals 0
    .parameter "originalHeight"

    .prologue
    .line 336
    iput p1, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalHeight:I

    .line 337
    return-void
.end method

.method public setOriginalWidth(I)V
    .locals 0
    .parameter "originalWidth"

    .prologue
    .line 328
    iput p1, p0, Lcom/instagram/android/model/PendingMedia;->mOriginalWidth:I

    .line 329
    return-void
.end method

.method public setServerStatus(Lcom/instagram/android/model/PendingMedia$Status;)V
    .locals 0
    .parameter "serverStatus"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mServerStatus:Lcom/instagram/android/model/PendingMedia$Status;

    .line 269
    return-void
.end method

.method public setSourceType(I)V
    .locals 0
    .parameter "sourceType"

    .prologue
    .line 134
    iput p1, p0, Lcom/instagram/android/model/PendingMedia;->mSourceType:I

    .line 135
    return-void
.end method

.method public setStitchedVideoFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "stitchedVideoFilePath"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mStitchedVideoFilePath:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setTargetStatus(Lcom/instagram/android/model/PendingMedia$Status;)V
    .locals 0
    .parameter "targetStatus"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mTargetStatus:Lcom/instagram/android/model/PendingMedia$Status;

    .line 277
    return-void
.end method

.method public setVenue(Lcom/instagram/android/location/Venue;)V
    .locals 0
    .parameter "venue"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mVenue:Lcom/instagram/android/location/Venue;

    .line 204
    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "videoFilePath"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mVideoFilePath:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setVideoLength(F)V
    .locals 0
    .parameter "videoLength"

    .prologue
    .line 368
    iput p1, p0, Lcom/instagram/android/model/PendingMedia;->mVideoLength:F

    .line 369
    return-void
.end method

.method public setVideoResult(Ljava/lang/String;)V
    .locals 0
    .parameter "videoResult"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mVideoResult:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setVideoSessionPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionPath"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mVideoSessionPath:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setVideoUploadUrls(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/video/api/VideoUploadUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, videoUploadUrls:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/video/api/VideoUploadUrl;>;"
    iput-object p1, p0, Lcom/instagram/android/model/PendingMedia;->mVideoUploadUrls:Ljava/util/List;

    .line 301
    return-void
.end method
