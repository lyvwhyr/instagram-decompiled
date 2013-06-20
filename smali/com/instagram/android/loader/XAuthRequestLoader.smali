.class public Lcom/instagram/android/loader/XAuthRequestLoader;
.super Landroid/support/v4/a/a;
.source "XAuthRequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Lcom/instagram/android/loader/XAuthResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XAuthRequestLoader"


# instance fields
.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;

.field private mDeliverOnly:Z

.field private mPassword:Ljava/lang/String;

.field private mResponse:Lcom/instagram/android/loader/XAuthResponse;

.field private mUsername:Ljava/lang/String;

.field private mXAuthURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/instagram/android/loader/XAuthResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/instagram/android/loader/XAuthRequestLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    if-eqz p1, :cond_0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mResponse:Lcom/instagram/android/loader/XAuthResponse;

    .line 102
    invoke-virtual {p0}, Lcom/instagram/android/loader/XAuthRequestLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    .line 111
    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/instagram/android/loader/XAuthResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/loader/XAuthRequestLoader;->deliverResult(Lcom/instagram/android/loader/XAuthResponse;)V

    return-void
.end method

.method public loadInBackground()Lcom/instagram/android/loader/XAuthResponse;
    .locals 8

    .prologue
    .line 115
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 116
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mXAuthURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v2, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v3, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mConsumerKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mConsumerSecret:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_username"

    iget-object v7, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mUsername:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_password"

    iget-object v7, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mPassword:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_mode"

    const-string v7, "client_auth"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 126
    new-instance v4, Lcom/instagram/android/loader/XAuthResponse$Builder;

    invoke-direct {v4}, Lcom/instagram/android/loader/XAuthResponse$Builder;-><init>()V

    .line 129
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 132
    invoke-virtual {v2, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 134
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/loader/XAuthResponse;->parse(Lorg/apache/http/HttpResponse;)Lcom/instagram/android/loader/XAuthResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/instagram/android/loader/XAuthResponse$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse$Builder;

    .line 139
    invoke-virtual {v4}, Lcom/instagram/android/loader/XAuthResponse$Builder;->create()Lcom/instagram/android/loader/XAuthResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/instagram/android/loader/XAuthRequestLoader;->loadInBackground()Lcom/instagram/android/loader/XAuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lcom/instagram/android/loader/XAuthResponse;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->onCanceled(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/instagram/android/loader/XAuthResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/loader/XAuthRequestLoader;->onCanceled(Lcom/instagram/android/loader/XAuthResponse;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 81
    invoke-virtual {p0}, Lcom/instagram/android/loader/XAuthRequestLoader;->onStopLoading()V

    .line 83
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mResponse:Lcom/instagram/android/loader/XAuthResponse;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mResponse:Lcom/instagram/android/loader/XAuthResponse;

    .line 87
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mResponse:Lcom/instagram/android/loader/XAuthResponse;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mDeliverOnly:Z

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/loader/XAuthRequestLoader;->forceLoad()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mResponse:Lcom/instagram/android/loader/XAuthResponse;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mResponse:Lcom/instagram/android/loader/XAuthResponse;

    invoke-virtual {p0, v0}, Lcom/instagram/android/loader/XAuthRequestLoader;->deliverResult(Lcom/instagram/android/loader/XAuthResponse;)V

    .line 62
    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/loader/XAuthRequestLoader;->cancelLoad()Z

    .line 67
    return-void
.end method

.method public setConsumeKeySecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mConsumerKey:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mConsumerSecret:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setDeliverOnly(Z)V
    .locals 0
    .parameter "deliverOnly"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mDeliverOnly:Z

    .line 41
    return-void
.end method

.method public setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mUsername:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mPassword:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setXAuthURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthRequestLoader;->mXAuthURL:Ljava/lang/String;

    .line 37
    return-void
.end method
