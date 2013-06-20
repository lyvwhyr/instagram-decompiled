.class Lcom/instagram/util/NoopUtil$NoopRequest;
.super Lcom/instagram/api/request/AbstractRequest;
.source "NoopUtil.java"


# instance fields
.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "url"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/instagram/api/request/AbstractRequest;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/instagram/util/NoopUtil$NoopRequest;->mUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/util/NoopUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/instagram/util/NoopUtil$NoopRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->GET:Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public getParams()Lcom/instagram/api/RequestParams;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/util/NoopUtil$NoopRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method
