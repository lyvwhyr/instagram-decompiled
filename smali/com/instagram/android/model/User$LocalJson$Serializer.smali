.class public Lcom/instagram/android/model/User$LocalJson$Serializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/instagram/android/model/User;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .parameter "value"
    .parameter "gen"
    .parameter "provider"

    .prologue
    .line 945
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 946
    const-string v0, "id"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "biography"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_0
    const-string v0, "blocking"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isBlocking()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 951
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 952
    const-string v0, "external_url"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_1
    const-string v0, "follower_count"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowerCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    const-string v0, "following_count"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowingCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    const-string v0, "follow_status"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 957
    const-string v0, "full_name"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v0, "is_staff"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isIsStaff()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 960
    const-string v0, "usertag_review_enabled"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isPeopleTagReviewEnabled()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 961
    const-string v0, "last_follow_status"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getLastFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    const-string v0, "media_count"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getMediaCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 963
    const-string v0, "privacy_status"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPrivacyStatus()Lcom/instagram/android/model/User$PrivacyStatus;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 964
    const-string v0, "profile_pic_url"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v0, "username"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v0, "geo_media_count"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getGeoPhotoCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    const-string v0, "usertags_count"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPeopleTagsCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 968
    const-string v0, "is_verified"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isVerified()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 969
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 970
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 940
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/model/User$LocalJson$Serializer;->serialize(Lcom/instagram/android/model/User;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
