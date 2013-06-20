.class public Lcom/instagram/android/loader/XAuthResponse$Builder;
.super Ljava/lang/Object;
.source "XAuthResponse.java"


# instance fields
.field private final P:Lcom/instagram/android/loader/XAuthResponse$Params;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/instagram/android/loader/XAuthResponse$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/android/loader/XAuthResponse$Params;-><init>(Lcom/instagram/android/loader/XAuthResponse$1;)V

    iput-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Builder;->P:Lcom/instagram/android/loader/XAuthResponse$Params;

    .line 32
    return-void
.end method


# virtual methods
.method public create()Lcom/instagram/android/loader/XAuthResponse;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/instagram/android/loader/XAuthResponse;

    iget-object v1, p0, Lcom/instagram/android/loader/XAuthResponse$Builder;->P:Lcom/instagram/android/loader/XAuthResponse$Params;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/loader/XAuthResponse;-><init>(Lcom/instagram/android/loader/XAuthResponse$Params;Lcom/instagram/android/loader/XAuthResponse$1;)V

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse$Builder;
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Builder;->P:Lcom/instagram/android/loader/XAuthResponse$Params;

    #setter for: Lcom/instagram/android/loader/XAuthResponse$Params;->errorMessage:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/instagram/android/loader/XAuthResponse$Params;->access$302(Lcom/instagram/android/loader/XAuthResponse$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public setSecret(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse$Builder;
    .locals 1
    .parameter "secret"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Builder;->P:Lcom/instagram/android/loader/XAuthResponse$Params;

    #setter for: Lcom/instagram/android/loader/XAuthResponse$Params;->secret:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/instagram/android/loader/XAuthResponse$Params;->access$202(Lcom/instagram/android/loader/XAuthResponse$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/instagram/android/loader/XAuthResponse$Builder;
    .locals 1
    .parameter "token"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Builder;->P:Lcom/instagram/android/loader/XAuthResponse$Params;

    #setter for: Lcom/instagram/android/loader/XAuthResponse$Params;->token:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/instagram/android/loader/XAuthResponse$Params;->access$102(Lcom/instagram/android/loader/XAuthResponse$Params;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    return-object p0
.end method
