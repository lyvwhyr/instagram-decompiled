.class public Lcom/instagram/api/request/CheckConnectivityRequest;
.super Lcom/instagram/api/request/AbstractRequest;
.source "CheckConnectivityRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractRequest;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->GET:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "http://instagram.com/bfad3e85bc/"

    return-object v0
.end method
