.class public Lcom/instagram/android/model/User;
.super Ljava/lang/Object;
.source "User.java"


# static fields
.field public static final BROADCAST_EXTRA_ID:Ljava/lang/String; = "id"

.field private static final COM_INSTAGRAM_BROADCASTS_UPDATED_FRIEND_STATUS:Ljava/lang/String; = "com.instagram.broadcasts.updated_friend_status"

.field private static final COM_INSTAGRAM_BROADCASTS_UPDATED_USER:Ljava/lang/String; = "com.instagram.broadcasts.updated_user"

.field private static broadcastUpdateHandler:Landroid/os/Handler;

.field private static mUserObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private mBiography:Ljava/lang/String;

.field private mBlocking:Z

.field private mCurrentFollowUpdateRequest:Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

.field private mExternalUrl:Ljava/lang/String;

.field private mExtraDisplayName:Ljava/lang/String;

.field private mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

.field private mFollowerCount:Ljava/lang/Integer;

.field private mFollowingCount:Ljava/lang/Integer;

.field private mFullName:Ljava/lang/String;

.field private mFullNameConcat:Ljava/lang/String;

.field private mGeoPhotoCount:Ljava/lang/Integer;

.field private mId:Ljava/lang/String;

.field private mIncomingRequestPending:Ljava/lang/Boolean;

.field private mIsStaff:Z

.field private mIsVerified:Z

.field private mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

.field private mMediaCount:Ljava/lang/Integer;

.field private mPeopleTagReviewEnabled:Z

.field private mPeopleTagsCount:Ljava/lang/Integer;

.field private mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

