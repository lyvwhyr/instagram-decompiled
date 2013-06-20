.class public Lch/boye/httpclientandroidlib/auth/NTCredentials;
.super Ljava/lang/Object;
.source "NTCredentials.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/auth/Credentials;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x667f466566109701L


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

.field private final workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "usernamePassword"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username:password string may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 70
    if-ltz v1, :cond_1

    .line 71
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;

    move-object p1, v0

    .line 77
    .end local p1
    :goto_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 78
    if-ltz v0, :cond_2

    .line 79
    new-instance v1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    .line 87
    :goto_1
    iput-object v4, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    .line 88
    return-void

    .line 75
    .restart local p1
    :cond_1
    iput-object v4, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;

    goto :goto_0

    .line 83
    .end local p1
    :cond_2
    new-instance v1, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "userName"
    .parameter "password"
    .parameter "workstation"
    .parameter "domain"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    invoke-direct {v0, p4, p1}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    .line 109
    iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;

    .line 110
    if-eqz p3, :cond_1

    .line 111
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    .line 157
    if-ne p0, p1, :cond_1

    .line 165
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 158
    .restart local p1
    :cond_1
    instance-of v1, p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;

    if-eqz v1, :cond_2

    .line 159
    check-cast p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;

    .line 160
    .end local p1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 149
    const/16 v0, 0x11

    .line 150
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 151
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 152
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->principal:Lch/boye/httpclientandroidlib/auth/NTUserPrincipal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "][workstation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/NTCredentials;->workstation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
