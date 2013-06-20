.class public Lcom/instagram/api/loaderrequest/ApiPathRequest;
.super Ljava/lang/Object;
.source "ApiPathRequest.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApiPathRequest"


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/ApiPathRequest;->mPath:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/loaderrequest/ApiPathRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/ApiPathRequest;->mPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public constructParams(Lcom/instagram/api/RequestParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 44
    return-void
.end method

.method public perform()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/api/loaderrequest/ApiPathRequest$1;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/ApiPathRequest$1;-><init>(Lcom/instagram/api/loaderrequest/ApiPathRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method
