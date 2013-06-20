.class public Lcom/instagram/android/model/User$LocalJson$Deserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/instagram/android/model/User;
    .locals 5
    .parameter "jp"
    .parameter "ctxt"

    .prologue
    .line 900
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 901
    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 903
    new-instance v3, Lcom/instagram/android/model/User;

    invoke-direct {v3}, Lcom/instagram/android/model/User;-><init>()V

    .line 904
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mId:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$202(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    const-string v2, "biography"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    const-string v2, "biography"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    #setter for: Lcom/instagram/android/model/User;->mBiography:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$302(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;

    .line 908
    :cond_0
    const-string v2, "blocking"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    #setter for: Lcom/instagram/android/model/User;->mBlocking:Z
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$102(Lcom/instagram/android/model/User;Z)Z

    .line 909
    const-string v2, "external_url"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 910
    const-string v2, "external_url"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mExternalUrl:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$402(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;

    .line 912
    :cond_1
    const-string v2, "geo_media_count"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 913
    const-string v2, "geo_media_count"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mGeoPhotoCount:Ljava/lang/Integer;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$502(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 915
    :cond_2
    const-string v2, "usertags_count"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 916
    const-string v2, "usertags_count"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mPeopleTagsCount:Ljava/lang/Integer;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$602(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 918
    :cond_3
    const-string v2, "follower_count"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mFollowerCount:Ljava/lang/Integer;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$702(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 919
    const-string v2, "following_count"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mFollowingCount:Ljava/lang/Integer;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$802(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 920
    const-string v2, "follow_status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-class v4, Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/model/User$FollowStatus;

    #setter for: Lcom/instagram/android/model/User;->mFollowStatus:Lcom/instagram/android/model/User$FollowStatus;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$902(Lcom/instagram/android/model/User;Lcom/instagram/android/model/User$FollowStatus;)Lcom/instagram/android/model/User$FollowStatus;

    .line 921
    const-string v2, "full_name"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mFullName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$1002(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;

    .line 923
    const-string v2, "is_staff"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    #setter for: Lcom/instagram/android/model/User;->mIsStaff:Z
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$1102(Lcom/instagram/android/model/User;Z)Z

    .line 924
    const-string v2, "last_follow_status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-class v4, Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/model/User$FollowStatus;

    #setter for: Lcom/instagram/android/model/User;->mLastFollowStatus:Lcom/instagram/android/model/User$FollowStatus;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$1202(Lcom/instagram/android/model/User;Lcom/instagram/android/model/User$FollowStatus;)Lcom/instagram/android/model/User$FollowStatus;

    .line 925
    const-string v2, "media_count"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/instagram/android/model/User;->mMediaCount:Ljava/lang/Integer;
    invoke-static {v3, v2}, Lcom/instagram/android/model/User;->access$1302(Lcom/instagram/android/model/User;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 926
    const-string v2, "privacy_status"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-class v4, Lcom/instagram/android/model/User$PrivacyStatus;

    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User$PrivacyStatus;

    #setter for: Lcom/instagram/android/model/User;->mPrivacyStatus:Lcom/instagram/android/model/User$PrivacyStatus;
    invoke-static {v3, v0}, Lcom/instagram/android/model/User;->access$1402(Lcom/instagram/android/model/User;Lcom/instagram/android/model/User$PrivacyStatus;)Lcom/instagram/android/model/User$PrivacyStatus;

    .line 927
    const-string v0, "profile_pic_url"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/instagram/android/model/User;->mProfilePicUrl:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/instagram/android/model/User;->access$1502(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;

    .line 928
    const-string v0, "username"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/instagram/android/model/User;->mUsername:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/instagram/android/model/User;->access$1602(Lcom/instagram/android/model/User;Ljava/lang/String;)Ljava/lang/String;

    .line 929
    const-string v0, "is_verified"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 930
    const-string v0, "is_verified"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    #setter for: Lcom/instagram/android/model/User;->mIsVerified:Z
    invoke-static {v3, v0}, Lcom/instagram/android/model/User;->access$1702(Lcom/instagram/android/model/User;Z)Z

    .line 932
    :cond_4
    const-string v0, "usertag_review_enabled"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 933
    const-string v0, "usertag_review_enabled"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    #setter for: Lcom/instagram/android/model/User;->mPeopleTagReviewEnabled:Z
    invoke-static {v3, v0}, Lcom/instagram/android/model/User;->access$1802(Lcom/instagram/android/model/User;Z)Z

    .line 936
    :cond_5
    return-object v3

    .line 906
    :cond_6
    const-string v2, "biography"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 895
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/model/User$LocalJson$Deserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/instagram/android/model/User;

    move-result-object v0

    return-object v0
.end method
