.class public Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;
.super Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/RequestLine;)V
    .locals 0
    .parameter "requestline"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "method"
    .parameter "uri"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
    .locals 0
    .parameter "method"
    .parameter "uri"
    .parameter "ver"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 54
    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    .prologue
    .line 69
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 65
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;->entity:Lch/boye/httpclientandroidlib/HttpEntity;

    .line 66
    return-void
.end method
