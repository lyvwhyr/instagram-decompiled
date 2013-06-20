.class Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;
.super Landroid/os/AsyncTask;
.source "FlickrAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mConsumer:Loauth/signpost/OAuthConsumer;

.field private mProvider:Loauth/signpost/OAuthProvider;

.field private final mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/instagram/android/activity/FlickrAuthActivity;


# direct methods
.method public constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;Landroid/webkit/WebView;Loauth/signpost/OAuthProvider;Loauth/signpost/OAuthConsumer;)V
    .locals 0
    .parameter
    .parameter "webView"
    .parameter "provider"
    .parameter "consumer"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->mWebView:Landroid/webkit/WebView;

    .line 150
    iput-object p3, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->mProvider:Loauth/signpost/OAuthProvider;

    .line 151
    iput-object p4, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 152
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v2, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->mConsumer:Loauth/signpost/OAuthConsumer;

    const-string v3, "instagram://flickr_callback"

    invoke-interface {v1, v2, v3}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    const-string v1, "LOG_TAG"

    const-string v2, "Unable to retrieve request token"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 169
    if-eqz p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    #calls: Lcom/instagram/android/activity/FlickrAuthActivity;->showErrorDialog()V
    invoke-static {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->access$400(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    goto :goto_0
.end method
