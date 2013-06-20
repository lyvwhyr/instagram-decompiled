.class public Lcom/instagram/android/model/CheckUsernameResponse;
.super Ljava/lang/Object;
.source "CheckUsernameResponse.java"


# instance fields
.field private mIsAvailable:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/instagram/android/model/CheckUsernameResponse;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public isIsAvailable()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/instagram/android/model/CheckUsernameResponse;->mIsAvailable:Z

    return v0
.end method

.method public setIsAvailable(Z)V
    .locals 0
    .parameter "isAvailable"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/instagram/android/model/CheckUsernameResponse;->mIsAvailable:Z

    .line 24
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/instagram/android/model/CheckUsernameResponse;->mUsername:Ljava/lang/String;

    .line 16
    return-void
.end method
