.class public Lcom/instagram/foursquare/FoursquarePingbackRequest;
.super Lcom/instagram/api/request/AbstractRequest;
.source "FoursquarePingbackRequest.java"


# instance fields
.field private mRequestId:Ljava/lang/String;

.field private mVenueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/android/location/Venue;)V
    .locals 1
    .parameter "context"
    .parameter "requestId"
    .parameter "venue"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractRequest;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/instagram/foursquare/FoursquarePingbackRequest;->mRequestId:Ljava/lang/String;

    .line 18
    iget-object v0, p3, Lcom/instagram/android/location/Venue;->externalId:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/foursquare/FoursquarePingbackRequest;->mVenueId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->GET:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 34
    const-string v1, "requestId"

    iget-object v2, p0, Lcom/instagram/foursquare/FoursquarePingbackRequest;->mRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "type"

    const-string v2, "currentLocation"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.foursquare.com/v2/venues/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/foursquare/FoursquarePingbackRequest;->mVenueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/select"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
