.class Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
.super Ljava/lang/Object;
.source "ConditionalRequestBuilder.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildConditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 12
    .parameter "request"
    .parameter "cacheEntry"

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v4, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v4, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 63
    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V

    .line 64
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "If-None-Match"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    const-string v0, "Last-Modified"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    const-string v1, "If-Modified-Since"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    const-string v0, "Cache-Control"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v1, v5, v3

    .line 74
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_3

    aget-object v9, v7, v1

    .line 75
    const-string v10, "must-revalidate"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "proxy-revalidate"

    invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    :cond_2
    const/4 v0, 0x1

    .line 73
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 74
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_5
    if-eqz v0, :cond_6

    .line 83
    const-string v0, "Cache-Control"

    const-string v1, "max-age=0"

    invoke-virtual {v4, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_6
    return-object v4
.end method

.method public buildConditionalRequestFromVariants(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;)",
            "Lch/boye/httpclientandroidlib/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, variants:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;>;"
    :try_start_0
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const/4 v0, 0x1

    .line 113
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    if-nez v1, :cond_0

    .line 115
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "unable to build conditional request"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 122
    .end local p1
    :goto_1
    return-object p1

    .line 121
    .restart local p1
    :cond_1
    const-string v0, "If-None-Match"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    .line 122
    goto :goto_1
.end method

.method public buildUnconditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 3
    .parameter "request"
    .parameter "entry"

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V

    .line 146
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "Pragma"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "If-Range"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 149
    const-string v1, "If-Match"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 150
    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 151
    const-string v1, "If-Unmodified-Since"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 152
    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V

    move-object p1, v0

    .line 153
    .end local p1
    :goto_0
    return-object p1

    .line 141
    .restart local p1
    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "unable to build proper unconditional request"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
