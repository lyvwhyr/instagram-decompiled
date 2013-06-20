.class public Lcom/instagram/api/loaderrequest/UserSearchRequest;
.super Lcom/instagram/api/loaderrequest/UserListRequest;
.source "UserSearchRequest.java"


# instance fields
.field private mSearchHistory:Lcom/instagram/util/SearchSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 1
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
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, arrayListAbstractApiCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/loaderrequest/UserListRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 25
    new-instance v0, Lcom/instagram/util/SearchSession;

    invoke-direct {v0}, Lcom/instagram/util/SearchSession;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/UserSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    .line 26
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 38
    invoke-virtual {p1, p2}, Lcom/instagram/api/ApiHttpClient;->getRequest(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    const-string v0, "users/search/?%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/UserSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    invoke-virtual {v2, v3}, Lcom/instagram/util/SearchSession;->toQueryString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchHistory()Lcom/instagram/util/SearchSession;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UserSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    return-object v0
.end method

.method public perform(Ljava/lang/String;)V
    .locals 1
    .parameter "queryString"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UserSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    invoke-virtual {v0}, Lcom/instagram/util/SearchSession;->resetIfLastSearchWasSuccessful()V

    .line 31
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/UserSearchRequest;->mSearchHistory:Lcom/instagram/util/SearchSession;

    invoke-virtual {v0, p1}, Lcom/instagram/util/SearchSession;->add(Ljava/lang/String;)V

    .line 32
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform()V

    .line 33
    return-void
.end method
