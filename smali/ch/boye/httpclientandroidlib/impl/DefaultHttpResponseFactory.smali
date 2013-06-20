.class public Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseFactory;


# instance fields
.field protected final reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;-><init>(Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;)V
    .locals 2
    .parameter "catalog"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reason phrase catalog must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    .line 64
    return-void
.end method


# virtual methods
.method protected determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 4
    .parameter "ver"
    .parameter "status"
    .parameter "context"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP version may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p0, p3}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    invoke-interface {v1, p2, v0}, Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-direct {v2, p1, p2, v1}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    .line 85
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    invoke-direct {v1, v2, v3, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v1
.end method

.method public newHttpResponse(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "statusline"
    .parameter "context"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object v0

    .line 96
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    invoke-direct {v1, p1, v2, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v1
.end method
