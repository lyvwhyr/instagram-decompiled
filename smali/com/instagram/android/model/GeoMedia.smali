.class public Lcom/instagram/android/model/GeoMedia;
.super Ljava/lang/Object;
.source "GeoMedia.java"

# interfaces
.implements Lcom/instagram/android/maps/clustering/GeoPhoto;
.implements Lcom/instagram/android/model/MinimialMedia;


# instance fields
.field private mLat:D

.field private mLng:D

.field private mLocationName:Ljava/lang/String;

.field private mMediaId:Ljava/lang/String;

.field private mSortableMediaId:D

.field private mThumbnail:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/GeoMedia;
    .locals 5
    .parameter "jp"

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {v0}, Lcom/instagram/android/model/GeoMedia;-><init>()V

    .line 27
    :cond_1
    const-string v2, "media_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v1, v0, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v0, Lcom/instagram/android/model/GeoMedia;->mSortableMediaId:D

    .line 34
    const/4 v1, 0x1

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/instagram/android/model/GeoMedia;->mUserId:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_2
    const-string v2, "lat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 37
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/android/model/GeoMedia;->mLat:D

    goto :goto_0

    .line 38
    :cond_3
    const-string v2, "lng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 40
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/instagram/android/model/GeoMedia;->mLng:D

    goto :goto_0

    .line 41
    :cond_4
    const-string v2, "thumbnail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/GeoMedia;->mThumbnail:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_5
    const-string v2, "location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/model/GeoMedia;->mLocationName:Ljava/lang/String;

    goto/16 :goto_0

    .line 47
    :cond_6
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 54
    :cond_7
    return-object v0
.end method

.method public static getLocatioNameForPoints(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreePoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/maps/clustering/QuadtreePoint;>;"
    const/4 v3, 0x0

    .line 157
    const/4 v2, 0x0

    .line 159
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 161
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    .line 162
    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getItem()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 163
    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getLocationName()Ljava/lang/String;

    move-result-object v7

    .line 164
    if-eqz v7, :cond_3

    .line 165
    invoke-virtual {v5, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 167
    if-nez v1, :cond_1

    .line 168
    new-instance v1, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v1

    .line 173
    :goto_1
    invoke-virtual {v5, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getLocationName()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    move v2, v0

    move-object v3, v1

    .line 181
    goto :goto_0

    .line 170
    :cond_1
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    .line 183
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lcom/instagram/android/maps/clustering/GeoPhoto;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 132
    check-cast p1, Lcom/instagram/android/model/GeoMedia;

    .line 133
    .end local p1
    iget-wide v0, p0, Lcom/instagram/android/model/GeoMedia;->mSortableMediaId:D

    iget-wide v2, p1, Lcom/instagram/android/model/GeoMedia;->mSortableMediaId:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/model/GeoMedia;->compareTo(Lcom/instagram/android/maps/clustering/GeoPhoto;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    if-ne p0, p1, :cond_1

    .line 146
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 139
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

    .line 141
    :cond_3
    check-cast p1, Lcom/instagram/android/model/GeoMedia;

    .line 143
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 143
    :cond_4
    iget-object v2, p1, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getFullsizeUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mThumbnail:Ljava/lang/String;

    const-string v1, "_5.jpg"

    const-string v2, "_7.jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/instagram/android/model/GeoMedia;->mLat:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/instagram/android/model/GeoMedia;->mLng:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Lcom/instagram/android/model/Media$MediaType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlForSize(I)Ljava/lang/String;
    .locals 3
    .parameter "size"

    .prologue
    .line 121
    const/16 v0, 0x96

    if-gt p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mThumbnail:Ljava/lang/String;

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const/16 v0, 0x132

    if-gt p1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mThumbnail:Ljava/lang/String;

    const-string v1, "_5.jpg"

    const-string v2, "_6.jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/model/GeoMedia;->getFullsizeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/model/GeoMedia;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
