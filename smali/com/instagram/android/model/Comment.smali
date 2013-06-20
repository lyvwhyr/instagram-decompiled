.class public Lcom/instagram/android/model/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# static fields
.field public static BROADCAST_EXTRA_USER_NAME:Ljava/lang/String;

.field public static BROADCAST_HASH_TAG_CLICKED:Ljava/lang/String;

.field public static BROADCAST_HASH_TAG_NAME:Ljava/lang/String;

.field public static BROADCAST_USER_NAME_LINK_CLICKED:Ljava/lang/String;


# instance fields
.field private contentType:Ljava/lang/String;

.field private mAnnotatedText:Landroid/text/SpannableStringBuilder;

.field private mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

.field private mCreatedAt:J

.field private mFormattedCommentText:Ljava/lang/CharSequence;

.field private mFormattedDate:Ljava/lang/String;

.field private mMedia:Lcom/instagram/android/model/Media;

.field private mMediaId:Ljava/lang/String;

.field private mPk:Ljava/lang/String;

.field private mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

.field private mText:Ljava/lang/String;

.field private mType:Lcom/instagram/android/model/Comment$CommentType;

.field private mUser:Lcom/instagram/android/model/User;

.field private mWasMarkedAsSpamErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com.instagram.android.model.Comment.BROADCAST_USER_LINK_CLICKED"

    sput-object v0, Lcom/instagram/android/model/Comment;->BROADCAST_USER_NAME_LINK_CLICKED:Ljava/lang/String;

    .line 36
    const-string v0, "com.instagram.android.model.Comment.BROADCAST_EXTRA_USER_NAME"

    sput-object v0, Lcom/instagram/android/model/Comment;->BROADCAST_EXTRA_USER_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "com.instagram.android.model.Comment.BROADCAST_HASH_TAG_CLICKED"

    sput-object v0, Lcom/instagram/android/model/Comment;->BROADCAST_HASH_TAG_CLICKED:Ljava/lang/String;

    .line 38
    const-string v0, "com.instagram.android.model.Comment.BROADCAST_EXTRA_HASH_TAG_NAME"

    sput-object v0, Lcom/instagram/android/model/Comment;->BROADCAST_HASH_TAG_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/instagram/android/model/Media;Lcom/instagram/android/model/User;Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 2
    .parameter "text"
    .parameter "media"
    .parameter "user"
    .parameter "parentFragment"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/instagram/android/model/Comment;->mMedia:Lcom/instagram/android/model/Media;

    .line 148
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mMediaId:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/instagram/android/model/Comment;->mUser:Lcom/instagram/android/model/User;

    .line 150
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Posting:Lcom/instagram/android/model/Comment$CommentPostedState;

    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 151
    invoke-static {}, Lcom/instagram/util/TimespanUtils;->getCurrentTimeInSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/model/Comment;->mCreatedAt:J

    .line 152
    iput-object p4, p0, Lcom/instagram/android/model/Comment;->mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/model/Comment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mPk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/model/Comment;)Lcom/instagram/android/model/Media;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mMedia:Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method private buildHashText(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const/4 v5, 0x1

    .line 201
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->hashMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 202
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v2, Lcom/instagram/android/model/Comment$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/instagram/android/model/Comment$2;-><init>(Lcom/instagram/android/model/Comment;ZLjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method private buildMentionText(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const/4 v5, 0x2

    .line 186
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->mentionMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 187
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v2, Lcom/instagram/android/model/Comment$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/instagram/android/model/Comment$1;-><init>(Lcom/instagram/android/model/Comment;ZLjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public static fromJsonNode(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/model/Comment;
    .locals 4
    .parameter "mapper"
    .parameter "map"

    .prologue
    .line 86
    new-instance v1, Lcom/instagram/android/model/Comment;

    invoke-direct {v1}, Lcom/instagram/android/model/Comment;-><init>()V

    .line 87
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v2, Lcom/instagram/android/model/User;

    invoke-virtual {p0, v0, v2}, Lcom/instagram/android/service/CustomObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    iput-object v0, v1, Lcom/instagram/android/model/Comment;->mUser:Lcom/instagram/android/model/User;

    .line 88
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    .line 89
    const-string v0, "media_id"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/Comment;->mMediaId:Ljava/lang/String;

    .line 90
    const-string v0, "pk"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/Comment;->mPk:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    iput-object v0, v1, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 92
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/model/Comment$CommentType;->fromValue(I)Lcom/instagram/android/model/Comment$CommentType;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/model/Comment;->mType:Lcom/instagram/android/model/Comment$CommentType;

    .line 93
    const-string v0, "created_at"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/instagram/android/model/Comment;->mCreatedAt:J

    .line 94
    invoke-virtual {v1}, Lcom/instagram/android/model/Comment;->getAnnotatedText()Landroid/text/SpannableStringBuilder;

    .line 95
    return-object v1
.end method

.method public static fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Comment;
    .locals 3
    .parameter "jp"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_9

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_9

    .line 105
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/instagram/android/model/Comment;

    invoke-direct {v0}, Lcom/instagram/android/model/Comment;-><init>()V

    .line 109
    sget-object v2, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    iput-object v2, v0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 112
    :cond_1
    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 114
    invoke-static {p0}, Lcom/instagram/android/model/User;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/User;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Comment;->mUser:Lcom/instagram/android/model/User;

    goto :goto_0

    .line 115
    :cond_2
    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 117
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_3
    const-string v2, "media_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 120
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Comment;->mMediaId:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_4
    const-string v2, "pk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 123
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Comment;->mPk:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_5
    const-string v2, "pk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 126
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Comment;->mMediaId:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_6
    const-string v2, "type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 129
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/model/Comment$CommentType;->fromValue(I)Lcom/instagram/android/model/Comment$CommentType;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Comment;->mType:Lcom/instagram/android/model/Comment$CommentType;

    goto/16 :goto_0

    .line 130
    :cond_7
    const-string v2, "created_at"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 132
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/android/model/Comment;->mCreatedAt:J

    goto/16 :goto_0

    .line 133
    :cond_8
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 139
    :cond_9
    return-object v0
.end method

.method private setPostedState(Lcom/instagram/android/model/Comment$CommentPostedState;)V
    .locals 0
    .parameter "postedState"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 330
    return-void
.end method


# virtual methods
.method commentDeleteFailed()V
    .locals 3

    .prologue
    .line 285
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    invoke-direct {p0, v0}, Lcom/instagram/android/model/Comment;->setPostedState(Lcom/instagram/android/model/Comment$CommentPostedState;)V

    .line 286
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/instagram/android/fragment/CommentThreadFragment;->onPostCommentFailed(Lcom/instagram/android/model/Comment;ZLjava/lang/String;)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->commentRemoveRequestFailed()V

    .line 290
    return-void
.end method

.method commentDeleteFinished()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Deleted:Lcom/instagram/android/model/Comment$CommentPostedState;

    invoke-direct {p0, v0}, Lcom/instagram/android/model/Comment;->setPostedState(Lcom/instagram/android/model/Comment$CommentPostedState;)V

    .line 281
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->commentRemoveRequestFinished()V

    .line 282
    return-void
.end method

.method public forceRemove(Landroid/support/v4/app/af;Z)V
    .locals 4
    .parameter "loaderManager"
    .parameter "reportAsAbuse"

    .prologue
    .line 324
    const-string v0, "media/%s/comment/%s/delete/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/model/Comment;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/android/model/Comment;->mPk:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/instagram/android/model/Comment$DeleteCommentRequest;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/instagram/android/model/Comment$DeleteCommentRequest;-><init>(Lcom/instagram/android/model/Comment;Landroid/support/v4/app/af;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/instagram/android/model/Comment$DeleteCommentRequest;->perform()V

    .line 326
    return-void
.end method

.method public getAnnotatedText()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mAnnotatedText:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/instagram/android/model/Comment;->buildMentionText(Landroid/text/SpannableStringBuilder;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/instagram/android/model/Comment;->buildHashText(Landroid/text/SpannableStringBuilder;)V

    .line 180
    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mAnnotatedText:Landroid/text/SpannableStringBuilder;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mAnnotatedText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/instagram/android/model/Comment;->mCreatedAt:J

    return-wide v0
.end method

.method public getFormattedCommentText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mFormattedCommentText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/model/User;->createUserLink(Landroid/text/SpannableStringBuilder;I)V

    .line 235
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getAnnotatedText()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mFormattedCommentText:Ljava/lang/CharSequence;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mFormattedCommentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormattedDate(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/instagram/android/model/Comment;->mCreatedAt:J

    invoke-static {p1, v0, v1}, Lcom/instagram/util/TimespanUtils;->getFormattedDateRelativeToNow(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkedAsSpamErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mWasMarkedAsSpamErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Lcom/instagram/android/model/Media;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mMedia:Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mPk:Ljava/lang/String;

    return-object v0
.end method

.method public getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/instagram/android/model/Comment$CommentType;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mType:Lcom/instagram/android/model/Comment$CommentType;

    return-object v0
.end method

.method public getUser()Lcom/instagram/android/model/User;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public remove(Landroid/support/v4/app/af;)V
    .locals 1
    .parameter "loaderManager"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;Z)V

    .line 321
    return-void
.end method

.method public remove(Landroid/support/v4/app/af;Z)V
    .locals 2
    .parameter "loaderManager"
    .parameter "reportAsAbuse"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v0, v1, :cond_0

    .line 306
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

    invoke-direct {p0, v0}, Lcom/instagram/android/model/Comment;->setPostedState(Lcom/instagram/android/model/Comment$CommentPostedState;)V

    .line 307
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->commentRemoveRequestStarted()V

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/model/Comment;->forceRemove(Landroid/support/v4/app/af;Z)V

    .line 317
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Failure:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v0, v1, :cond_1

    .line 310
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

    invoke-direct {p0, v0}, Lcom/instagram/android/model/Comment;->setPostedState(Lcom/instagram/android/model/Comment$CommentPostedState;)V

    .line 311
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->commentRemoveRequestStarted()V

    .line 312
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->commentDeleteFinished()V

    goto :goto_0

    .line 315
    :cond_1
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

    invoke-direct {p0, v0}, Lcom/instagram/android/model/Comment;->setPostedState(Lcom/instagram/android/model/Comment$CommentPostedState;)V

    goto :goto_0
.end method

.method public setMedia(Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter "media"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/instagram/android/model/Comment;->mMedia:Lcom/instagram/android/model/Media;

    .line 221
    return-void
.end method

.method public updateFromCommentPostFailed(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "wasMarkedAsSpam"
    .parameter "optionalErrorMessageFromServer"

    .prologue
    .line 262
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Failure:Lcom/instagram/android/model/Comment$CommentPostedState;

    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 264
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 265
    iput-object p3, p0, Lcom/instagram/android/model/Comment;->mWasMarkedAsSpamErrorMessage:Ljava/lang/String;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0, p0, p2, p3}, Lcom/instagram/android/fragment/CommentThreadFragment;->onPostCommentFailed(Lcom/instagram/android/model/Comment;ZLjava/lang/String;)V

    .line 275
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/model/Media;->commentPostRequestFailed(Landroid/content/Context;)V

    .line 276
    return-void

    .line 271
    :cond_2
    if-eqz p2, :cond_1

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;)V

    goto :goto_0
.end method

.method public updateFromCommentPostSuccess(Lcom/fasterxml/jackson/databind/JsonNode;Landroid/content/Context;)V
    .locals 2
    .parameter "comment"
    .parameter "context"

    .prologue
    .line 246
    invoke-static {p1}, Lcom/instagram/util/JSONUtil;->safeParsePK(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mPk:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getPostedState()Lcom/instagram/android/model/Comment$CommentPostedState;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-ne v0, v1, :cond_1

    .line 250
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 251
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mCommentThreadFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    iput-object v0, p0, Lcom/instagram/android/model/Comment;->mPostedState:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 256
    invoke-virtual {p0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/model/Media;->commentPostRequestFinished(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public wasMarkedAsSpam()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/instagram/android/model/Comment;->mWasMarkedAsSpamErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
