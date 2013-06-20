.class public Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.super Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;)V
    .locals 1
    .parameter "conman"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "conman"
    .parameter "params"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 146
    return-void
.end method

.method public static setDefaultHttpParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 178
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 179
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setContentCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 181
    const/16 v0, 0x2000

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 184
    const-string v0, "ch.boye.httpclientandroidlib.client"

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apache-HttpClient/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (java 1.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    .line 190
    return-void

    .line 186
    :cond_0
    const-string v0, "UNAVAILABLE"

    goto :goto_0
.end method


# virtual methods
.method protected createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;-><init>()V

    .line 162
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->setDefaultHttpParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 163
    return-object v0
.end method

.method protected createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;-><init>()V

    .line 196
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 198
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestContent;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 199
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 201
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 202
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 203
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 205
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 206
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 208
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 209
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 210
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 211
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 212
    return-object v0
.end method
