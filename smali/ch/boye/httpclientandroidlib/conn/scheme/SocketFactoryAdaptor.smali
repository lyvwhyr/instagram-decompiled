.class Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    .line 48
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 3
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 63
    :cond_0
    if-gez p5, :cond_1

    .line 64
    const/4 p5, 0x0

    .line 66
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 68
    :cond_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 70
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, p1, v2, v0, p6}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 52
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 83
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 88
    .end local p1
    :goto_0
    return v0

    .line 84
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    instance-of v0, p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    check-cast p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    .end local p1
    iget-object v1, p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 88
    .restart local p1
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .parameter "socket"

    .prologue
    .line 74
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
