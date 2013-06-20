.class public Lch/boye/httpclientandroidlib/client/HttpResponseException;
.super Lch/boye/httpclientandroidlib/client/ClientProtocolException;
.source "HttpResponseException.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63bc080fd5942acdL


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "s"

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    .line 45
    iput p1, p0, Lch/boye/httpclientandroidlib/client/HttpResponseException;->statusCode:I

    .line 46
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lch/boye/httpclientandroidlib/client/HttpResponseException;->statusCode:I

    return v0
.end method
