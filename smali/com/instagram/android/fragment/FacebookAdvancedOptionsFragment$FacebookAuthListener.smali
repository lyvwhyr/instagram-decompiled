.class final Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "FacebookAdvancedOptionsFragment"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 187
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 189
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateToAllowingStateLoss(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 201
    const-string v0, "FacebookAdvancedOptionsFragment"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 196
    const-string v0, "FacebookAdvancedOptionsFragment"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method
