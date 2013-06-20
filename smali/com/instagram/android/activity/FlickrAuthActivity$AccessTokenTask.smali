.class Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;
.super Landroid/os/AsyncTask;
.source "FlickrAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mConsumer:Loauth/signpost/OAuthConsumer;

.field private mProvider:Loauth/signpost/OAuthProvider;

.field private final mTokenVerifier:Ljava/lang/String;

.field final synthetic this$0:Lcom/instagram/android/activity/FlickrAuthActivity;


# direct methods
.method public constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;Ljava/lang/String;Loauth/signpost/OAuthProvider;Loauth/signpost/OAuthConsumer;)V
    .locals 0
    .parameter
    .parameter "tokenVerifier"
    .parameter "provider"
    .parameter "consumer"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mTokenVerifier:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mProvider:Loauth/signpost/OAuthProvider;

    .line 190
    iput-object p4, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 191
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mConsumer:Loauth/signpost/OAuthConsumer;

    iget-object v2, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mTokenVerifier:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v0, "LOG_TAG"

    const-string v1, "Unable to retrieve access token"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v1}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/flickr/FlickrAccount;->store(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/flickr/FlickrAccount;

    .line 210
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/FlickrAuthActivity;->setResult(I)V

    .line 212
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->finish()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    #calls: Lcom/instagram/android/activity/FlickrAuthActivity;->showErrorDialog()V
    invoke-static {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->access$400(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/activity/FlickrAuthActivity$AccessTokenTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
