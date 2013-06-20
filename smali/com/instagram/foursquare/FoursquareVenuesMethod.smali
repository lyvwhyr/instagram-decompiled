.class public final Lcom/instagram/foursquare/FoursquareVenuesMethod;
.super Ljava/lang/Object;
.source "FoursquareVenuesMethod.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://api.foursquare.com/v2/"

.field private static final METHOD:Ljava/lang/String; = "venues/search"

.field private static final TAG:Ljava/lang/String; = "FoursquareVenuesMethod"


# instance fields
.field private final location:Landroid/location/Location;

.field private final searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .parameter "location"
    .parameter "searchString"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/foursquare/FoursquareVenuesMethod;->location:Landroid/location/Location;

    .line 25
    iput-object p2, p0, Lcom/instagram/foursquare/FoursquareVenuesMethod;->searchString:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private getParams()Lcom/instagram/api/RequestParams;
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/instagram/foursquare/FoursquareVenuesMethod;->searchString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "query"

    iget-object v2, p0, Lcom/instagram/foursquare/FoursquareVenuesMethod;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    const-string v1, "ll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/instagram/foursquare/FoursquareVenuesMethod;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/foursquare/FoursquareVenuesMethod;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "limit"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "intent"

    const-string v2, "checkin"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "v"

    const-string v2, "20120424"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "client_id"

    invoke-static {}, Lcom/instagram/foursquare/FoursquareConstants;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "client_secret"

    invoke-static {}, Lcom/instagram/foursquare/FoursquareConstants;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public getRequest()Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.foursquare.com/v2/venues/search?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/foursquare/FoursquareVenuesMethod;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/api/RequestParams;->toQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getResponse(Ljava/lang/String;)Lcom/instagram/foursquare/FoursquareResponse;
    .locals 3
    .parameter "json"

    .prologue
    .line 53
    :try_start_0
    new-instance v0, Lcom/instagram/foursquare/FoursquareResponse;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/foursquare/FoursquareResponse;-><init>(Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "FoursquareVenuesMethod"

    const-string v2, "Unable to parse venues"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method
