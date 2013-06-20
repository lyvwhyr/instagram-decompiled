.class public Lcom/instagram/android/feed/api/request/ResolveShortUrlRequest;
.super Lcom/instagram/api/request/AbstractIgRequest;
.source "ResolveShortUrlRequest.java"


# instance fields
.field private mShortUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "shortUrl"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractIgRequest;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/instagram/android/feed/api/request/ResolveShortUrlRequest;->mShortUrl:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->GET:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/instagram/api/RequestParams;

    const-string v1, "url"

    iget-object v2, p0, Lcom/instagram/android/feed/api/request/ResolveShortUrlRequest;->mShortUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/instagram/api/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "oembed/"

    return-object v0
.end method
