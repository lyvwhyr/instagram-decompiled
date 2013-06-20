.class public Lcom/instagram/android/model/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Lcom/instagram/android/model/MinimialMedia;


# static fields
.field public static final BROADCAST_DELIMITER:Ljava/lang/String; = "|"

.field private static final BROADCAST_EXTRA_ID:Ljava/lang/String; = "id"

.field private static final BROADCAST_UPDATED_MEDIA:Ljava/lang/String; = "com.instagram.broadcasts.updated_media"

.field private static final COMMENT_COLLAPSE_THRESHOLD:I = 0x6

.field private static final COMMENT_MINIMUM_HIDDEN:I = 0x2

.field public static final DELETED_STATUS_DELETED:I = 0x2

.field public static final DELETED_STATUS_NONE:I = 0x0

.field public static final DELETED_STATUS_PENDING:I = 0x1

.field public static final EXTRA_RELOAD_TABLE:Ljava/lang/String; = "com.instagram.android.model.Media.reload_table"

.field private static final HIGH_RESOLUTION_VIDEO_SIZE:I = 0x280

.field private static final HIGH_RESOLUTION_VIDEO_TYPE:I = 0x65

.field private static final HIGH_RES_PX:I = 0x264

.field public static final INITIAL_CAPACITY_COMMENTS:I = 0x5

.field public static final LOG_TAG:Ljava/lang/String; = "Media"

.field private static final LOW_RESOLUTION_VIDEO_SIZE:I = 0x1e0

.field private static final LOW_RESOLUTION_VIDEO_TYPE:I = 0x66

.field private static final LOW_RES_PX:I = 0x132

.field private static final TAG:Ljava/lang/String; = "Media"

.field private static final THUMB_RES_PX:I = 0x96

.field private static mediaSize:Lcom/instagram/android/model/Media$MediaSize;


# instance fields
.field private likeCount:Ljava/lang/Integer;

.field private mActiveComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mAllComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mCaption:Lcom/instagram/android/model/Comment;

.field private mCommentCount:Ljava/lang/Integer;

.field private mCommentText:Ljava/lang/CharSequence;

.field private mDeletedStatus:I

.field private mFormattedDate:Ljava/lang/CharSequence;

.field private mHasLiked:Z

.field private mHasMoreComments:Z

.field private mHighResolutionVideoUrl:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

.field private mIsLoadingMoreComments:Z

.field private mLatitude:Ljava/lang/Double;

.field mLikeAttributedString:Ljava/lang/String;

.field mLikeText:Ljava/lang/CharSequence;

.field private mLikers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalBitmapUri:Landroid/net/Uri;

.field private mLocalVideoPath:Ljava/lang/String;

.field private mLongitude:Ljava/lang/Double;

.field private mLowResolutionUrl:Ljava/lang/String;

.field private mLowResolutionVideoUrl:Ljava/lang/String;

.field private mMediaType:Lcom/instagram/android/model/Media$MediaType;

.field private mPendingComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoOfCurrentUser:Z

.field private mPostedComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mStandardResolutionUrl:Ljava/lang/String;

.field private mTakenAt:D

.field private mThumbnailUrl:Ljava/lang/String;

.field private mUser:Lcom/instagram/android/model/User;

.field private mUsernameText:Ljava/lang/CharSequence;

.field private mVenue:Lcom/instagram/android/location/Venue;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mPendingComments:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLocalBitmapUri:Landroid/net/Uri;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mIsLoadingMoreComments:Z

    .line 182
    return-void
.end method

.method private clearLikeText()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 618
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLikeText:Ljava/lang/CharSequence;

    .line 619
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLikeAttributedString:Ljava/lang/String;

    .line 620
    return-void
.end method

.method private static computeMediaSize(Landroid/content/Context;)Lcom/instagram/android/model/Media$MediaSize;
    .locals 2
    .parameter "context"

    .prologue
    .line 833
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 834
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 835
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 836
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    rsub-int v0, v0, 0x132

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 837
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    rsub-int v1, v1, 0x264

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 838
    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/instagram/android/model/Media$MediaSize;->LOW_RES_PX:Lcom/instagram/android/model/Media$MediaSize;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/instagram/android/model/Media$MediaSize;->HIGH_RES_PX:Lcom/instagram/android/model/Media$MediaSize;

    goto :goto_0
.end method

