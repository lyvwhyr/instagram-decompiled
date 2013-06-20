.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "PhotoMapsEditHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "loaderManager"
    .parameter "loaderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "I",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p5, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    .line 173
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 174
    return-void
.end method

.method private createParams(Ljava/util/List;)Lcom/instagram/api/RequestParams;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)",
            "Lcom/instagram/api/RequestParams;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    new-instance v1, Lcom/instagram/api/RequestParams;

    invoke-direct {v1}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 206
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 209
    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    const-string v0, "media_ids_to_remove"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2
    return-object v1
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 196
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;->createParams(Ljava/util/List;)Lcom/instagram/api/RequestParams;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "maps/review_media/"

    return-object v0
.end method

.method public perform(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;->mItems:Ljava/util/List;

    .line 178
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;->perform()V

    .line 179
    return-void
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$RemoveMediaRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "ticket"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
