.class public Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;
.super Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

.field private state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 67
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/AuthSchemeBase;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NTLM engine may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

    .line 72
    sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
    .locals 6
    .parameter "credentials"
    .parameter "request"

    .prologue
    .line 115
    .line 117
    :try_start_0
    check-cast p1, Lch/boye/httpclientandroidlib/auth/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local p1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    .line 140
    :goto_0
    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 141
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 146
    :goto_1
    const-string v2, ": NTLM "

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-object v0

    .line 118
    .restart local p1
    :catch_0
    move-exception v0

    .line 119
    new-instance v0, Lch/boye/httpclientandroidlib/auth/InvalidCredentialsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    .end local p1
    :cond_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_2

    .line 130
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->engine:Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
    .locals 2
    .parameter "buffer"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 98
    invoke-virtual {p1, p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    .line 105
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 110
    :goto_1
    return-void

    .line 103
    :cond_0
    sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 107
    :cond_1
    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->state:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    .line 108
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    goto :goto_1
.end method
