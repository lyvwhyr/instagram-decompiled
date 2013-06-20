.class final Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 550
    const-string v0, "RegisterFragment"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setFillOutWithFacebookEnabled(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$900(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 552
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->onFacebookAuthorizationCompleted()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$2000(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    .line 534
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 544
    const-string v0, "RegisterFragment"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setFillOutWithFacebookEnabled(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$900(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 546
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 538
    const-string v0, "RegisterFragment"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setFillOutWithFacebookEnabled(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$900(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 540
    return-void
.end method
