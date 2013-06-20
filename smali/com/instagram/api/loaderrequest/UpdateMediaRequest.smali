.class public Lcom/instagram/api/loaderrequest/UpdateMediaRequest;
.super Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;
.source "UpdateMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest",
        "<",
        "Lcom/instagram/android/model/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMediaId:Ljava/lang/String;

.field private final mOriginalTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;"
        }
    .end annotation
.end field

.field private mUsertagsPayload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .end parameter
    .parameter "loaderManager"
    .end parameter
    .parameter "mediaId"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p4, originalTags:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/people/model/PeopleTag;>;"
    .local p5, updatedTags:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/people/model/PeopleTag;>;"
    .local p6, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Lcom/instagram/android/model/Media;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 57
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mMediaId:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mOriginalTags:Ljava/util/List;

    .line 59
    iput-object p5, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mUpdatedTags:Ljava/util/List;

    .line 60
    return-void
.end method

.method private getUsertagsPayload()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mUsertagsPayload:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 92
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    .line 93
    new-instance v2, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Lcom/fasterxml/jackson/core/Version;)V

    .line 94
    const-class v3, Lcom/instagram/android/people/model/PeopleTag;

    new-instance v4, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;-><init>(Z)V

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 95
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 97
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 98
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 103
    const-string v0, "in"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mUpdatedTags:Ljava/util/List;

    invoke-virtual {v1, v3, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mOriginalTags:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mOriginalTags:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mUpdatedTags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 114
    const-string v1, "removed"

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/model/PeopleTag;

    .line 118
    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTag;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 125
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 126
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 128
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mUsertagsPayload:Ljava/lang/String;

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mUsertagsPayload:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 64
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractStreamingLoaderRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v1}, Lcom/instagram/util/JsonBuilder;-><init>()V

    .line 80
    :try_start_0
    const-string v2, "usertags"

    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->getUsertagsPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-virtual {v1}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 86
    return-object v0

    .line 81
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usertags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processResponseField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;Lcom/instagram/api/StreamingApiResponse;)Z
    .locals 4
    .parameter "fieldName"
    .parameter "jp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/instagram/api/StreamingApiResponse",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, response:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<Lcom/instagram/android/model/Media;>;"
    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 140
    invoke-static {p2}, Lcom/instagram/android/model/Media;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Media;

    move-result-object v1

    .line 141
    invoke-virtual {p3, v1}, Lcom/instagram/api/StreamingApiResponse;->setSuccessObject(Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v2

    .line 147
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mOriginalTags:Ljava/util/List;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>()V

    .line 153
    :goto_0
    invoke-virtual {v0, v2}, Lcom/instagram/android/people/model/PeopleTagCollection;->containsUser(Lcom/instagram/android/model/User;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->hasInTags()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/people/model/PeopleTagCollection;->containsUser(Lcom/instagram/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->isPhotoOfCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

    invoke-virtual {v0, v1}, Lcom/facebook/b/a/k;->a(Ljava/lang/String;)V

    .line 162
    :cond_0
    const/4 v0, 0x1

    .line 165
    :goto_1
    return v0

    .line 150
    :cond_1
    new-instance v0, Lcom/instagram/android/people/model/PeopleTagCollection;

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/UpdateMediaRequest;->mOriginalTags:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
