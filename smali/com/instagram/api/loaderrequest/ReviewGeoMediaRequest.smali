.class public Lcom/instagram/api/loaderrequest/ReviewGeoMediaRequest;
.super Lcom/instagram/api/loaderrequest/FetchGeoMediaRequest;
.source "ReviewGeoMediaRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/loaderrequest/FetchGeoMediaRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 24
    const-string v1, "maps/review_media/%s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/api/loaderrequest/ReviewGeoMediaRequest;->mUserId:Ljava/lang/String;

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?user_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/instagram/api/loaderrequest/ReviewGeoMediaRequest;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
