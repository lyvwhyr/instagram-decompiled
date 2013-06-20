.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "PhotoMapsEditHelper.java"


# instance fields
.field private mTicket:Ljava/lang/String;

.field final synthetic this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "loaderManager"
    .parameter "apiCallbacks"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    .line 228
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 229
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 244
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maps/check_ticket/?ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;->mTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Ljava/lang/String;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;->mTicket:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$PollMediaRequest;->perform()V

    .line 234
    return-void
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "response"

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z
    .locals 1
    .parameter "response"

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method
