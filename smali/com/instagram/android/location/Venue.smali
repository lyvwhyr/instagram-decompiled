.class public Lcom/instagram/android/location/Venue;
.super Ljava/lang/Object;
.source "Venue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SOURCE_FOURSQUARE:Ljava/lang/String; = "foursquare"

.field private static final TAG:Ljava/lang/String; = "Location"

.field private static final sVenueStore:Lcom/instagram/android/service/VenueStore;


# instance fields
.field public address:Ljava/lang/String;

.field public externalId:Ljava/lang/String;

.field public externalSource:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public latitude:Ljava/lang/Double;

.field public longitude:Ljava/lang/Double;

.field public mIsCustomVenue:Z

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/VenueStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/VenueStore;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/location/Venue;->sVenueStore:Lcom/instagram/android/service/VenueStore;

    .line 211
    new-instance v0, Lcom/instagram/android/location/Venue$1;

    invoke-direct {v0}, Lcom/instagram/android/location/Venue$1;-><init>()V

    sput-object v0, Lcom/instagram/android/location/Venue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/instagram/android/location/Venue$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    .line 229
    sget-object v0, Lcom/instagram/android/location/Venue$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/instagram/android/location/Venue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/instagram/android/location/Venue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCustomName(Ljava/lang/String;Landroid/location/Location;)Lcom/instagram/android/location/Venue;
    .locals 4
    .parameter "name"
    .parameter "location"

    .prologue
    .line 54
    new-instance v0, Lcom/instagram/android/location/Venue;

    invoke-direct {v0}, Lcom/instagram/android/location/Venue;-><init>()V

    .line 56
    iput-object p0, v0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string v1, "Location"

    const-string v2, "No location when creating custom venue"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    .line 65
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    goto :goto_0
.end method

.method public static fromFoursquareVenueNode(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/location/Venue;
    .locals 4
    .parameter "map"

    .prologue
    .line 72
    new-instance v0, Lcom/instagram/android/location/Venue;

    invoke-direct {v0}, Lcom/instagram/android/location/Venue;-><init>()V

    .line 74
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 76
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    .line 78
    const-string v2, "address"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "address"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/instagram/util/JSONUtil;->safeParsePK(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    .line 83
    const-string v2, "foursquare"

    iput-object v2, v0, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    .line 85
    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    .line 89
    :cond_1
    const-string v2, "lng"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 90
    const-string v2, "lng"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    .line 93
    :cond_2
    return-object v0
.end method

.method public static fromMediaLocationParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/location/Venue;
    .locals 5
    .parameter "jp"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v2

    .line 101
    :cond_1
    new-instance v1, Lcom/instagram/android/location/Venue;

    invoke-direct {v1}, Lcom/instagram/android/location/Venue;-><init>()V

    move-object v0, v2

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_c

    .line 105
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 107
    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "pk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 109
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/instagram/android/location/Venue;->sVenueStore:Lcom/instagram/android/service/VenueStore;

    iget-object v3, v1, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/instagram/android/service/VenueStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    .line 112
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0, v1}, Lcom/instagram/android/location/Venue;->copyMembers(Lcom/instagram/android/location/Venue;)V

    move-object v1, v0

    .line 114
    goto :goto_1

    .line 116
    :cond_4
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/util/StringUtil;->stripEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_5
    const-string v4, "lat"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 121
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    goto :goto_1

    .line 122
    :cond_6
    const-string v4, "lng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 124
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    goto :goto_1

    .line 125
    :cond_7
    const-string v4, "address"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 127
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    goto/16 :goto_1

    .line 130
    :cond_8
    const-string v4, "external_source"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 131
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 132
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    goto/16 :goto_1

    .line 133
    :cond_9
    const-string v4, "external_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 134
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 135
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    goto/16 :goto_1

    .line 136
    :cond_a
    const-string v4, "foursquare_v2_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 137
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 138
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    goto/16 :goto_1

    .line 139
    :cond_b
    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 145
    :cond_c
    iget-object v3, v1, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 149
    if-nez v0, :cond_d

    .line 150
    sget-object v0, Lcom/instagram/android/location/Venue;->sVenueStore:Lcom/instagram/android/service/VenueStore;

    iget-object v2, v1, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/service/VenueStore;->put(Ljava/lang/String;Lcom/instagram/android/location/Venue;)Lcom/instagram/android/location/Venue;

    :cond_d
    move-object v2, v1

    .line 153
    goto/16 :goto_0
.end method


# virtual methods
.method public copyMembers(Lcom/instagram/android/location/Venue;)V
    .locals 1
    .parameter "venue"

    .prologue
    .line 157
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    .line 165
    :cond_1
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    .line 169
    :cond_2
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    .line 173
    :cond_3
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    .line 177
    :cond_4
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    .line 181
    :cond_5
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p1, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    .line 184
    :cond_6
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getIsCustomVenue()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/instagram/android/location/Venue;->mIsCustomVenue:Z

    return v0
.end method

.method public setIsCustomVenue(Z)V
    .locals 0
    .parameter "venue"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/instagram/android/location/Venue;->mIsCustomVenue:Z

    .line 188
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/instagram/android/location/Venue;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/android/location/Venue;->externalSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/instagram/android/location/Venue;->latitude:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/instagram/android/location/Venue;->longitude:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 209
    return-void
.end method
