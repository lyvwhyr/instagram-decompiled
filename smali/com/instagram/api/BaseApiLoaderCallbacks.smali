.class public Lcom/instagram/api/BaseApiLoaderCallbacks;
.super Ljava/lang/Object;
.source "BaseApiLoaderCallbacks.java"

# interfaces
.implements Landroid/support/v4/app/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/ag",
        "<",
        "Lcom/instagram/api/ApiResponse",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;


# direct methods
.method public constructor <init>(Lcom/instagram/api/AbstractApiCallbacks;Landroid/content/Context;Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;",
            "Landroid/content/Context;",
            "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks;,"Lcom/instagram/api/BaseApiLoaderCallbacks<TT;>;"
    .local p1, apiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    .line 36
    return-void
.end method

.method private getSystemMessageHelper(Ljava/lang/String;)Lcom/instagram/api/SystemMessageHelper;
    .locals 2
    .parameter "messageKey"

    .prologue
    .line 117
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks;,"Lcom/instagram/api/BaseApiLoaderCallbacks<TT;>;"
    const/4 v0, 0x0

    .line 118
    const-string v1, "fb_needs_reauth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v0, Lcom/instagram/api/BaseApiLoaderCallbacks$1;

    invoke-direct {v0, p0}, Lcom/instagram/api/BaseApiLoaderCallbacks$1;-><init>(Lcom/instagram/api/BaseApiLoaderCallbacks;)V

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    const-string v1, "foursquare_needs_reauth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v0, Lcom/instagram/api/BaseApiLoaderCallbacks$2;

    invoke-direct {v0, p0}, Lcom/instagram/api/BaseApiLoaderCallbacks$2;-><init>(Lcom/instagram/api/BaseApiLoaderCallbacks;)V

    goto :goto_0
.end method

.method public static handleRequestServerErrorMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 137
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    .line 140
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 141
    new-instance v2, Lcom/instagram/api/BaseApiLoaderCallbacks$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/instagram/api/BaseApiLoaderCallbacks$3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/p;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_0
    return-void
.end method

.method private declared-synchronized handleSystemMessage(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks;,"Lcom/instagram/api/BaseApiLoaderCallbacks<TT;>;"
    .local p1, message:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-direct {p0, v0}, Lcom/instagram/api/BaseApiLoaderCallbacks;->getSystemMessageHelper(Ljava/lang/String;)Lcom/instagram/api/SystemMessageHelper;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/instagram/api/BaseApiLoaderCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/Preferences;->getSystemMessageTime(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 103
    const-string v1, "time"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 105
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/api/BaseApiLoaderCallbacks;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/instagram/android/Preferences;->setSystemMessageTime(Ljava/lang/String;Ljava/lang/Float;)V

    .line 107
    invoke-interface {v2}, Lcom/instagram/api/SystemMessageHelper;->logoutAndUnlink()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getApiCallbacks()Lcom/instagram/api/AbstractApiCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks;,"Lcom/instagram/api/BaseApiLoaderCallbacks<TT;>;"
    new-instance v0, Lcom/instagram/android/loader/AsyncTaskDataLoader;

    iget-object v1, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/android/loader/AsyncTaskDataLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/a/c;Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;>;",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks;,"Lcom/instagram/api/BaseApiLoaderCallbacks<TT;>;"
    .local p1, loader:Landroid/support/v4/a/c;,"Landroid/support/v4/a/c<Lcom/instagram/api/ApiResponse<TT;>;>;"
    .local p2, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->isNetworkRequest()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/instagram/api/ApiResponse;->setIsNetworkResponse(Z)V

    .line 50
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-virtual {v0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 52
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getSystemMessages()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getSystemMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 54
    invoke-direct {p0, v0}, Lcom/instagram/api/BaseApiLoaderCallbacks;->handleSystemMessage(Ljava/util/HashMap;)V

    goto :goto_0

    .line 59
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->setErrorStatusIfFailedToLoad()V

    .line 61
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-virtual {v0, p2}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 93
    :cond_2
    :goto_1
    return-void

    .line 64
    :cond_3
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-static {}, Lcom/instagram/android/login/helper/LogoutHelper;->forceLogoutSynchronously()V

    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkpoint_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/instagram/api/BaseApiLoaderCallbacks;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getCheckpointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/CheckpointUtil;->showCheckpointIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mRequest:Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;

    invoke-virtual {v0, p2}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->shouldShowAlertForRequest(Lcom/instagram/api/ApiResponse;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/BaseApiLoaderCallbacks;->handleRequestServerErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_6
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getSuccessObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/AbstractApiCallbacks;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    :cond_7
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->setErrorStatusIfFailedToLoad()V

    .line 85
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-virtual {v0, p2}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    goto :goto_1

    .line 88
    :cond_8
    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-virtual {p2}, Lcom/instagram/api/ApiResponse;->getSuccessObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/AbstractApiCallbacks;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks;,"Lcom/instagram/api/BaseApiLoaderCallbacks<TT;>;"
    check-cast p2, Lcom/instagram/api/ApiResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/api/BaseApiLoaderCallbacks;->onLoadFinished(Landroid/support/v4/a/c;Lcom/instagram/api/ApiResponse;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/c;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/ApiResponse",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lcom/instagram/api/BaseApiLoaderCallbacks;,"Lcom/instagram/api/BaseApiLoaderCallbacks<TT;>;"
    .local p1, loader:Landroid/support/v4/a/c;,"Landroid/support/v4/a/c<Lcom/instagram/api/ApiResponse<TT;>;>;"
    return-void
.end method
