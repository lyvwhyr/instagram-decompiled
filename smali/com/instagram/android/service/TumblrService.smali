.class public Lcom/instagram/android/service/TumblrService;
.super Landroid/app/IntentService;
.source "TumblrService.java"


# static fields
.field private static final INTENT_EXTRA_SERVICE_ACTION:Ljava/lang/String; = "com.instagram.android.TumblrService.INTENT_EXTRA_SERVICE_ACTION"

.field private static final SERVICE_ACTION_FOLLOW_INSTAGRAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TumblrService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "TumblrService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private followInstagramBlog()V
    .locals 8

    .prologue
    .line 76
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 77
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://api.tumblr.com/v2/user/follow"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/instagram/tumblr/TumblrAccount;->get(Landroid/content/Context;)Lcom/instagram/tumblr/TumblrAccount;

    move-result-object v2

    .line 80
    if-nez v2, :cond_0

    .line 81
    new-instance v0, Lcom/instagram/android/service/TumblrService$TumblrAccountNotFoundException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/service/TumblrService$TumblrAccountNotFoundException;-><init>(Lcom/instagram/android/service/TumblrService;Lcom/instagram/android/service/TumblrService$1;)V

    throw v0

    .line 84
    :cond_0
    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-static {}, Lcom/instagram/tumblr/TumblrConstants;->getConsumerKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/instagram/tumblr/TumblrConstants;->getConsumerSecret()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Lcom/instagram/tumblr/TumblrAccount;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/instagram/tumblr/TumblrAccount;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "url"

    const-string v7, "http://blog.instagram.com/"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 92
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 100
    :try_start_1
    invoke-virtual {v3, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_1
    .catch Loauth/signpost/exception/OAuthException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_0
    :try_start_2
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to encode form entity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :catch_1
    move-exception v2

    .line 102
    invoke-virtual {v2}, Loauth/signpost/exception/OAuthException;->printStackTrace()V

    goto :goto_0

    .line 110
    :catch_2
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static followInstagramBlog(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/instagram/android/service/TumblrService;->startService(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method private getAction(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 58
    const-string v0, "com.instagram.android.TumblrService.INTENT_EXTRA_SERVICE_ACTION"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static startService(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "actionId"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/service/TumblrService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v1, "com.instagram.android.TumblrService.INTENT_EXTRA_SERVICE_ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/instagram/android/service/TumblrService;->getAction(Landroid/content/Intent;)I

    move-result v0

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/android/service/TumblrService;->followInstagramBlog()V
    :try_end_0
    .catch Lcom/instagram/android/service/TumblrService$TumblrAccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "TumblrService"

    const-string v2, "Tumblr account not found"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
