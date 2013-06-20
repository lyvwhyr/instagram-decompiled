.class final Lcom/instagram/facebook/FacebookAccount$1;
.super Lcom/instagram/api/loaderrequest/ApiPathRequest;
.source "FacebookAccount.java"


# instance fields
.field final synthetic val$accessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 110
    iput-object p2, p0, Lcom/instagram/facebook/FacebookAccount$1;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/instagram/api/loaderrequest/ApiPathRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public constructParams(Lcom/instagram/api/RequestParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/facebook/FacebookAccount$1;->val$accessToken:Ljava/lang/String;

    #calls: Lcom/instagram/facebook/FacebookAccount;->constructParams(Lcom/instagram/api/RequestParams;Ljava/lang/String;)Lcom/instagram/api/RequestParams;
    invoke-static {p1, v0}, Lcom/instagram/facebook/FacebookAccount;->access$000(Lcom/instagram/api/RequestParams;Ljava/lang/String;)Lcom/instagram/api/RequestParams;

    .line 114
    return-void
.end method
