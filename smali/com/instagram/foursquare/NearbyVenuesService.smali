.class public Lcom/instagram/foursquare/NearbyVenuesService;
.super Landroid/app/IntentService;
.source "NearbyVenuesService.java"


# static fields
.field public static final BROADCAST_VENUES_FETCHED:Ljava/lang/String; = "com.instagram.android.creation.NearbyVenuesFragment.venuesFetched"

.field public static final EXTRA_LOCATION:Ljava/lang/String; = "location"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final EXTRA_RESULT_VENUES:Ljava/lang/String; = "venues"

.field public static final EXTRA_SEARCH_STRING:Ljava/lang/String; = "searchString"

.field private static final LOCATION_CACHE_TOLERANCE_METERS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "NearbyVenuesService"

.field private static sCachedResponse:Lcom/instagram/foursquare/FoursquareResponse;

.field private static sCachedSearchLocation:Landroid/location/Location;


# instance fields
.field private final mClient:Lcom/instagram/api/ApiHttpClient;

.field private final mLocalFbBroadcastManager:Lcom/facebook/b/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/instagram/foursquare/NearbyVenuesService;->sCachedSearchLocation:Landroid/location/Location;

    .line 47
    sput-object v0, Lcom/instagram/foursquare/NearbyVenuesService;->sCachedResponse:Lcom/instagram/foursquare/FoursquareResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "NearbyVenuesService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/foursquare/NearbyVenuesService;->mClient:Lcom/instagram/api/ApiHttpClient;

    .line 55
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/foursquare/NearbyVenuesService;->mLocalFbBroadcastManager:Lcom/facebook/b/a/k;

    .line 56
    return-void
.end method

.method private fetchNearby(Landroid/location/Location;Ljava/lang/String;)V
    .locals 5
    .parameter "location"
    .parameter "searchString"

    .prologue
    .line 81
    const-string v0, "NearbyVenuesService"

    const-string v1, "Fetching nearby venues"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/instagram/foursquare/FoursquareVenuesMethod;

    invoke-direct {v0, p1, p2}, Lcom/instagram/foursquare/FoursquareVenuesMethod;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/instagram/foursquare/NearbyVenuesService;->mClient:Lcom/instagram/api/ApiHttpClient;

    invoke-virtual {v0}, Lcom/instagram/foursquare/FoursquareVenuesMethod;->getRequest()Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/api/ApiHttpClient;->sendRequest(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    .line 89
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_2

    .line 90
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/instagram/foursquare/FoursquareVenuesMethod;->getResponse(Ljava/lang/String;)Lcom/instagram/foursquare/FoursquareResponse;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/instagram/foursquare/FoursquareResponse;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "NearbyVenuesService"

    const-string v2, "Successfully fetched nearby venues"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-nez p2, :cond_0

    .line 97
    invoke-static {v0, p1}, Lcom/instagram/foursquare/NearbyVenuesService;->setCache(Lcom/instagram/foursquare/FoursquareResponse;Landroid/location/Location;)V

    .line 99
    :cond_0
    invoke-direct {p0, v0}, Lcom/instagram/foursquare/NearbyVenuesService;->sendVenuesResult(Lcom/instagram/foursquare/FoursquareResponse;)V

    .line 116
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v0, "NearbyVenuesService"

    const-string v1, "Nearby venue list is empty for search"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/foursquare/NearbyVenuesService;->sendVenuesResult(Lcom/instagram/foursquare/FoursquareResponse;)V

    goto :goto_0

    .line 105
    :cond_2
    :try_start_1
    const-string v0, "NearbyVenuesService"

    const-string v1, "Failed to fetch nearby venues: status code is not 2xx."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "NearbyVenuesService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch nearby venues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    :cond_3
    :try_start_2
    const-string v0, "NearbyVenuesService"

    const-string v1, "Failed to receive response (no network connection?)"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static getCache()Lcom/instagram/foursquare/FoursquareResponse;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/instagram/foursquare/NearbyVenuesService;->sCachedResponse:Lcom/instagram/foursquare/FoursquareResponse;

    return-object v0
.end method

.method private sendVenuesResult(Lcom/instagram/foursquare/FoursquareResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.creation.NearbyVenuesFragment.venuesFetched"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v1, "requestId"

    invoke-virtual {p1}, Lcom/instagram/foursquare/FoursquareResponse;->getRequestID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "venues"

    invoke-virtual {p1}, Lcom/instagram/foursquare/FoursquareResponse;->getVenues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/instagram/foursquare/NearbyVenuesService;->mLocalFbBroadcastManager:Lcom/facebook/b/a/k;

    invoke-virtual {v1, v0}, Lcom/facebook/b/a/k;->a(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method private static setCache(Lcom/instagram/foursquare/FoursquareResponse;Landroid/location/Location;)V
    .locals 0
    .parameter "response"
    .parameter "location"

    .prologue
    .line 134
    sput-object p0, Lcom/instagram/foursquare/NearbyVenuesService;->sCachedResponse:Lcom/instagram/foursquare/FoursquareResponse;

    .line 135
    sput-object p1, Lcom/instagram/foursquare/NearbyVenuesService;->sCachedSearchLocation:Landroid/location/Location;

    .line 136
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 60
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 61
    const-string v1, "searchString"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-nez v0, :cond_0

    .line 64
    const-string v0, "NearbyVenuesService"

    const-string v1, "Cannot query venues for null location"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/foursquare/NearbyVenuesService;->sendVenuesResult(Lcom/instagram/foursquare/FoursquareResponse;)V

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/instagram/foursquare/NearbyVenuesService;->sCachedSearchLocation:Landroid/location/Location;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/instagram/foursquare/NearbyVenuesService;->sCachedSearchLocation:Landroid/location/Location;

    invoke-virtual {v0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const/high16 v3, 0x41a0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 72
    const-string v0, "NearbyVenuesService"

    const-string v1, "Returning cached nearby venues"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/instagram/foursquare/NearbyVenuesService;->getCache()Lcom/instagram/foursquare/FoursquareResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/foursquare/NearbyVenuesService;->sendVenuesResult(Lcom/instagram/foursquare/FoursquareResponse;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/instagram/foursquare/NearbyVenuesService;->fetchNearby(Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0
.end method
