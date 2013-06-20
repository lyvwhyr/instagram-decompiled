.class public Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;
.super Lch/boye/httpclientandroidlib/params/AbstractHttpParams;
.source "ClientParamsStack.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;

.field protected final clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;

.field protected final overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;

.field protected final requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;)V
    .locals 4
    .parameter "stack"

    .prologue
    .line 114
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getApplicationParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getClientParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getRequestParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getOverrideParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "stack"
    .parameter "aparams"
    .parameter "cparams"
    .parameter "rparams"
    .parameter "oparams"

    .prologue
    .line 137
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    if-eqz p3, :cond_1

    .end local p3
    :goto_1
    if-eqz p4, :cond_2

    .end local p4
    :goto_2
    if-eqz p5, :cond_3

    .end local p5
    :goto_3
    invoke-direct {p0, p2, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 141
    return-void

    .line 137
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getApplicationParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p2

    goto :goto_0

    .end local p2
    :cond_1
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getClientParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p3

    goto :goto_1

    .end local p3
    :cond_2
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getRequestParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p4

    goto :goto_2

    .end local p4
    :cond_3
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getOverrideParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p5

    goto :goto_3
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .parameter "aparams"
    .parameter "cparams"
    .parameter "rparams"
    .parameter "oparams"

    .prologue
    .line 98
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;-><init>()V

    .line 99
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 100
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 101
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 102
    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 103
    return-void
.end method


# virtual methods
.method public copy()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 0

    .prologue
    .line 266
    return-object p0
.end method

.method public final getApplicationParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public final getClientParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public final getOverrideParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-eqz v1, :cond_1

    .line 199
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-eqz v1, :cond_2

    .line 202
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-eqz v1, :cond_3

    .line 205
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-eqz v1, :cond_4

    .line 208
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    :cond_4
    return-object v0
.end method

.method public final getRequestParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
