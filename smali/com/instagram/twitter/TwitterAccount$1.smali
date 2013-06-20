.class final Lcom/instagram/twitter/TwitterAccount$1;
.super Lcom/instagram/api/loaderrequest/ApiPathRequest;
.source "TwitterAccount.java"


# instance fields
.field final synthetic val$account:Lcom/instagram/twitter/TwitterAccount;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/instagram/twitter/TwitterAccount;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 94
    iput-object p2, p0, Lcom/instagram/twitter/TwitterAccount$1;->val$account:Lcom/instagram/twitter/TwitterAccount;

    invoke-direct {p0, p1}, Lcom/instagram/api/loaderrequest/ApiPathRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public constructParams(Lcom/instagram/api/RequestParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 97
    const-string v0, "twitter_access_token_key"

    iget-object v1, p0, Lcom/instagram/twitter/TwitterAccount$1;->val$account:Lcom/instagram/twitter/TwitterAccount;

    invoke-virtual {v1}, Lcom/instagram/twitter/TwitterAccount;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "twitter_access_token_secret"

    iget-object v1, p0, Lcom/instagram/twitter/TwitterAccount$1;->val$account:Lcom/instagram/twitter/TwitterAccount;

    invoke-virtual {v1}, Lcom/instagram/twitter/TwitterAccount;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "twitter_username"

    iget-object v1, p0, Lcom/instagram/twitter/TwitterAccount$1;->val$account:Lcom/instagram/twitter/TwitterAccount;

    invoke-virtual {v1}, Lcom/instagram/twitter/TwitterAccount;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "share_to_twitter"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
