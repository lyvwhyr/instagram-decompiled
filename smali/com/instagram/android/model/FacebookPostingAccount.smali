.class public Lcom/instagram/android/model/FacebookPostingAccount;
.super Ljava/lang/Object;
.source "FacebookPostingAccount.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/model/FacebookPostingAccount;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/model/FacebookPostingAccount;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/model/FacebookPostingAccount;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/model/FacebookPostingAccount;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "accessToken"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/instagram/android/model/FacebookPostingAccount;->accessToken:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/instagram/android/model/FacebookPostingAccount;->category:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/model/FacebookPostingAccount;->id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/model/FacebookPostingAccount;->name:Ljava/lang/String;

    .line 46
    return-void
.end method
