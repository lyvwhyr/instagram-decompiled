.class public Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;
.super Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;
.source "UpdateAvatarRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/loaderrequest/AbstractLoaderRequest",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_FACEBOOK:I = 0x0

.field public static final TYPE_TWITTER:I = 0x1

.field public static final TYPE_URI:I = 0x2


# instance fields
.field private mRemove:Z

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/af;",
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, abstractApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;,"Lcom/instagram/api/AbstractApiCallbacks<Lcom/instagram/android/model/User;>;"
    sget v0, Lcom/facebook/g;->request_id_update_avatar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mRemove:Z

    .line 49
    return-void
.end method

.method public static compressedInputStream(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;
    .locals 3
    .parameter "original"

    .prologue
    .line 81
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static getBitmapToSend(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "type"
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 88
    .line 90
    if-nez p0, :cond_4

    .line 93
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V

    .line 94
    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://graph.facebook.com/me/picture?type=large&method=GET&access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_0
    move-object v1, v0

    .line 129
    :cond_1
    :goto_0
    if-eqz v1, :cond_8

    .line 130
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 133
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_7

    .line 134
    const/high16 v2, 0x4316

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x96

    invoke-static {v1, v0, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    :goto_1
    invoke-static {v0}, Lcom/instagram/util/BitmapHelper;->squarifyIfNeeded(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 145
    if-eq v0, v1, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 151
    :cond_2
    :goto_2
    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 101
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_3
    throw v0

    .line 104
    :cond_4
    if-ne p0, v6, :cond_6

    .line 107
    :try_start_1
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterAccount;->get(Landroid/content/Context;)Lcom/instagram/twitter/TwitterAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/twitter/TwitterAccount;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterService;->fetchAvatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_9

    .line 110
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V

    .line 111
    new-instance v3, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 116
    :goto_3
    if-eqz v0, :cond_1

    .line 117
    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto :goto_0

    .line 116
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 117
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_5
    throw v0

    .line 120
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 121
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/instagram/util/BitmapHelper;->largestSquareBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Integer;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method protected buildRequest(Lcom/instagram/api/ApiHttpClient;Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 166
    invoke-virtual {p1, p2, p3}, Lcom/instagram/api/ApiHttpClient;->postRequest(Ljava/lang/String;Lcom/instagram/api/RequestParams;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mRemove:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "accounts/remove_profile_picture/"

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "accounts/change_profile_picture/"

    goto :goto_0
.end method

.method public performRemove()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mRemove:Z

    .line 53
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 54
    return-void
.end method

.method public performWithType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 61
    iput p1, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mType:I

    .line 62
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->perform()V

    .line 63
    return-void
.end method

.method public preProcessInBackground()V
    .locals 4

    .prologue
    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mRemove:Z

    if-nez v0, :cond_0

    .line 70
    iget v0, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mType:I

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->getBitmapToSend(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->compressedInputStream(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->getParams()Lcom/instagram/api/RequestParams;

    move-result-object v1

    const-string v2, "profile_pic"

    const-string v3, "profile_pic"

    invoke-virtual {v1, v2, v0, v3}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest;->preProcessInBackground()V

    .line 78
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v0, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest$PreProcessException;

    invoke-direct {v0}, Lcom/instagram/api/loaderrequest/AbstractLoaderRequest$PreProcessException;-><init>()V

    throw v0
.end method

.method public processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/User;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)",
            "Lcom/instagram/android/model/User;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    const/4 v0, 0x0

    .line 173
    const-string v1, "user"

    invoke-virtual {p1, v1}, Lcom/instagram/api/ApiResponse;->hasRootValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v0, "user"

    const-class v1, Lcom/instagram/android/model/User;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/ApiResponse;->readRootValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 178
    :cond_0
    return-object v0
.end method

.method public bridge synthetic processInBackground(Lcom/instagram/api/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->processInBackground(Lcom/instagram/api/ApiResponse;)Lcom/instagram/android/model/User;

    move-result-object v0

    return-object v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->mUri:Landroid/net/Uri;

    .line 58
    return-void
.end method
