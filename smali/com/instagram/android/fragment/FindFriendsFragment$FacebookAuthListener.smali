.class final Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment;Lcom/instagram/android/fragment/FindFriendsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "com.instagram.android.fragment.FindFriendsFragment"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 161
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 163
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    #calls: Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$400(Lcom/instagram/android/fragment/FindFriendsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/FindFriendsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;)V

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showOnFirstRun(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 185
    const-string v0, "com.instagram.android.fragment.FindFriendsFragment"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 180
    const-string v0, "com.instagram.android.fragment.FindFriendsFragment"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method
