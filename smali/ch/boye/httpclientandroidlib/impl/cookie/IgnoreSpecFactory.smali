.class public Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;
.super Ljava/lang/Object;
.source "IgnoreSpecFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/cookie/CookieSpec;
    .locals 1
    .parameter "params"

    .prologue
    .line 44
    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpec;-><init>()V

    return-object v0
.end method
