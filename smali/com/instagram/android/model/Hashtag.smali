.class public Lcom/instagram/android/model/Hashtag;
.super Ljava/lang/Object;
.source "Hashtag.java"


# static fields
.field public static BROADCAST_HASHTAG_UPDATED:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "Hashtag"

.field private static sContentAdvisoryWarningsLoaded:Z

.field private static final sWarningTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mMediaCount:I

.field private mTagname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.instagram.android.model.Hashtag.BROADCAST_HASHTAG_UPDATED"

    sput-object v0, Lcom/instagram/android/model/Hashtag;->BROADCAST_HASHTAG_UPDATED:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/model/Hashtag;->sWarningTags:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/model/Hashtag;->sContentAdvisoryWarningsLoaded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tagName"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/app/af;)V
    .locals 2
    .parameter "tagName"
    .parameter "loaderManager"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/instagram/android/model/Hashtag$HashtagRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/instagram/android/model/Hashtag$HashtagRequest;-><init>(Lcom/instagram/android/model/Hashtag;Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/model/Hashtag$HashtagRequest;->perform()V

    .line 64
    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/instagram/android/model/Hashtag;->sWarningTags:Ljava/util/Map;

    return-object v0
.end method

.method public static fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Hashtag;
    .locals 3
    .parameter "jp"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/instagram/android/model/Hashtag;

    invoke-direct {v0}, Lcom/instagram/android/model/Hashtag;-><init>()V

    .line 77
    :cond_1
    const-string v2, "media_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 79
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    iput v1, v0, Lcom/instagram/android/model/Hashtag;->mMediaCount:I

    goto :goto_0

    .line 80
    :cond_2
    const-string v2, "name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 82
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_3
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 88
    :cond_4
    return-object v0
.end method

.method public static getContentAdvisoryWarning(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hashtagName"

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/instagram/android/model/Hashtag;->sWarningTags:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/instagram/android/model/Hashtag;->sWarningTags:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 95
    const-string v1, "%s\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "message"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHashtagBroadcastId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "hashtagName"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/instagram/android/model/Hashtag;->BROADCAST_HASHTAG_UPDATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized loadContentAdvisoryWarnings()V
    .locals 3

    .prologue
    .line 44
    const-class v1, Lcom/instagram/android/model/Hashtag;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/instagram/android/model/Hashtag;->sContentAdvisoryWarningsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    monitor-exit v1

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/instagram/android/model/Hashtag;->sContentAdvisoryWarningsLoaded:Z

    .line 50
    new-instance v2, Lcom/instagram/android/model/Hashtag$LoadContentAdvisoryWarningsTask;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/instagram/android/model/Hashtag$LoadContentAdvisoryWarningsTask;-><init>(Lcom/instagram/android/model/Hashtag$1;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/instagram/android/model/Hashtag$LoadContentAdvisoryWarningsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    if-ne p0, p1, :cond_1

    .line 172
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 165
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

    .line 167
    :cond_3
    check-cast p1, Lcom/instagram/android/model/Hashtag;

    .line 169
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 170
    goto :goto_0

    .line 169
    :cond_4
    iget-object v2, p1, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/instagram/android/model/Hashtag;->mMediaCount:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuccess(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 146
    const-string v0, "media_count"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/model/Hashtag;->mMediaCount:I

    .line 147
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    .line 151
    :cond_0
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instagram/android/model/Hashtag;->mTagname:Ljava/lang/String;

    invoke-static {v2}, Lcom/instagram/android/model/Hashtag;->getHashtagBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 152
    return-void
.end method
