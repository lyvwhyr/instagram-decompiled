.class public abstract Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntity;


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lch/boye/httpclientandroidlib/Header;

.field protected contentType:Lch/boye/httpclientandroidlib/Header;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentEncoding:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public getContentType()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentType:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 169
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->chunked:Z

    .line 170
    return-void
.end method

.method public setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0
    .parameter "contentEncoding"

    .prologue
    .line 134
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentEncoding:Lch/boye/httpclientandroidlib/Header;

    .line 135
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "ceString"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V

    .line 151
    return-void
.end method

.method public setContentType(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 105
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentType:Lch/boye/httpclientandroidlib/Header;

    .line 106
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .parameter "ctString"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V

    .line 122
    return-void
.end method
