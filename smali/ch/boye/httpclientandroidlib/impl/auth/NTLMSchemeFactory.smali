.class public Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "NTLMSchemeFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/auth/AuthScheme;
    .locals 2
    .parameter "params"

    .prologue
    .line 47
    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;-><init>(Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;)V

    return-object v0
.end method
