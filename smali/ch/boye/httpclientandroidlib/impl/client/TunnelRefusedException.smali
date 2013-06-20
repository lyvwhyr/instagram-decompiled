.class public Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;
.super Lch/boye/httpclientandroidlib/HttpException;
.source "TunnelRefusedException.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lch/boye/httpclientandroidlib/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 0
    .parameter "message"
    .parameter "response"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->response:Lch/boye/httpclientandroidlib/HttpResponse;

    .line 50
    return-void
.end method


# virtual methods
.method public getResponse()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->response:Lch/boye/httpclientandroidlib/HttpResponse;

    return-object v0
.end method
