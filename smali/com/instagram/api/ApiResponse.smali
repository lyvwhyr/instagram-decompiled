.class public abstract Lcom/instagram/api/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFailedToLoad:Z

.field protected mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiResponseStatus()Lcom/instagram/api/ApiResponseStatus;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/instagram/api/ApiResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusOk:Lcom/instagram/api/ApiResponseStatus;

    .line 57
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 48
    sget-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusObjectNotFound:Lcom/instagram/api/ApiResponseStatus;

    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusError:Lcom/instagram/api/ApiResponseStatus;

    goto :goto_0

    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/api/ApiResponse;->mFailedToLoad:Z

    if-eqz v0, :cond_3

    .line 55
    sget-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusError:Lcom/instagram/api/ApiResponseStatus;

    goto :goto_0

    .line 57
    :cond_3
    sget-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusLoading:Lcom/instagram/api/ApiResponseStatus;

    goto :goto_0
.end method

.method public abstract getCheckpointUrl()Ljava/lang/String;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getErrorTitle()Ljava/lang/String;
.end method

.method public getResponseCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/instagram/api/ApiResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/instagram/api/ApiResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/api/ApiResponse;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    return-object v0
.end method

.method public abstract getStatusMessage()Ljava/lang/String;
.end method

.method public abstract getSuccessObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getSystemMessages()Ljava/util/Collection;
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
.end method

.method public abstract hasRootValue(Ljava/lang/String;)Z
.end method

.method public abstract isNetworkRequest()Z
.end method

.method public abstract isOk()Z
.end method

.method public abstract readRootValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract setErrorMessage(Ljava/lang/String;)V
.end method

.method public setErrorStatusIfFailedToLoad()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/instagram/api/ApiResponse;->getApiResponseStatus()Lcom/instagram/api/ApiResponseStatus;

    move-result-object v0

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusLoading:Lcom/instagram/api/ApiResponseStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/api/ApiResponse;->mFailedToLoad:Z

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setIsNetworkResponse(Z)V
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 0
    .parameter "statusLine"

    .prologue
    .line 26
    .local p0, this:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<TT;>;"
    iput-object p1, p0, Lcom/instagram/api/ApiResponse;->mStatusLine:Lch/boye/httpclientandroidlib/StatusLine;

    .line 27
    return-void
.end method

.method public abstract setSuccessObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
