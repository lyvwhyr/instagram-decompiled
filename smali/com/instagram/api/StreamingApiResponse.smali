.class public Lcom/instagram/api/StreamingApiResponse;
.super Lcom/instagram/api/ApiResponse;
.source "StreamingApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/ApiResponse",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCheckpointUrl:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;

.field private mNetworkRequest:Z

.field private mStatus:Ljava/lang/String;

.field private mStatusMessage:Ljava/lang/String;

.field mSuccessObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSystemMessages:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 78
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    invoke-direct {p0}, Lcom/instagram/api/ApiResponse;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 38
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    invoke-direct {p0}, Lcom/instagram/api/ApiResponse;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mErrorMessage:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static createWithError(Ljava/lang/String;)Lcom/instagram/api/StreamingApiResponse;
    .locals 3
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/instagram/api/StreamingApiResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/instagram/api/StreamingApiResponse;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_0
    invoke-direct {v0, p0}, Lcom/instagram/api/StreamingApiResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCheckpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mCheckpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mSuccessObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mSystemMessages:Ljava/util/Collection;

    return-object v0
.end method

.method public hasRootValue(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRequest()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/instagram/api/StreamingApiResponse;->mNetworkRequest:Z

    return v0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/api/StreamingApiResponse;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/api/StreamingApiResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRootValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCheckpointUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 132
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mCheckpointUrl:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 43
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mErrorMessage:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setErrorTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "errorTitle"

    .prologue
    .line 124
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mErrorTitle:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setIsNetworkResponse(Z)V
    .locals 0
    .parameter "networkRequest"

    .prologue
    .line 83
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    iput-boolean p1, p0, Lcom/instagram/api/StreamingApiResponse;->mNetworkRequest:Z

    .line 84
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 59
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mStatus:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "statusMessage"

    .prologue
    .line 63
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mStatusMessage:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSuccessObject(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    .local p1, successObject:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mSuccessObject:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public setSystemMessages(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/instagram/api/StreamingApiResponse;,"Lcom/instagram/api/StreamingApiResponse<TT;>;"
    .local p1, systemMessages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/instagram/api/StreamingApiResponse;->mSystemMessages:Ljava/util/Collection;

    .line 129
    return-void
.end method
