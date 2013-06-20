.class public Lcom/instagram/api/request/ConfigureMediaRequest;
.super Lcom/instagram/api/request/AbstractIgSignedPostRequest;
.source "ConfigureMediaRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigureMediaRequest"


# instance fields
.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mPendingMedia:Lcom/instagram/android/model/PendingMedia;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 3
    .parameter "context"
    .parameter "pendingMedia"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractIgSignedPostRequest;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    .line 44
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v1, "ConfigureModule"

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 45
    new-instance v1, Lcom/instagram/android/model/serialization/UploadLocationSerializer;

    invoke-direct {v1}, Lcom/instagram/android/model/serialization/UploadLocationSerializer;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 46
    new-instance v1, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/instagram/android/people/model/serialization/PeopleTagSerializer;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 47
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/api/request/ConfigureMediaRequest;->getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 48
    return-void
.end method

.method private getUsertagsJson(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, inTags:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/people/model/PeopleTag;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 172
    invoke-virtual {p0}, Lcom/instagram/api/request/ConfigureMediaRequest;->getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 175
    const-string v2, "in"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 178
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 180
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildJsonPayload(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .parameter "generator"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "media_id"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    const-string v0, "caption"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "device_timestamp"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getDeviceTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_1

    .line 70
    const-string v0, "clip0_length"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getVideoLength()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;F)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getSourceType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    const-string v0, "4"

    .line 89
    :goto_0
    const-string v1, "source_type"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "filter_type"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getFilterType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->isGeotagEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "geotag_enabled"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "media_latitude"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "media_longitude"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->isTwitterEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/instagram/api/request/ConfigureMediaRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterAccount;->get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/instagram/twitter/TwitterAccount;->getSharingInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/api/request/ConfigureMediaRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getHasAdvancedCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "3"

    goto/16 :goto_0

    .line 79
    :cond_3
    const-string v0, "5"

    goto/16 :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->isFlickrEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    invoke-static {}, Lcom/instagram/flickr/FlickrAccount;->get()Lcom/instagram/flickr/FlickrAccount;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/instagram/flickr/FlickrAccount;->getSharingInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->isFacebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPageAccount()Lcom/instagram/android/model/FacebookPostingAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/FacebookPostingAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    invoke-virtual {v1}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_6
    const-string v1, "share_to_facebook"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "fb_access_token"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->isFoursquareEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/instagram/api/request/ConfigureMediaRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/foursquare/FoursquareAccount;->get(Landroid/content/Context;)Lcom/instagram/foursquare/FoursquareAccount;

    move-result-object v0

    .line 127
    const-string v1, "share_to_foursquare"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "foursquare_access_token"

    invoke-virtual {v0}, Lcom/instagram/foursquare/FoursquareAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->isTumblrEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 132
    invoke-virtual {p0}, Lcom/instagram/api/request/ConfigureMediaRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/tumblr/TumblrAccount;->get(Landroid/content/Context;)Lcom/instagram/tumblr/TumblrAccount;

    move-result-object v0

    .line 134
    const-string v1, "share_to_tumblr"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "tumblr_access_token_key"

    invoke-virtual {v0}, Lcom/instagram/tumblr/TumblrAccount;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "tumblr_access_token_secret"

    invoke-virtual {v0}, Lcom/instagram/tumblr/TumblrAccount;->getSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_a

    .line 141
    const-string v1, "location"

    iget-object v2, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_a
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->hasInTags()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    const-string v0, "usertags"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instagram/api/request/ConfigureMediaRequest;->getUsertagsJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_c

    .line 149
    const-string v0, "video_result"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getVideoResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_c
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->hasOriginalSize()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 155
    const-string v0, "source_width"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getOriginalWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 156
    const-string v0, "source_height"

    iget-object v1, p0, Lcom/instagram/api/request/ConfigureMediaRequest;->mPendingMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1}, Lcom/instagram/android/model/PendingMedia;->getOriginalHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 159
    :cond_d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 161
    const-string v0, "device"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 162
    const-string v0, "manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "android_version"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 165
    const-string v0, "android_release"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 168
    return-void

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "media/configure/"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
