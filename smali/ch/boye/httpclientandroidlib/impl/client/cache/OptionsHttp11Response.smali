.class final Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "OptionsHttp11Response.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponse;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final statusLine:Lch/boye/httpclientandroidlib/StatusLine;

.field private final version:Lch/boye/httpclientandroidlib/ProtocolVersion;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    .line 51
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v2, 0x1f5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    .line 53
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    return-void
.end method


# virtual methods
.method public addHeader(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 127
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 132
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllHeaders()[Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .locals 1
    .parameter "name"

    .prologue
    .line 111
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
    .locals 1
    .parameter "name"

    .prologue
    .line 106
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
    .locals 1
    .parameter "name"

    .prologue
    .line 116
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->getLastHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 174
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->version:Lch/boye/httpclientandroidlib/ProtocolVersion;

    return-object v0
.end method

.method public getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->statusLine:Lch/boye/httpclientandroidlib/StatusLine;

    return-object v0
.end method

.method public headerIterator()Lch/boye/httpclientandroidlib/HeaderIterator;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->iterator()Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;
    .locals 1
    .parameter "name"

    .prologue
    .line 166
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/message/HeaderGroup;->iterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 152
    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 157
    return-void
.end method

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 85
    return-void
.end method

.method public setHeader(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 137
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 142
    return-void
.end method

.method public setHeaders([Lch/boye/httpclientandroidlib/Header;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 147
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 93
    return-void
.end method

.method public setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 180
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 77
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 73
    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;I)V
    .locals 0
    .parameter "ver"
    .parameter "code"

    .prologue
    .line 65
    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
    .locals 0
    .parameter "ver"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 69
    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 0
    .parameter "statusline"

    .prologue
    .line 61
    return-void
.end method
