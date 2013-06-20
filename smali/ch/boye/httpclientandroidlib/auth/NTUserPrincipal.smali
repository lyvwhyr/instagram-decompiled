.class public Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5f57bf080fe6c66eL


# instance fields
.field private final domain:Ljava/lang/String;

.field private final ntname:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "domain"
    .parameter "username"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;

    .line 59
    if-eqz p1, :cond_1

    .line 60
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    .line 64
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    .line 73
    :goto_1
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    .line 97
    if-ne p0, p1, :cond_1

    .line 105
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 98
    .restart local p1
    :cond_1
    instance-of v1, p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    if-eqz v1, :cond_2

    .line 99
    check-cast p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    .line 100
    .end local p1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;

    iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    const/16 v0, 0x11

    .line 90
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 91
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 92
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method