.method private createLikersPageLink()Landroid/text/SpannableStringBuilder;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 795
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 796
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->number_of_people_who_like_this_photo:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 797
    new-instance v1, Lcom/instagram/android/model/Media$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/model/Media$1;-><init>(Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 807
    return-object v0
.end method

.method private drawComment(Landroid/text/SpannableStringBuilder;ILcom/instagram/android/model/Comment;)I
    .locals 3
    .parameter "stringBuilder"
    .parameter "offset"
    .parameter "commentToDraw"

    .prologue
    .line 955
    invoke-virtual {p3}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 957
    new-instance v0, Lcom/instagram/android/model/Media$2;

    invoke-direct {v0, p0, p3}, Lcom/instagram/android/model/Media$2;-><init>(Lcom/instagram/android/model/Media;Lcom/instagram/android/model/Comment;)V

    invoke-virtual {p3}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    const/16 v2, 0x21

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 967
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/instagram/android/model/Comment;->getAnnotatedText()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 968
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 969
    return p2
.end method

.method private drawMoreLink(Landroid/text/SpannableStringBuilder;I)I
    .locals 6
    .parameter "stringBuilder"
    .parameter "offset"

    .prologue
    .line 973
    new-instance v0, Lcom/instagram/android/model/Media$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/model/Media$3;-><init>(Lcom/instagram/android/model/Media;)V

    .line 986
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->view_all_x_comments:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 987
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, p2

    const/16 v2, 0x21

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 988
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 990
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 992
    return p2
.end method

.method public static fromJsonNode(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;
    .locals 2
    .parameter "mapper"
    .parameter "map"
    .parameter "m"

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    new-instance p2, Lcom/instagram/android/model/Media;

    .end local p2
    invoke-direct {p2}, Lcom/instagram/android/model/Media;-><init>()V

    .line 189
    .restart local p2
    :cond_0
    const-string v0, "image_versions"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/instagram/android/model/Media;->parseImageVersion(Ljava/util/Iterator;)V

    .line 190
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    .line 191
    const-string v0, "taken_at"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v0

    iput-wide v0, p2, Lcom/instagram/android/model/Media;->mTakenAt:D

    .line 192
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v1, Lcom/instagram/android/model/User;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/service/CustomObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    iput-object v0, p2, Lcom/instagram/android/model/Media;->mUser:Lcom/instagram/android/model/User;

    .line 194
    const-string v0, "photo_of_you"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "photo_of_you"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    iput-boolean v0, p2, Lcom/instagram/android/model/Media;->mPhotoOfCurrentUser:Z

    .line 198
    :cond_1
    invoke-direct {p2, p0, p1}, Lcom/instagram/android/model/Media;->setLikersFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 199
    invoke-direct {p2, p0, p1}, Lcom/instagram/android/model/Media;->setCommentsFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 200
    invoke-direct {p2, p0, p1}, Lcom/instagram/android/model/Media;->setLocationFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 201
    invoke-direct {p2, p0, p1}, Lcom/instagram/android/model/Media;->setUserTagsFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 203
    invoke-direct {p2}, Lcom/instagram/android/model/Media;->clearLikeText()V

    .line 204
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/instagram/android/model/Media;->mFormattedDate:Ljava/lang/CharSequence;

    .line 208
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getFormattedDate()Ljava/lang/CharSequence;

    .line 211
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/model/Media$MediaType;->fromServerValue(I)Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    iput-object v0, p2, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    .line 220
    :goto_0
    iget-object v0, p2, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_2

    .line 221
    const-string v0, "video_versions"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/instagram/android/model/Media;->parseVideoVersion(Ljava/util/Iterator;)V

    .line 224
    :cond_2
    return-object p2

    .line 216
    :cond_3
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    iput-object v0, p2, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    goto :goto_0
.end method

.method public static fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Media;
    .locals 7
    .parameter "jp"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 229
    move-object v0, v4

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_1f

    .line 233
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Lcom/instagram/android/model/Media;

    invoke-direct {v0}, Lcom/instagram/android/model/Media;-><init>()V

    .line 237
    iput-object v4, v0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    .line 238
    iput-object v4, v0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    .line 241
    :cond_1
    const-string v3, "id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 243
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_2
    const-string v3, "taken_at"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 246
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v5

    iput-wide v5, v0, Lcom/instagram/android/model/Media;->mTakenAt:D

    goto :goto_0

    .line 247
    :cond_3
    const-string v3, "user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 249
    invoke-static {p0}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Media;->mUser:Lcom/instagram/android/model/User;

    goto :goto_0

    .line 250
    :cond_4
    const-string v3, "image_versions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move v1, v2

    move-object v3, v4

    .line 254
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v6, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v6, "url"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 257
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 258
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 266
    :cond_6
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 267
    packed-switch v1, :pswitch_data_0

    :goto_3
    move v1, v2

    move-object v3, v4

    .line 279
    goto :goto_1

    .line 259
    :cond_7
    const-string v6, "type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 260
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 261
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    goto :goto_2

    .line 262
    :cond_8
    if-eqz v5, :cond_6

    .line 264
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 269
    :pswitch_0
    iput-object v3, v0, Lcom/instagram/android/model/Media;->mStandardResolutionUrl:Ljava/lang/String;

    goto :goto_3

    .line 272
    :pswitch_1
    iput-object v3, v0, Lcom/instagram/android/model/Media;->mLowResolutionUrl:Ljava/lang/String;

    goto :goto_3

    .line 275
    :pswitch_2
    iput-object v3, v0, Lcom/instagram/android/model/Media;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_3

    .line 282
    :cond_9
    const-string v3, "has_liked"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 283
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 284
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/instagram/android/model/Media;->mHasLiked:Z

    goto/16 :goto_0

    .line 285
    :cond_a
    const-string v3, "like_count"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 286
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 287
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 288
    :cond_b
    const-string v3, "likers"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 289
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_c

    .line 290
    iput-object v4, v0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    goto/16 :goto_0

    .line 292
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    :goto_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v5, :cond_d

    .line 296
    invoke-static {p0}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v3

    .line 297
    if-eqz v3, :cond_d

    .line 298
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 303
    :cond_d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    goto/16 :goto_0

    .line 305
    :cond_e
    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Media;->canParseAsCommentField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 306
    invoke-virtual {v0, p0}, Lcom/instagram/android/model/Media;->parseAsCommentField(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 307
    :cond_f
    const-string v3, "location"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 308
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 309
    invoke-static {p0}, Lcom/instagram/android/location/Venue;->fromMediaLocationParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/location/Venue;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;

    goto/16 :goto_0

    .line 310
    :cond_10
    const-string v3, "lat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 311
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 312
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Media;->mLatitude:Ljava/lang/Double;

    goto/16 :goto_0

    .line 313
    :cond_11
    const-string v3, "lng"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 314
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 315
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Media;->mLongitude:Ljava/lang/Double;

    goto/16 :goto_0

    .line 316
    :cond_12
    const-string v3, "usertags"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 317
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 318
    :cond_13
    :goto_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 320
    const-string v3, "in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 321
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_14

    .line 322
    iput-object v4, v0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    goto :goto_5

    .line 324
    :cond_14
    new-instance v1, Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v1}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>()V

    .line 325
    :goto_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v5, :cond_15

    .line 326
    invoke-static {p0}, Lcom/instagram/android/people/model/serialization/PeopleTagDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/people/model/PeopleTag;

    move-result-object v3

    .line 327
    if-eqz v3, :cond_15

    .line 328
    invoke-virtual {v1, v3}, Lcom/instagram/android/people/model/PeopleTagCollection;->add(Lcom/instagram/android/people/model/PeopleTag;)Z

    goto :goto_6

    .line 333
    :cond_15
    iput-object v1, v0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    goto :goto_5

    .line 335
    :cond_16
    if-eqz v1, :cond_13

    .line 336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_5

    .line 339
    :cond_17
    const-string v3, "photo_of_you"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 340
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 341
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/instagram/android/model/Media;->mPhotoOfCurrentUser:Z

    goto/16 :goto_0

    .line 342
    :cond_18
    const-string v3, "media_type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 343
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 344
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/model/Media$MediaType;->fromServerValue(I)Lcom/instagram/android/model/Media$MediaType;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    goto/16 :goto_0

    .line 345
    :cond_19
    const-string v3, "video_versions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 346
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move v1, v2

    move-object v3, v4

    .line 349
    :cond_1a
    :goto_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v6, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    .line 351
    const-string v6, "url"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 352
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 353
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 361
    :cond_1b
    :goto_8
    if-eqz v3, :cond_1a

    if-eqz v1, :cond_1a

    .line 362
    packed-switch v1, :pswitch_data_1

    :goto_9
    move v1, v2

    move-object v3, v4

    .line 371
    goto :goto_7

    .line 354
    :cond_1c
    const-string v6, "type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 355
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 356
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    goto :goto_8

    .line 357
    :cond_1d
    if-eqz v5, :cond_1b

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_8

    .line 364
    :pswitch_3
    iput-object v3, v0, Lcom/instagram/android/model/Media;->mLowResolutionVideoUrl:Ljava/lang/String;

    goto :goto_9

    .line 367
    :pswitch_4
    iput-object v3, v0, Lcom/instagram/android/model/Media;->mHighResolutionVideoUrl:Ljava/lang/String;

    goto :goto_9

    .line 374
    :cond_1e
    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 381
    :cond_1f
    iget-object v1, v0, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    if-nez v1, :cond_20

    .line 382
    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    iput-object v1, v0, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    .line 385
    :cond_20
    invoke-direct {v0}, Lcom/instagram/android/model/Media;->clearLikeText()V

    .line 387
    if-eqz v0, :cond_21

    .line 388
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v1

    .line 389
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/service/MediaStore;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 390
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/instagram/android/service/MediaStore;->put(Ljava/lang/String;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;

    .line 397
    :cond_21
    :goto_a
    return-object v0

    .line 392
    :cond_22
    invoke-virtual {v1, v0}, Lcom/instagram/android/service/MediaStore;->update(Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    goto :goto_a

    .line 267
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 362
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private generateActiveComments()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1023
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v0, v2, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment;

    .line 1027
    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/model/Comment$CommentPostedState;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1028
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1031
    :cond_2
    return-object v1
.end method

.method private generateCommentText()Ljava/lang/CharSequence;
    .locals 15

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getPostedComments()Ljava/util/ArrayList;

    move-result-object v10

    .line 883
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 884
    const/4 v5, 0x0

    .line 886
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 888
    :goto_0
    const/4 v4, 0x0

    .line 890
    iget-boolean v1, p0, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    if-eqz v1, :cond_4

    .line 891
    const/4 v2, 0x0

    .line 892
    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v8, v1

    move v9, v2

    .line 897
    :goto_1
    if-eqz v9, :cond_0

    iget-boolean v1, p0, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    if-eqz v1, :cond_7

    :cond_0
    const/4 v1, 0x1

    move v7, v1

    .line 898
    :goto_2
    if-eqz v7, :cond_8

    const/4 v1, 0x1

    :goto_3
    add-int v12, v8, v1

    .line 900
    const/4 v1, 0x0

    move v6, v1

    :goto_4
    if-ge v6, v12, :cond_e

    .line 901
    const/4 v2, 0x0

    .line 902
    const/4 v1, 0x0

    .line 903
    if-nez v6, :cond_a

    .line 908
    const/4 v3, 0x0

    .line 909
    invoke-direct {p0, v10, v3}, Lcom/instagram/android/model/Media;->getProtectedCommentIndex(Ljava/util/ArrayList;I)Lcom/instagram/android/model/Comment;

    move-result-object v3

    .line 910
    if-eqz v3, :cond_2

    .line 911
    if-nez v9, :cond_1

    invoke-virtual {v3}, Lcom/instagram/android/model/Comment;->getType()Lcom/instagram/android/model/Comment$CommentType;

    move-result-object v13

    sget-object v14, Lcom/instagram/android/model/Comment$CommentType;->Caption:Lcom/instagram/android/model/Comment$CommentType;

    if-ne v13, v14, :cond_9

    :cond_1
    move-object v2, v3

    .line 929
    :cond_2
    :goto_5
    if-eqz v2, :cond_d

    .line 930
    invoke-direct {p0, v11, v5, v2}, Lcom/instagram/android/model/Media;->drawComment(Landroid/text/SpannableStringBuilder;ILcom/instagram/android/model/Comment;)I

    move-result v1

    move v2, v1

    move v1, v4

    .line 900
    :goto_6
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v1

    move v5, v2

    goto :goto_4

    .line 886
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 894
    :cond_4
    add-int/lit8 v1, v0, -0x6

    const/4 v2, 0x2

    if-gt v1, v2, :cond_5

    const/4 v2, 0x1

    .line 895
    :goto_7
    if-eqz v2, :cond_6

    move v1, v0

    :goto_8
    move v8, v1

    move v9, v2

    goto :goto_1

    .line 894
    :cond_5
    const/4 v2, 0x0

    goto :goto_7

    .line 895
    :cond_6
    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_8

    .line 897
    :cond_7
    const/4 v1, 0x0

    move v7, v1

    goto :goto_2

    .line 898
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 914
    :cond_9
    const/4 v1, 0x1

    goto :goto_5

    .line 917
    :cond_a
    const/4 v3, 0x1

    if-ne v6, v3, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_b

    .line 918
    const/4 v1, 0x1

    goto :goto_5

    .line 920
    :cond_b
    if-eqz v9, :cond_c

    .line 921
    invoke-direct {p0, v10, v6}, Lcom/instagram/android/model/Media;->getProtectedCommentIndex(Ljava/util/ArrayList;I)Lcom/instagram/android/model/Comment;

    move-result-object v2

    goto :goto_5

    .line 923
    :cond_c
    sub-int v2, v0, v8

    .line 924
    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x1

    .line 925
    invoke-direct {p0, v10, v2}, Lcom/instagram/android/model/Media;->getProtectedCommentIndex(Ljava/util/ArrayList;I)Lcom/instagram/android/model/Comment;

    move-result-object v2

    goto :goto_5

    .line 932
    :cond_d
    if-eqz v1, :cond_10

    .line 933
    invoke-direct {p0, v11, v5}, Lcom/instagram/android/model/Media;->drawMoreLink(Landroid/text/SpannableStringBuilder;I)I

    move-result v2

    .line 934
    const/4 v1, 0x1

    goto :goto_6

    .line 938
    :cond_e
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 939
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 941
    :cond_f
    return-object v11

    :cond_10
    move v1, v4

    move v2, v5

    goto :goto_6
.end method

.method private generateLikersText()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 772
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 774
    const-string v0, ""

    .line 791
    :goto_0
    return-object v0

    .line 776
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 777
    const/4 v0, 0x0

    .line 778
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 779
    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/model/User;->createUserLink(Landroid/text/SpannableStringBuilder;I)V

    .line 780
    const-string v0, ", "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 781
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    move v1, v0

    .line 782
    goto :goto_1

    .line 783
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object v0, v2

    .line 785
    goto :goto_0

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 787
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->createLikersPageLink()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    .line 789
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private generatePostedComments()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 850
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v0, v2, :cond_0

    .line 851
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment;

    .line 854
    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v3, v4, :cond_1

    .line 855
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 858
    :cond_2
    return-object v1
.end method

.method private generateUsernameText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 869
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 870
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/model/User;->createUserLink(Landroid/text/SpannableStringBuilder;I)V

    .line 871
    return-object v0
.end method

.method public static getBestSizeMediaUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "highResolutionUrl"

    .prologue
    .line 820
    if-eqz p1, :cond_0

    const-string v0, "_7.jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    sget-object v0, Lcom/instagram/android/model/Media$4;->$SwitchMap$com$instagram$android$model$Media$MediaSize:[I

    invoke-static {p0}, Lcom/instagram/android/model/Media;->computeMediaSize(Landroid/content/Context;)Lcom/instagram/android/model/Media$MediaSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/Media$MediaSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 829
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 823
    .restart local p1
    :pswitch_0
    const-string v0, "_7.jpg"

    const-string v1, "_6.jpg"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMediaBroadcastString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.instagram.broadcasts.updated_media|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProtectedCommentIndex(Ljava/util/ArrayList;I)Lcom/instagram/android/model/Comment;
    .locals 5
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;I)",
            "Lcom/instagram/android/model/Comment;"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/Comment;>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :goto_0
    return-object v0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    const-string v0, "Media"

    const-string v1, "Attempt to get a comment that does not exist. index = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseImageVersion(Ljava/util/Iterator;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, nodes:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 587
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 588
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 596
    :pswitch_0
    iput-object v1, p0, Lcom/instagram/android/model/Media;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_0

    .line 590
    :pswitch_1
    iput-object v1, p0, Lcom/instagram/android/model/Media;->mStandardResolutionUrl:Ljava/lang/String;

    goto :goto_0

    .line 593
    :pswitch_2
    iput-object v1, p0, Lcom/instagram/android/model/Media;->mLowResolutionUrl:Ljava/lang/String;

    goto :goto_0

    .line 600
    :cond_0
    return-void

    .line 588
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseMediaIdFromBroadcast(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "broadcast"

    .prologue
    .line 177
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private parseVideoVersion(Ljava/util/Iterator;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, nodes:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 605
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 606
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 611
    :pswitch_0
    iput-object v1, p0, Lcom/instagram/android/model/Media;->mHighResolutionVideoUrl:Ljava/lang/String;

    goto :goto_0

    .line 608
    :pswitch_1
    iput-object v1, p0, Lcom/instagram/android/model/Media;->mLowResolutionVideoUrl:Ljava/lang/String;

    goto :goto_0

    .line 615
    :cond_0
    return-void

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCommentsFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 3
    .parameter "mapper"
    .parameter "map"

    .prologue
    const/4 v2, 0x0

    .line 469
    iput-object v2, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    .line 471
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 472
    const-string v0, "comments"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "comments"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v1, Lcom/instagram/android/model/Comment;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readArrayList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    .line 474
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment;

    .line 475
    invoke-virtual {v0, p0}, Lcom/instagram/android/model/Comment;->setMedia(Lcom/instagram/android/model/Media;)V

    goto :goto_0

    .line 478
    :cond_0
    iput-object v2, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    .line 481
    :cond_1
    const-string v0, "comment_count"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    .line 482
    const-string v0, "has_more_comments"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    .line 483
    const-string v0, "caption"

    invoke-static {p2, v0}, Lcom/instagram/util/JSONUtil;->exists(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    const-string v0, "caption"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v1, Lcom/instagram/android/model/Comment;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/android/service/CustomObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    .line 485
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0, p0}, Lcom/instagram/android/model/Comment;->setMedia(Lcom/instagram/android/model/Media;)V

    .line 490
    :goto_1
    return-void

    .line 487
    :cond_2
    iput-object v2, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    goto :goto_1
.end method

.method private setLikersFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 2
    .parameter "mapper"
    .parameter "map"

    .prologue
    .line 560
    const-string v0, "has_liked"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "has_liked"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mHasLiked:Z

    .line 563
    :cond_0
    const-string v0, "like_count"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    const-string v0, "like_count"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    .line 567
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    .line 568
    const-string v0, "likers"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 569
    const-string v0, "likers"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v1, Lcom/instagram/android/model/User;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readArrayList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    .line 572
    :cond_2
    return-void
.end method

.method private setLocationFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 2
    .parameter "mapper"
    .parameter "map"

    .prologue
    .line 453
    const-string v0, "location"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 454
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;

    .line 455
    if-eqz v0, :cond_0

    .line 457
    :try_start_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->traverse()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/location/Venue;->fromMediaLocationParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/location/Venue;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    const-string v0, "lat"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    const-string v0, "lat"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLatitude:Ljava/lang/Double;

    .line 463
    const-string v0, "lng"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLongitude:Ljava/lang/Double;

    .line 465
    :cond_1
    return-void

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUserTagsFromEntry(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 3
    .parameter "mapper"
    .parameter "map"

    .prologue
    .line 575
    const-string v0, "usertags"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_0

    .line 577
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_0

    .line 579
    new-instance v1, Lcom/instagram/android/people/model/PeopleTagCollection;

    const-class v2, Lcom/instagram/android/people/model/PeopleTag;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/android/service/CustomObjectMapper;->readArrayList(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 582
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastUpdatedMedia()V
    .locals 2

    .prologue
    .line 738
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 739
    return-void
.end method

.method public broadcastUpdatedMedia(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "reloadTable"

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 744
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/model/Media;->getMediaBroadcastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v1, "com.instagram.android.model.Media.reload_table"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 747
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 748
    return-void
.end method

.method public canParseAsCommentField(Ljava/lang/String;)Z
    .locals 2
    .parameter "fieldname"

    .prologue
    const/4 v0, 0x1

    .line 493
    const-string v1, "comments"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    const-string v1, "comment_count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    const-string v1, "has_more_comments"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    const-string v1, "caption"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCommentArrayCaches()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 554
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mActiveComments:Ljava/util/ArrayList;

    .line 555
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mPostedComments:Ljava/util/ArrayList;

    .line 556
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCommentText:Ljava/lang/CharSequence;

    .line 557
    return-void
.end method

.method public commentPostRequestFailed(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 1055
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1056
    return-void
.end method

.method public commentPostRequestFinished(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    .line 1049
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 1050
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1051
    return-void
.end method

.method public commentPostRequestStart(Lcom/instagram/android/model/Comment;Landroid/content/Context;)V
    .locals 2
    .parameter "comment"
    .parameter "context"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    iget-boolean v0, p0, Lcom/instagram/android/model/Media;->mIsLoadingMoreComments:Z

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mPendingComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 1044
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1045
    return-void
.end method

.method public commentRemoveRequestFailed()V
    .locals 2

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 1071
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1072
    return-void
.end method

.method public commentRemoveRequestFinished()V
    .locals 2

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 1065
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    .line 1066
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1067
    return-void
.end method

.method public commentRemoveRequestStarted()V
    .locals 2

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 1060
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1061
    return-void
.end method

.method public commentsRequestFailed()V
    .locals 2

    .prologue
    .line 1090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mIsLoadingMoreComments:Z

    .line 1091
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1092
    return-void
.end method

.method public commentsRequestFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1079
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mPendingComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/model/Media;->mPendingComments:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mPendingComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1084
    iput-boolean v2, p0, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    .line 1085
    iput-boolean v2, p0, Lcom/instagram/android/model/Media;->mIsLoadingMoreComments:Z

    .line 1086
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1087
    return-void
.end method

.method public commentsRequestStarted()V
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mIsLoadingMoreComments:Z

    .line 1076
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1167
    if-ne p0, p1, :cond_1

    .line 1172
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 1168
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1170
    :cond_3
    check-cast p1, Lcom/instagram/android/model/Media;

    .line 1172
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public getActiveComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mActiveComments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->generateActiveComments()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mActiveComments:Ljava/util/ArrayList;

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mActiveComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCaption()Lcom/instagram/android/model/Comment;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCommentText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCommentText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->generateCommentText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCommentText:Ljava/lang/CharSequence;

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mCommentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedStatus()I
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/instagram/android/model/Media;->mDeletedStatus:I

    return v0
.end method

.method public getFeedItemLocationType()Lcom/instagram/android/model/Media$FeedItemLocationType;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;

    iget-object v0, v0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 1100
    sget-object v0, Lcom/instagram/android/model/Media$FeedItemLocationType;->Foursquare:Lcom/instagram/android/model/Media$FeedItemLocationType;

    .line 1102
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/instagram/android/model/Media$FeedItemLocationType;->User:Lcom/instagram/android/model/Media$FeedItemLocationType;

    goto :goto_0
.end method

.method public getFormattedDate()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mFormattedDate:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 997
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/instagram/android/model/Media;->mTakenAt:D

    invoke-static {v0, v1, v2}, Lcom/instagram/util/TimespanUtils;->getShortenedFormattedDateRelativeToNow(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mFormattedDate:Ljava/lang/CharSequence;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mFormattedDate:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    return-object v0
.end method

.method public getInTagsCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 1113
    iget-object v0, v0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    .line 1115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLatitude:Ljava/lang/Double;

    goto :goto_0
.end method

.method public getLikeCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLikeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLikeText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->generateLikersText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLikeText:Ljava/lang/CharSequence;

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLikeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getLikers()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    return-object v0
.end method

.method public getLocalBitmapUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLocalBitmapUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLocalVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 1121
    iget-object v0, v0, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    .line 1123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLongitude:Ljava/lang/Double;

    goto :goto_0
.end method

.method protected getLowResolutionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLowResolutionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Lcom/instagram/android/model/Media$MediaType;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    return-object v0
.end method

.method public getPostedComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mPostedComments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->generatePostedComments()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mPostedComments:Ljava/util/ArrayList;

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mPostedComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSizedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 751
    sget-object v0, Lcom/instagram/android/model/Media;->mediaSize:Lcom/instagram/android/model/Media$MediaSize;

    if-nez v0, :cond_0

    .line 752
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/model/Media;->computeMediaSize(Landroid/content/Context;)Lcom/instagram/android/model/Media$MediaSize;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/model/Media;->mediaSize:Lcom/instagram/android/model/Media$MediaSize;

    .line 754
    :cond_0
    sget-object v0, Lcom/instagram/android/model/Media$4;->$SwitchMap$com$instagram$android$model$Media$MediaSize:[I

    sget-object v1, Lcom/instagram/android/model/Media;->mediaSize:Lcom/instagram/android/model/Media$MediaSize;

    invoke-virtual {v1}, Lcom/instagram/android/model/Media$MediaSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 759
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mStandardResolutionUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 756
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLowResolutionUrl:Ljava/lang/String;

    goto :goto_0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSizedVideoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 706
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 708
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 709
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 713
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLowResolutionVideoUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLowResolutionVideoUrl:Ljava/lang/String;

    .line 716
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mHighResolutionVideoUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getStandardResolutionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mStandardResolutionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTakenAt()D
    .locals 2

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/instagram/android/model/Media;->mTakenAt:D

    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/instagram/android/model/User;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public getUserNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mUsernameText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->generateUsernameText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mUsernameText:Ljava/lang/CharSequence;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mUsernameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVenue()Lcom/instagram/android/location/Venue;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;

    return-object v0
.end method

.method public hasInTags()Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

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

.method public hasLatLng()Z
    .locals 1

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocalBitmap()Z
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLocalBitmapUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/model/Media;->mLocalBitmapUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocalVideo()Z
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mLocalVideoPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/model/Media;->mLocalVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreComments()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasLiked()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/instagram/android/model/Media;->mHasLiked:Z

    return v0
.end method

.method public isLoadingMoreComments()Z
    .locals 1

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/instagram/android/model/Media;->mIsLoadingMoreComments:Z

    return v0
.end method

.method public isPhotoOfCurrentUser()Z
    .locals 1

    .prologue
    .line 1158
    iget-boolean v0, p0, Lcom/instagram/android/model/Media;->mPhotoOfCurrentUser:Z

    return v0
.end method

.method public parseAsCommentField(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 4
    .parameter "jp"

    .prologue
    .line 506
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 507
    const/4 v0, 0x0

    .line 508
    const-string v2, "comments"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 512
    invoke-static {p1}, Lcom/instagram/android/model/Comment;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Comment;

    move-result-object v2

    .line 513
    if-eqz v2, :cond_1

    .line 514
    invoke-virtual {v2}, Lcom/instagram/android/model/Comment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    invoke-virtual {v2, p0}, Lcom/instagram/android/model/Comment;->setMedia(Lcom/instagram/android/model/Media;)V

    .line 516
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_1
    iput-object v1, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    .line 545
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 548
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    if-lez v0, :cond_3

    .line 549
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    .line 551
    :cond_3
    return-void

    .line 525
    :cond_4
    const-string v2, "comment_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 526
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 527
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    goto :goto_1

    .line 528
    :cond_5
    const-string v2, "has_more_comments"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 529
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 530
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    goto :goto_1

    .line 531
    :cond_6
    const-string v2, "caption"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 533
    invoke-static {p1}, Lcom/instagram/android/model/Comment;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Comment;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    .line 534
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    invoke-virtual {v1}, Lcom/instagram/android/model/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 536
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    invoke-virtual {v1, p0}, Lcom/instagram/android/model/Comment;->setMedia(Lcom/instagram/android/model/Media;)V

    goto :goto_1

    .line 538
    :cond_7
    const/4 v0, 0x1

    .line 539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    goto :goto_1
.end method

.method public removeGeoData()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1139
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;

    .line 1140
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLatitude:Ljava/lang/Double;

    .line 1141
    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLongitude:Ljava/lang/Double;

    .line 1142
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 1143
    return-void
.end method

.method public setDeletedStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1011
    iput p1, p0, Lcom/instagram/android/model/Media;->mDeletedStatus:I

    .line 1012
    return-void
.end method

.method public setLocalBitmapUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/instagram/android/model/Media;->mLocalBitmapUri:Landroid/net/Uri;

    .line 1132
    return-void
.end method

.method public setLocalVideoUri(Ljava/lang/String;)V
    .locals 0
    .parameter "localVideoPath"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/instagram/android/model/Media;->mLocalVideoPath:Ljava/lang/String;

    .line 698
    return-void
.end method

.method public setPhotoOfCurrentUser(Z)V
    .locals 0
    .parameter "photoOfCurrentUser"

    .prologue
    .line 1162
    iput-boolean p1, p0, Lcom/instagram/android/model/Media;->mPhotoOfCurrentUser:Z

    .line 1163
    return-void
.end method

.method public updateFields(Lcom/instagram/android/model/Media;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    .line 404
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mId:Ljava/lang/String;

    .line 407
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mStandardResolutionUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getStandardResolutionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mStandardResolutionUrl:Ljava/lang/String;

    .line 410
    :cond_1
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mLowResolutionUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mLowResolutionUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLowResolutionUrl:Ljava/lang/String;

    .line 413
    :cond_2
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mThumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mThumbnailUrl:Ljava/lang/String;

    .line 416
    :cond_3
    iget-wide v0, p1, Lcom/instagram/android/model/Media;->mTakenAt:D

    iput-wide v0, p0, Lcom/instagram/android/model/Media;->mTakenAt:D

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mFormattedDate:Ljava/lang/CharSequence;

    .line 418
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->getFormattedDate()Ljava/lang/CharSequence;

    .line 419
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mUser:Lcom/instagram/android/model/User;

    if-eqz v0, :cond_4

    .line 420
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mUser:Lcom/instagram/android/model/User;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mUser:Lcom/instagram/android/model/User;

    .line 423
    :cond_4
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    .line 424
    iget-boolean v0, p1, Lcom/instagram/android/model/Media;->mHasLiked:Z

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mHasLiked:Z

    .line 425
    iget-object v0, p1, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    .line 427
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    .line 429
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 430
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mAllComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment;

    .line 431
    invoke-virtual {v0, p0}, Lcom/instagram/android/model/Comment;->setMedia(Lcom/instagram/android/model/Media;)V

    goto :goto_0

    .line 434
    :cond_5
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mVenue:Lcom/instagram/android/location/Venue;

    .line 435
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mLatitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLatitude:Ljava/lang/Double;

    .line 436
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mLongitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLongitude:Ljava/lang/Double;

    .line 437
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCommentCount:Ljava/lang/Integer;

    .line 438
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mCaption:Lcom/instagram/android/model/Comment;

    .line 439
    iget-boolean v0, p1, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mHasMoreComments:Z

    .line 440
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mInTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 441
    iget-boolean v0, p1, Lcom/instagram/android/model/Media;->mPhotoOfCurrentUser:Z

    iput-boolean v0, p0, Lcom/instagram/android/model/Media;->mPhotoOfCurrentUser:Z

    .line 443
    iget-object v0, p0, Lcom/instagram/android/model/Media;->mMediaType:Lcom/instagram/android/model/Media$MediaType;

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_6

    .line 444
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mHighResolutionVideoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mHighResolutionVideoUrl:Ljava/lang/String;

    .line 445
    iget-object v0, p1, Lcom/instagram/android/model/Media;->mLowResolutionVideoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/model/Media;->mLowResolutionVideoUrl:Ljava/lang/String;

    .line 448
    :cond_6
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->clearLikeText()V

    .line 449
    invoke-virtual {p0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 450
    return-void
.end method

.method public updatedHasLiked(Z)V
    .locals 2
    .parameter "hasLiked"

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/instagram/android/model/Media;->mHasLiked:Z

    if-eq v0, p1, :cond_1

    .line 722
    iput-boolean p1, p0, Lcom/instagram/android/model/Media;->mHasLiked:Z

    .line 723
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 725
    if-eqz p1, :cond_2

    .line 726
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    .line 732
    invoke-direct {p0}, Lcom/instagram/android/model/Media;->clearLikeText()V

    .line 733
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 735
    :cond_1
    return-void

    .line 728
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/model/Media;->mLikers:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/model/Media;->likeCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
