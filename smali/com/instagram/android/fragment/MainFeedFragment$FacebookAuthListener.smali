.class final Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;Lcom/instagram/android/fragment/MainFeedFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 621
    const-string v0, "MainFeedFragment"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 594
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 596
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/MainFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener$1;-><init>(Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;)V

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showOnFirstRun(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;)V

    .line 607
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 616
    const-string v0, "MainFeedFragment"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 611
    const-string v0, "MainFeedFragment"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method
