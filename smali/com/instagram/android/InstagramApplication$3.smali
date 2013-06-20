.class Lcom/instagram/android/InstagramApplication$3;
.super Ljava/lang/Object;
.source "InstagramApplication.java"

# interfaces
.implements Lcom/facebook/a/f;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/InstagramApplication;


# direct methods
.method constructor <init>(Lcom/instagram/android/InstagramApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/instagram/android/InstagramApplication$3;->this$0:Lcom/instagram/android/InstagramApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 131
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 132
    return-void
.end method

.method public onError(Ljava/lang/Error;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 141
    const-string v0, "InstagramApplication"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 136
    const-string v0, "InstagramApplication"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method
