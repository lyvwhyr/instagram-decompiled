.class public abstract Lcom/instagram/api/request/AbstractIgRequest;
.super Lcom/instagram/api/request/AbstractRequest;
.source "AbstractIgRequest.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractRequest;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected abstract getPath()Ljava/lang/String;
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/instagram/api/request/AbstractIgRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/request/AbstractIgRequest;->isSecure()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
