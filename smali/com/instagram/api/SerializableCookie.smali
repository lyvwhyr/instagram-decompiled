.class public Lcom/instagram/api/SerializableCookie;
.super Ljava/lang/Object;
.source "SerializableCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a8013aeb70cL


# instance fields
.field private transient clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

.field private final transient cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
    .locals 0
    .parameter "cookie"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    .line 27
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-direct {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    .line 52
    iget-object v1, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 55
    iget-object v1, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 57
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 58
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public getCookie()Lch/boye/httpclientandroidlib/cookie/Cookie;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    .line 31
    iget-object v1, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    if-eqz v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/instagram/api/SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    .line 34
    :cond_0
    return-object v0
.end method
