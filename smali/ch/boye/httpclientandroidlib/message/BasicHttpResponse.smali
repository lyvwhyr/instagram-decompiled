.class public Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponse;


# instance fields
.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;

.field private locale:Ljava/util/Locale;

.field private reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

.field private statusline:Lch/boye/httpclientandroidlib/StatusLine;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
    .locals 2
    .parameter "ver"
    .parameter "code"
    .parameter "reason"

    .prologue
    const/4 v1, 0x0

    .line 99
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 1
    .parameter "statusline"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 2
    .parameter "statusline"
    .parameter "catalog"
    .parameter "locale"

    .prologue
    .line 66
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 71
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    .line 72
    if-eqz p3, :cond_1

    .end local p3
    :goto_0
    iput-object p3, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 73
    return-void

    .line 72
    .restart local p3
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected getReason(I)Ljava/lang/String;
    .locals 2
    .parameter "code"

    .prologue
    .line 190
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    return-object v0
.end method

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 166
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    .line 167
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .parameter "loc"

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 175
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    .line 176
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 178
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 154
    if-eqz p1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Line break in reason phrase."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 162
    return-void
.end method

.method public setStatusCode(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 147
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    .line 148
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 149
    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;I)V
    .locals 2
    .parameter "ver"
    .parameter "code"

    .prologue
    .line 134
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 135
    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
    .locals 1
    .parameter "ver"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 141
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 142
    return-void
.end method

.method public setStatusLine(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 2
    .parameter "statusline"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->statusline:Lch/boye/httpclientandroidlib/StatusLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
