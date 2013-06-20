.class public Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;
.super Ljava/lang/Object;
.source "FacebookVerifyAccessTokenRequest.java"


# instance fields
.field private token:Ljava/lang/String;

.field private user:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>(Lcom/instagram/android/model/User;Ljava/lang/String;)V
    .locals 0
    .parameter "user"
    .parameter "token"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;->user:Lcom/instagram/android/model/User;

    .line 95
    iput-object p2, p0, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;->token:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/instagram/android/model/User;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;->user:Lcom/instagram/android/model/User;

    return-object v0
.end method
