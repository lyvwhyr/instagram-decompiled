.class public Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "ModifyPhotosOfYouRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "approve"

.field public static final ACTION_REMOVE:Ljava/lang/String; = "remove"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mMedia:Lcom/instagram/android/model/Media;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;Lcom/instagram/android/model/Media;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter "action"
    .parameter "media"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Ljava/lang/String;",
            "Lcom/instagram/android/model/Media;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p5, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 37
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mAction:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mMedia:Lcom/instagram/android/model/Media;

    .line 39
    return-void
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lcom/instagram/api/RequestParams;
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/instagram/util/JsonBuilder;

    invoke-direct {v1}, Lcom/instagram/util/JsonBuilder;-><init>()V

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v3}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/util/JsonBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/util/JsonBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/instagram/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/RequestUtil;->setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V

    .line 50
    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "usertags/review/"

    return-object v0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Void;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mMedia:Lcom/instagram/android/model/Media;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mAction:Ljava/lang/String;

    const-string v2, "approve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Media;->setPhotoOfCurrentUser(Z)V

    .line 66
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia()V

    .line 70
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->mAction:Ljava/lang/String;

    const-string v1, "approve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

    invoke-virtual {v0, v1}, Lcom/facebook/b/a/k;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
