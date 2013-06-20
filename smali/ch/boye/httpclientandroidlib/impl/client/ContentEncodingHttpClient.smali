.class public Lch/boye/httpclientandroidlib/impl/client/ContentEncodingHttpClient;
.super Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.source "ContentEncodingHttpClient.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/ContentEncodingHttpClient;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "conman"
    .parameter "params"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/ContentEncodingHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 76
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAcceptEncoding;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 77
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseContentEncoding;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 79
    return-object v0
.end method
