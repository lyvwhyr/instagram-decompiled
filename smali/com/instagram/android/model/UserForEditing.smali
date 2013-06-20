.class public Lcom/instagram/android/model/UserForEditing;
.super Ljava/lang/Object;
.source "UserForEditing.java"


# static fields
.field public static GENDER_FEMALE:I

.field public static GENDER_MALE:I

.field public static GENDER_UNSPECIFIED:I


# instance fields
.field private mEmailAddress:Ljava/lang/String;

.field private mGender:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mUser:Lcom/instagram/android/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput v0, Lcom/instagram/android/model/UserForEditing;->GENDER_MALE:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lcom/instagram/android/model/UserForEditing;->GENDER_FEMALE:I

    .line 15
    const/4 v0, 0x3

    sput v0, Lcom/instagram/android/model/UserForEditing;->GENDER_UNSPECIFIED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/instagram/android/model/UserForEditing;->GENDER_UNSPECIFIED:I

    iput v0, p0, Lcom/instagram/android/model/UserForEditing;->mGender:I

    return-void
.end method

.method public static fromJsonNode(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/model/UserForEditing;
    .locals 3
    .parameter "rootNode"

    .prologue
    .line 23
    new-instance v0, Lcom/instagram/android/model/UserForEditing;

    invoke-direct {v0}, Lcom/instagram/android/model/UserForEditing;-><init>()V

    .line 24
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/instagram/android/model/User;->fromJsonNode(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    .line 26
    const-string v1, "phone_number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/UserForEditing;->mPhoneNumber:Ljava/lang/String;

    .line 27
    const-string v1, "email"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/UserForEditing;->mEmailAddress:Ljava/lang/String;

    .line 28
    const-string v1, "gender"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    sget v2, Lcom/instagram/android/model/UserForEditing;->GENDER_UNSPECIFIED:I

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v1

    iput v1, v0, Lcom/instagram/android/model/UserForEditing;->mGender:I

    .line 30
    return-object v0
.end method


# virtual methods
.method public getBiography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getBiography()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/instagram/android/model/UserForEditing;->mGender:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUser()Lcom/instagram/android/model/User;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBiography(Ljava/lang/String;)V
    .locals 1
    .parameter "biography"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0, p1}, Lcom/instagram/android/model/User;->setBiography(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/instagram/android/model/UserForEditing;->mEmailAddress:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setExternalUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "externalUrl"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0, p1}, Lcom/instagram/android/model/User;->setExternalUrl(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 1
    .parameter "fullName"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0, p1}, Lcom/instagram/android/model/User;->setFullName(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 90
    iput p1, p0, Lcom/instagram/android/model/UserForEditing;->mGender:I

    .line 91
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/android/model/UserForEditing;->mPhoneNumber:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/model/UserForEditing;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0, p1}, Lcom/instagram/android/model/User;->setUsername(Ljava/lang/String;)V

    .line 47
    return-void
.end method
