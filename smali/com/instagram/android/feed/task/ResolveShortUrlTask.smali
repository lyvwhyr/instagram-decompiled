.class public Lcom/instagram/android/feed/task/ResolveShortUrlTask;
.super Landroid/os/AsyncTask;
.source "ResolveShortUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResolveShortUrlTask"


# instance fields
.field private mFragment:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

.field private mShortUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/ShortUrlFeedFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->mFragment:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->mShortUrl:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/instagram/android/feed/api/request/ResolveShortUrlRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->mShortUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/instagram/android/feed/api/request/ResolveShortUrlRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v3

    .line 44
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 48
    :cond_0
    const-string v0, "ResolveShortUrlTask"

    const-string v2, "Bad HTTP response"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 60
    :goto_0
    return-object v0

    .line 51
    :cond_1
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 53
    const-class v4, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 54
    const-string v3, "media_id"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 55
    :try_start_1
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    :goto_1
    const-string v2, "ResolveShortUrlTask"

    const-string v3, "IOException: unable to retrieve short url"

    invoke-static {v2, v3, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "mediaId"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->mFragment:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    if-eqz v0, :cond_0

    .line 66
    if-nez p1, :cond_1

    .line 67
    const-string v0, "ShortUrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media id is null for short url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->mShortUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/crash/IgErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->mFragment:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->performWithMediaId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFragment(Lcom/instagram/android/fragment/ShortUrlFeedFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->mFragment:Lcom/instagram/android/fragment/ShortUrlFeedFragment;

    .line 76
    return-void
.end method
