.class final Lcom/instagram/flickr/FlickrAccount$1;
.super Lcom/instagram/api/loaderrequest/ApiPathRequest;
.source "FlickrAccount.java"


# instance fields
.field final synthetic val$account:Lcom/instagram/flickr/FlickrAccount;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/instagram/flickr/FlickrAccount;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 73
    iput-object p2, p0, Lcom/instagram/flickr/FlickrAccount$1;->val$account:Lcom/instagram/flickr/FlickrAccount;

    invoke-direct {p0, p1}, Lcom/instagram/api/loaderrequest/ApiPathRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public constructParams(Lcom/instagram/api/RequestParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 76
    const-string v0, "flickr_access_token_key"

    iget-object v1, p0, Lcom/instagram/flickr/FlickrAccount$1;->val$account:Lcom/instagram/flickr/FlickrAccount;

    invoke-virtual {v1}, Lcom/instagram/flickr/FlickrAccount;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "flickr_access_token_secret"

    iget-object v1, p0, Lcom/instagram/flickr/FlickrAccount$1;->val$account:Lcom/instagram/flickr/FlickrAccount;

    invoke-virtual {v1}, Lcom/instagram/flickr/FlickrAccount;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "share_to_flickr"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
