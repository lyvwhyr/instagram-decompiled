.class public Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/auth/Credentials;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36087f34635c8cbL


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "usernamePassword"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username:password string may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 62
    if-ltz v0, :cond_1

    .line 63
    new-instance v1, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    .line 64
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    .line 84
    iput-object p2, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    .line 106
    if-ne p0, p1, :cond_1

    .line 113
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 107
    .restart local p1
    :cond_1
    instance-of v1, p1, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;

    if-eqz v1, :cond_2

    .line 108
    check-cast p1, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;

    .line 109
    .end local p1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;->principal:Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
