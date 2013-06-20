.class Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

.field final synthetic val$entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

.field final synthetic val$req:Lch/boye/httpclientandroidlib/HttpRequest;

.field final synthetic val$variantCacheKey:Ljava/lang/String;

.field final synthetic val$variantKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$req:Lch/boye/httpclientandroidlib/HttpRequest;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$variantKey:Ljava/lang/String;

    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$variantCacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 6
    .parameter "existing"

    .prologue
    .line 142
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$req:Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$variantKey:Ljava/lang/String;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;->val$variantCacheKey:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->doGetUpdatedParentEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    return-object v0
.end method
