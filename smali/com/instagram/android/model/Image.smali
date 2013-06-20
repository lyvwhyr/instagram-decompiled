.class public Lcom/instagram/android/model/Image;
.super Ljava/lang/Object;
.source "Image.java"


# static fields
.field public static final LOW_RESOLUTION:I = 0x6

.field public static final STANDARD_RESOLUTION:I = 0x7

.field public static final THUMBNAIL:I = 0x5


# instance fields
.field private height:I

.field private type:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/instagram/android/model/Image;
    .locals 2
    .parameter "o"

    .prologue
    .line 28
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/instagram/android/model/Image;

    invoke-direct {v0}, Lcom/instagram/android/model/Image;-><init>()V

    .line 31
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/instagram/util/JSONUtil;->optJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    .line 32
    const-string v1, "width"

    invoke-static {p0, v1}, Lcom/instagram/util/JSONUtil;->optInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/instagram/android/model/Image;->width:I

    .line 33
    const-string v1, "height"

    invoke-static {p0, v1}, Lcom/instagram/util/JSONUtil;->optInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/instagram/android/model/Image;->height:I

    .line 34
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/instagram/util/JSONUtil;->optInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/instagram/android/model/Image;->type:I

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 63
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 57
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/instagram/android/model/Image;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Lcom/instagram/android/model/Image;

    .line 61
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/instagram/android/model/Image;->height:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/instagram/android/model/Image;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/instagram/android/model/Image;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/Image;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
