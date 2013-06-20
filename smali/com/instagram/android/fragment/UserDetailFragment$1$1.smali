.class Lcom/instagram/android/fragment/UserDetailFragment$1$1;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment$1$1;->this$1:Lcom/instagram/android/fragment/UserDetailFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1$1;->this$1:Lcom/instagram/android/fragment/UserDetailFragment$1;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$1$1;->this$1:Lcom/instagram/android/fragment/UserDetailFragment$1;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    #calls: Lcom/instagram/android/fragment/UserDetailFragment;->isCurrentUser(Lcom/instagram/android/model/User;)Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserDetailFragment;->access$700(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1$1;->this$1:Lcom/instagram/android/fragment/UserDetailFragment$1;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/UserOptionsFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1$1;->this$1:Lcom/instagram/android/fragment/UserDetailFragment$1;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    #calls: Lcom/instagram/android/fragment/UserDetailFragment;->showUserOptionsDialog()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->access$800(Lcom/instagram/android/fragment/UserDetailFragment;)V

    goto :goto_0
.end method
