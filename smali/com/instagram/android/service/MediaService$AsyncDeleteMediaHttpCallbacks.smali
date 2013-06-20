.class Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;
.super Ljava/lang/Object;
.source "MediaService.java"

# interfaces
.implements Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mMedia:Lcom/instagram/android/model/Media;

.field final synthetic this$0:Lcom/instagram/android/service/MediaService;


# direct methods
.method public constructor <init>(Lcom/instagram/android/service/MediaService;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter "media"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->this$0:Lcom/instagram/android/service/MediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->mMedia:Lcom/instagram/android/model/Media;

    .line 97
    return-void
.end method


# virtual methods
.method public processResponseInBackground(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Boolean;
    .locals 1
    .parameter "response"

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic processResponseInBackground(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->processResponseInBackground(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public requestFinished(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getDeletedStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 102
    iget-object v0, p0, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->mMedia:Lcom/instagram/android/model/Media;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Media;->setDeletedStatus(I)V

    .line 103
    iget-object v0, p0, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->mMedia:Lcom/instagram/android/model/Media;

    iget-object v1, p0, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->this$0:Lcom/instagram/android/service/MediaService;

    invoke-virtual {v1}, Lcom/instagram/android/service/MediaService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 105
    :cond_1
    return-void
.end method

.method public bridge synthetic requestFinished(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;->requestFinished(Ljava/lang/Boolean;)V

    return-void
.end method
