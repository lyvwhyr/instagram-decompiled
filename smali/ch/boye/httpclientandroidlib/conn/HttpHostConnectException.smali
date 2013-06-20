.class public Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;
.source "HttpHostConnectException.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2c5515199314e300L


# instance fields
.field private final host:Lch/boye/httpclientandroidlib/HttpHost;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/ConnectException;)V
    .locals 2
    .parameter "host"
    .parameter "cause"

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;->host:Lch/boye/httpclientandroidlib/HttpHost;

    .line 51
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 52
    return-void
.end method


# virtual methods
.method public getHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;->host:Lch/boye/httpclientandroidlib/HttpHost;

    return-object v0
.end method
