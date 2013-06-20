.class public abstract Lcom/instagram/oauth/OAuthAccount;
.super Ljava/lang/Object;
.source "OAuthAccount.java"


# instance fields
.field private final mSecret:Ljava/lang/String;

.field private final mToken:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "secret"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/instagram/oauth/OAuthAccount;->mToken:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/instagram/oauth/OAuthAccount;->mSecret:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/oauth/OAuthAccount;->mSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/oauth/OAuthAccount;->mToken:Ljava/lang/String;

    return-object v0
.end method
