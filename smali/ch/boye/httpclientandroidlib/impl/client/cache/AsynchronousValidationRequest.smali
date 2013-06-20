.class Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;
.super Ljava/lang/Object;
.source "AsynchronousValidationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

.field private final cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

.field private final context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

.field private final identifier:Ljava/lang/String;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

.field private final request:Lch/boye/httpclientandroidlib/HttpRequest;

.field private final target:Lch/boye/httpclientandroidlib/HttpHost;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V
    .locals 2
    .parameter "parent"
    .parameter "cachingClient"
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .parameter "cacheEntry"
    .parameter "identifier"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 69
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    .line 70
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    .line 71
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->target:Lch/boye/httpclientandroidlib/HttpHost;

    .line 72
    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->request:Lch/boye/httpclientandroidlib/HttpRequest;

    .line 73
    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    .line 74
    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    .line 75
    iput-object p7, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->target:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->request:Lch/boye/httpclientandroidlib/HttpRequest;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asynchronous revalidation failed due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    :try_start_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProtocolException thrown during asynchronous revalidation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->error(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    throw v0
.end method