.field private mProfilePicUrl:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusUnknown:Lcom/instagram/android/model/User$PrivacyStatus;

    iput-object v0, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 71
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 72
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;

    iput-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/model/User;->mIsVerified:Z

    .line 874
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/instagram/android/model/User;->broadcastUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/model/User;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/instagram/android/model/User;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/instagram/android/model/User;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/instagram/android/model/User;->mIsStaff:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/instagram/android/model/User;Lcom/instagram/android/model/User$FollowStatus;)Lcom/instagram/android/model/User$FollowStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mMediaCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/instagram/android/model/User;Lcom/instagram/android/model/User$PrivacyStatus;)Lcom/instagram/android/model/User$PrivacyStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mProfilePicUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/instagram/android/model/User;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/instagram/android/model/User;->mIsVerified:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/instagram/android/model/User;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mBiography:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mExternalUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mGeoPhotoCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$602(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mPeopleTagsCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$802(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mFollowingCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$902(Lcom/instagram/android/model/User;Lcom/instagram/android/model/User$FollowStatus;)Lcom/instagram/android/model/User$FollowStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    return-object p1
.end method

.method private static broadcastUpdate(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 592
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 593
    invoke-static {p0}, Lcom/instagram/android/model/User;->getUserBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 596
    return-void
.end method

.method private static createFullnameConcact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fullName"

    .prologue
    .line 248
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/instagram/android/model/User;->stripWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static fromAutoCompleteJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;
    .locals 3
    .parameter "jp"

    .prologue
    .line 368
    new-instance v0, Lcom/instagram/android/model/User;

    invoke-direct {v0}, Lcom/instagram/android/model/User;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 374
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 382
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    .line 383
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mProfilePicUrl:Ljava/lang/String;

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 414
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    .line 415
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 424
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    .line 432
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    .line 433
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 439
    :cond_3
    if-eqz v0, :cond_4

    .line 440
    invoke-static {v0}, Lcom/instagram/android/model/User;->updateInUserStore(Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    move-result-object v0

    .line 443
    :cond_4
    return-object v0
.end method

.method public static fromJsonNode(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;
    .locals 2
    .parameter "map"
    .parameter "u"

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-direct {p1}, Lcom/instagram/android/model/User;-><init>()V

    .line 200
    .restart local p1
    :cond_0
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;

    .line 201
    const-string v0, "full_name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    .line 202
    const-string v0, "profile_pic_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mProfilePicUrl:Ljava/lang/String;

    .line 203
    invoke-static {p0}, Lcom/instagram/util/JSONUtil;->safeParsePK(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    .line 204
    const-string v0, "is_staff"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "is_staff"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    iput-boolean v0, p1, Lcom/instagram/android/model/User;->mIsStaff:Z

    .line 207
    :cond_1
    const-string v0, "usertag_review_enabled"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "usertag_review_enabled"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    iput-boolean v0, p1, Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z

    .line 210
    :cond_2
    const-string v0, "biography"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "biography"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_3

    .line 211
    const-string v0, "biography"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 213
    iput-object v0, p1, Lcom/instagram/android/model/User;->mBiography:Ljava/lang/String;

    .line 216
    :cond_3
    const-string v0, "external_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "external_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    const-string v0, "external_url"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mExternalUrl:Ljava/lang/String;

    .line 219
    :cond_4
    const-string v0, "follower_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 220
    const-string v0, "follower_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    .line 222
    :cond_5
    const-string v0, "following_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 223
    const-string v0, "following_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mFollowingCount:Ljava/lang/Integer;

    .line 225
    :cond_6
    const-string v0, "media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 226
    const-string v0, "media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mMediaCount:Ljava/lang/Integer;

    .line 228
    :cond_7
    const-string v0, "is_private"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 229
    const-string v0, "is_private"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    :goto_0
    iput-object v0, p1, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 231
    :cond_8
    const-string v0, "geo_media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 232
    const-string v0, "geo_media_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mGeoPhotoCount:Ljava/lang/Integer;

    .line 234
    :cond_9
    const-string v0, "usertags_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 235
    const-string v0, "usertags_count"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mPeopleTagsCount:Ljava/lang/Integer;

    .line 237
    :cond_a
    const-string v0, "is_verified"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 238
    const-string v0, "is_verified"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    iput-boolean v0, p1, Lcom/instagram/android/model/User;->mIsVerified:Z

    .line 240
    :cond_b
    const-string v0, "extra_display_name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 241
    const-string v0, "extra_display_name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/instagram/android/model/User;->mExtraDisplayName:Ljava/lang/String;

    .line 244
    :cond_c
    return-object p1

    .line 229
    :cond_d
    sget-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

    goto :goto_0
.end method

.method public static fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;
    .locals 3
    .parameter "jp"

    .prologue
    const/4 v0, 0x0

    .line 252
    .line 254
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_15

    .line 259
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 262
    new-instance v0, Lcom/instagram/android/model/User;

    invoke-direct {v0}, Lcom/instagram/android/model/User;-><init>()V

    .line 265
    :cond_2
    const-string v2, "username"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 267
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;

    goto :goto_1

    .line 269
    :cond_3
    const-string v2, "full_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 271
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_4
    const-string v2, "profile_pic_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 274
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mProfilePicUrl:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_5
    const-string v2, "is_staff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 277
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 278
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/instagram/android/model/User;->mIsStaff:Z

    goto :goto_1

    .line 280
    :cond_6
    const-string v2, "usertag_review_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 281
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 282
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z

    goto :goto_1

    .line 284
    :cond_7
    const-string v2, "biography"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 285
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 286
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v1}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    iput-object v1, v0, Lcom/instagram/android/model/User;->mBiography:Ljava/lang/String;

    goto/16 :goto_1

    .line 292
    :cond_8
    const-string v2, "external_url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 293
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 294
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mExternalUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 297
    :cond_9
    const-string v2, "follower_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 298
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 299
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 301
    :cond_a
    const-string v2, "following_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 302
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 303
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mFollowingCount:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 305
    :cond_b
    const-string v2, "media_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 306
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 307
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mMediaCount:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 309
    :cond_c
    const-string v2, "is_private"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 310
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 311
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    :goto_2
    iput-object v1, v0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    goto/16 :goto_1

    :cond_d
    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

    goto :goto_2

    .line 313
    :cond_e
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 314
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 315
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    goto/16 :goto_1

    .line 317
    :cond_f
    const-string v2, "pk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 318
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 319
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    goto/16 :goto_1

    .line 320
    :cond_10
    const-string v2, "geo_media_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 321
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 322
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mGeoPhotoCount:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 323
    :cond_11
    const-string v2, "usertags_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 324
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 325
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mPeopleTagsCount:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 326
    :cond_12
    const-string v2, "is_verified"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 327
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 328
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/instagram/android/model/User;->mIsVerified:Z

    goto/16 :goto_1

    .line 329
    :cond_13
    const-string v2, "extra_display_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 330
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 331
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/User;->mExtraDisplayName:Ljava/lang/String;

    goto/16 :goto_1

    .line 334
    :cond_14
    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 340
    :cond_15
    if-eqz v0, :cond_0

    .line 341
    invoke-static {v0}, Lcom/instagram/android/model/User;->updateInUserStore(Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getUserBroadcastId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "userId"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.instagram.broadcasts.updated_user|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserFollowUpdateBroadcastId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "userId"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.instagram.broadcasts.updated_friend_status|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserFromSerializedData(Ljava/lang/String;)Lcom/instagram/android/model/User;
    .locals 2
    .parameter "currentUserData"

    .prologue
    .line 120
    invoke-static {}, Lcom/instagram/android/model/User;->getUserObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    const-class v1, Lcom/instagram/android/model/User;

    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public static getUserListFromSerializedData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/instagram/android/model/User;->getUserObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    const-class v2, Lcom/instagram/android/model/User;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/instagram/android/model/User;->getUserObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getUserListSerialized(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;"
    invoke-static {}, Lcom/instagram/android/model/User;->getUserObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lcom/instagram/android/model/User;->mUserObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "UserModule"

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 127
    const-class v1, Lcom/instagram/android/model/User;

    new-instance v2, Lcom/instagram/android/model/User$LocalJson$Serializer;

    invoke-direct {v2}, Lcom/instagram/android/model/User$LocalJson$Serializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 128
    const-class v1, Lcom/instagram/android/model/User;

    new-instance v2, Lcom/instagram/android/model/User$LocalJson$Deserializer;

    invoke-direct {v2}, Lcom/instagram/android/model/User$LocalJson$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 129
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/model/User;->mUserObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 131
    :cond_0
    sget-object v0, Lcom/instagram/android/model/User;->mUserObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/instagram/android/model/User$2;

    invoke-direct {v0}, Lcom/instagram/android/model/User$2;-><init>()V

    sput-object v0, Lcom/instagram/android/model/User;->broadcastUpdateHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method public static isUserObject(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 112
    instance-of v0, p0, Lcom/instagram/android/model/User;

    return v0
.end method

.method private sendFollowUpdateBroadcast(Lcom/instagram/android/model/User;Landroid/content/Context;)V
    .locals 3
    .parameter "user"
    .parameter "context"

    .prologue
    .line 847
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 848
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/model/User;->getUserFollowUpdateBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    invoke-static {p2}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 851
    return-void
.end method

.method private setFollowStatusFromNetworkResponse(ZZLcom/instagram/api/loaderrequest/AbstractLoaderRequest;)V
    .locals 2
    .parameter "following"
    .parameter "outgoingRequestPending"
    .parameter "request"

    .prologue
    .line 819
    if-eqz p2, :cond_1

    .line 820
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    .line 837
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/model/User;->mCurrentFollowUpdateRequest:Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/model/User;->mCurrentFollowUpdateRequest:Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

    if-ne v1, p3, :cond_3

    .line 838
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/android/model/User;->mCurrentFollowUpdateRequest:Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

    .line 839
    iget-object v1, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    iput-object v1, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 840
    iput-object v0, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 844
    :goto_1
    return-void

    .line 821
    :cond_1
    if-eqz p1, :cond_2

    .line 822
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    goto :goto_0

    .line 824
    :cond_2
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    goto :goto_0

    .line 842
    :cond_3
    iput-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    goto :goto_1
.end method

.method private static stripWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fullName"

    .prologue
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateInUserStore(Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;
    .locals 2
    .parameter "u"

    .prologue
    .line 348
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 350
    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/instagram/android/service/UserStore;->put(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    .line 356
    :goto_0
    return-object p0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/instagram/android/service/UserStore;->update(Ljava/lang/String;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/model/User;->broadcastCoalescedUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public broadcastCoalescedUpdate(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 599
    sget-object v0, Lcom/instagram/android/model/User;->broadcastUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 600
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 601
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 603
    sget-object v1, Lcom/instagram/android/model/User;->broadcastUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    sget-object v1, Lcom/instagram/android/model/User;->broadcastUpdateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 605
    return-void
.end method

.method public broadcastUpdate()V
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/model/User;->broadcastUpdate(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method public canView()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 994
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instagram/android/model/User;->isSelf(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v0

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getPrivacyStatus()Lcom/instagram/android/model/User$PrivacyStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getPrivacyStatus()Lcom/instagram/android/model/User$PrivacyStatus;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    invoke-virtual {v1, v2}, Lcom/instagram/android/model/User$PrivacyStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {v1, v2}, Lcom/instagram/android/model/User$FollowStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 998
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createUserLink(Landroid/text/SpannableStringBuilder;I)V
    .locals 3
    .parameter "stringBuilder"
    .parameter "offset"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    new-instance v0, Lcom/instagram/android/model/User$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/model/User$1;-><init>(Lcom/instagram/android/model/User;)V

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    const/16 v2, 0x21

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 978
    if-ne p0, p1, :cond_1

    .line 985
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 979
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

    .line 981
    :cond_3
    check-cast p1, Lcom/instagram/android/model/User;

    .line 983
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBiography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/instagram/android/model/User;->mBiography:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/instagram/android/model/User;->mExternalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/instagram/android/model/User;->mExtraDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    return-object v0
.end method

.method public getFollowerCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFollowingCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNameConcat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFullNameConcat:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/model/User;->createFullnameConcact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFullNameConcat:Ljava/lang/String;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFullNameConcat:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNameOrUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    .line 524
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGeoPhotoCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/model/User;->mGeoPhotoCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFollowStatus()Lcom/instagram/android/model/User$FollowStatus;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    return-object v0
.end method

.method public getMediaCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/instagram/android/model/User;->mMediaCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPeopleTagsCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/instagram/android/model/User;->mPeopleTagsCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrivacyStatus()Lcom/instagram/android/model/User$PrivacyStatus;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    return-object v0
.end method

.method public getProfilePicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/instagram/android/model/User;->mProfilePicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSerialized()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/instagram/android/model/User;->getUserObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    return v0
.end method

.method public isIncomingRequestPending()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/instagram/android/model/User;->mIncomingRequestPending:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/User;->mIncomingRequestPending:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsStaff()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/instagram/android/model/User;->mIsStaff:Z

    return v0
.end method

.method public isPeopleTagReviewEnabled()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z

    return v0
.end method

.method public isSelf(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 866
    invoke-static {}, Lcom/instagram/util/PreferenceUtil;->getGlobalPreferences()Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/instagram/android/model/User;->mIsVerified:Z

    return v0
.end method

.method public optimisticallyFollowOrRequestFollow()V
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 651
    sget-object v1, Lcom/instagram/android/model/User$4;->$SwitchMap$com$instagram$android$model$User$FollowStatus:[I

    invoke-virtual {v0}, Lcom/instagram/android/model/User$FollowStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 665
    :goto_0
    return-void

    .line 653
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusUnknown:Lcom/instagram/android/model/User$PrivacyStatus;

    if-ne v0, v1, :cond_1

    .line 655
    :cond_0
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    .line 664
    :goto_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/instagram/android/model/User$FollowStatus;Lcom/instagram/android/model/User$UserAction;Landroid/content/Context;)V

    goto :goto_0

    .line 657
    :cond_1
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    goto :goto_1

    .line 651
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public revertBlockStatus(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    .line 746
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->broadcastUpdate()V

    .line 747
    return-void

    .line 745
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public revertFollowStatus(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {p0, v0, v1, p1}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/instagram/android/model/User$FollowStatus;Lcom/instagram/android/model/User$UserAction;Landroid/content/Context;)V

    .line 740
    :cond_0
    iput-object v1, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 741
    return-void
.end method

.method public setBiography(Ljava/lang/String;)V
    .locals 0
    .parameter "biography"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/instagram/android/model/User;->mBiography:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public setExternalUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "externalUrl"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/instagram/android/model/User;->mExternalUrl:Ljava/lang/String;

    .line 561
    return-void
.end method

.method protected setFullName(Ljava/lang/String;)V
    .locals 0
    .parameter "fullName"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setPeopleTagReviewEnabled(Z)V
    .locals 0
    .parameter "peopleTagReviewEnabled"

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z

    .line 545
    return-void
.end method

.method public setPrivacyStatus(Lcom/instagram/android/model/User$PrivacyStatus;)V
    .locals 0
    .parameter "privacyStatus"

    .prologue
    .line 858
    iput-object p1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 859
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public toggleBlockStatus(Landroid/content/Context;Landroid/support/v4/app/af;)V
    .locals 3
    .parameter "context"
    .parameter "loaderManager"

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unblock"

    .line 669
    :goto_0
    iget-boolean v1, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    .line 670
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->broadcastUpdate()V

    .line 672
    new-instance v1, Lcom/instagram/android/model/User$3;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/model/User$3;-><init>(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    .line 691
    new-instance v2, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;

    invoke-direct {v2, p1, p2, v1}, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v2, p0, v0}, Lcom/instagram/api/loaderrequest/BlockStatusUpdateRequest;->perform(Lcom/instagram/android/model/User;Ljava/lang/String;)V

    .line 692
    return-void

    .line 668
    :cond_0
    const-string v0, "block"

    goto :goto_0

    .line 669
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toggleFollowStatus(Landroid/content/Context;Landroid/support/v4/app/af;)V
    .locals 3
    .parameter "context"
    .parameter "loadManager"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 615
    sget-object v1, Lcom/instagram/android/model/User$4;->$SwitchMap$com$instagram$android$model$User$FollowStatus:[I

    invoke-virtual {v0}, Lcom/instagram/android/model/User$FollowStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 641
    :goto_0
    return-void

    .line 617
    :pswitch_0
    sget-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionUnfollow:Lcom/instagram/android/model/User$UserAction;

    .line 618
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    .line 637
    :goto_1
    invoke-virtual {p0, v1, v0, p1}, Lcom/instagram/android/model/User;->updateFollowStatus(Lcom/instagram/android/model/User$FollowStatus;Lcom/instagram/android/model/User$UserAction;Landroid/content/Context;)V

    .line 639
    new-instance v1, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/User$UserAction;Lcom/instagram/android/model/User;)V

    iput-object v1, p0, Lcom/instagram/android/model/User;->mCurrentFollowUpdateRequest:Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

    .line 640
    iget-object v0, p0, Lcom/instagram/android/model/User;->mCurrentFollowUpdateRequest:Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->perform()V

    goto :goto_0

    .line 621
    :pswitch_1
    sget-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionFollow:Lcom/instagram/android/model/User$UserAction;

    .line 622
    iget-object v1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    sget-object v2, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    sget-object v2, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusUnknown:Lcom/instagram/android/model/User$PrivacyStatus;

    if-ne v1, v2, :cond_1

    .line 624
    :cond_0
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    goto :goto_1

    .line 626
    :cond_1
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    goto :goto_1

    .line 630
    :pswitch_2
    sget-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionCancelRequest:Lcom/instagram/android/model/User$UserAction;

    .line 631
    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    goto :goto_1

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateFields(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "inUser"

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mId:Ljava/lang/String;

    .line 450
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;

    .line 453
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;

    .line 456
    :cond_2
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mProfilePicUrl:Ljava/lang/String;

    .line 459
    :cond_3
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isIsStaff()Z

    move-result v0

    iget-boolean v1, p0, Lcom/instagram/android/model/User;->mIsStaff:Z

    if-eq v0, v1, :cond_4

    .line 460
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isIsStaff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/model/User;->mIsStaff:Z

    .line 462
    :cond_4
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isPeopleTagReviewEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z

    if-eq v0, v1, :cond_5

    .line 463
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isPeopleTagReviewEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z

    .line 465
    :cond_5
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 466
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mBiography:Ljava/lang/String;

    .line 468
    :cond_6
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 469
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mExternalUrl:Ljava/lang/String;

    .line 471
    :cond_7
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowerCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 472
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowerCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    .line 474
    :cond_8
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowingCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 475
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowingCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFollowingCount:Ljava/lang/Integer;

    .line 477
    :cond_9
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getMediaCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 478
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getMediaCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mMediaCount:Ljava/lang/Integer;

    .line 480
    :cond_a
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPrivacyStatus()Lcom/instagram/android/model/User$PrivacyStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    if-eq v0, v1, :cond_b

    .line 481
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPrivacyStatus()Lcom/instagram/android/model/User$PrivacyStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 483
    :cond_b
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getGeoPhotoCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 484
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getGeoPhotoCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mGeoPhotoCount:Ljava/lang/Integer;

    .line 486
    :cond_c
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPeopleTagsCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 487
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPeopleTagsCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mPeopleTagsCount:Ljava/lang/Integer;

    .line 489
    :cond_d
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExtraDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 490
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExtraDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mExtraDisplayName:Ljava/lang/String;

    .line 494
    :cond_e
    iget-object v0, p1, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;

    if-eq v0, v1, :cond_f

    .line 495
    iget-object v0, p1, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 496
    iget-object v0, p1, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    iput-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 499
    :cond_f
    iget-object v0, p1, Lcom/instagram/android/model/User;->mIncomingRequestPending:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 500
    iget-object v0, p1, Lcom/instagram/android/model/User;->mIncomingRequestPending:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/instagram/android/model/User;->mIncomingRequestPending:Ljava/lang/Boolean;

    .line 502
    :cond_10
    return-void
.end method

.method public updateFollowStatus(Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Landroid/content/Context;)V
    .locals 4
    .parameter "jp"
    .parameter "request"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 780
    .line 782
    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

    iput-object v1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    move v1, v0

    .line 784
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_5

    .line 785
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 786
    const-string v3, "following"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 788
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v1

    goto :goto_0

    .line 789
    :cond_1
    const-string v3, "outgoing_request"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 790
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 791
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    goto :goto_0

    .line 792
    :cond_2
    const-string v3, "incoming_request"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 793
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 794
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/model/User;->mIncomingRequestPending:Ljava/lang/Boolean;

    goto :goto_0

    .line 795
    :cond_3
    const-string v3, "is_private"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 796
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 797
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    sget-object v2, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    iput-object v2, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    goto :goto_0

    .line 800
    :cond_4
    const-string v3, "blocking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 802
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    goto :goto_0

    .line 806
    :cond_5
    invoke-direct {p0, v1, v0, p2}, Lcom/instagram/android/model/User;->setFollowStatusFromNetworkResponse(ZZLcom/instagram/api/loaderrequest/AbstractLoaderRequest;)V

    .line 808
    invoke-direct {p0, p0, p3}, Lcom/instagram/android/model/User;->sendFollowUpdateBroadcast(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    .line 809
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/instagram/android/model/User;->sendFollowUpdateBroadcast(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    .line 810
    return-void
.end method

.method public updateFollowStatus(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;Landroid/content/Context;)V
    .locals 5
    .parameter "map"
    .parameter "request"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 753
    const-string v0, "following"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v3

    .line 754
    const-string v0, "outgoing_request"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "outgoing_request"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 757
    :goto_0
    const-string v4, "incoming_request"

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "incoming_request"

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/model/User;->mIncomingRequestPending:Ljava/lang/Boolean;

    .line 760
    const-string v1, "is_private"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 761
    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    iput-object v1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    .line 766
    :goto_2
    const-string v1, "blocking"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 767
    const-string v1, "blocking"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/android/model/User;->mBlocking:Z

    .line 770
    :cond_0
    invoke-direct {p0, v3, v0, p2}, Lcom/instagram/android/model/User;->setFollowStatusFromNetworkResponse(ZZLcom/instagram/api/loaderrequest/AbstractLoaderRequest;)V

    .line 772
    invoke-direct {p0, p0, p3}, Lcom/instagram/android/model/User;->sendFollowUpdateBroadcast(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    .line 773
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/instagram/android/model/User;->sendFollowUpdateBroadcast(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    .line 774
    return-void

    :cond_1
    move v0, v2

    .line 754
    goto :goto_0

    :cond_2
    move v1, v2

    .line 757
    goto :goto_1

    .line 763
    :cond_3
    sget-object v1, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

    iput-object v1, p0, Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;

    goto :goto_2
.end method

.method public updateFollowStatus(Lcom/instagram/android/model/User$FollowStatus;Lcom/instagram/android/model/User$UserAction;Landroid/content/Context;)V
    .locals 2
    .parameter "newStatus"
    .parameter "action"
    .parameter "context"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    iput-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 709
    iput-object p1, p0, Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    .line 713
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFetching:Lcom/instagram/android/model/User$FollowStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;

    if-eq p1, v0, :cond_0

    .line 717
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/User$FollowStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    .line 719
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->broadcastUpdate()V

    .line 729
    :cond_0
    :goto_0
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;

    if-eq p1, v0, :cond_1

    .line 730
    invoke-direct {p0, p0, p3}, Lcom/instagram/android/model/User;->sendFollowUpdateBroadcast(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    .line 731
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/instagram/android/model/User;->sendFollowUpdateBroadcast(Lcom/instagram/android/model/User;Landroid/content/Context;)V

    .line 733
    :cond_1
    return-void

    .line 720
    :cond_2
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/User$FollowStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionCancelRequest:Lcom/instagram/android/model/User$UserAction;

    if-eq p2, v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;

    .line 723
    invoke-virtual {p0}, Lcom/instagram/android/model/User;->broadcastUpdate()V

    goto :goto_0
.end method
