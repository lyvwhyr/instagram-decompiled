.class Lcom/instagram/android/fragment/UserListFragment$6$2;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserListFragment$6;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$6$2;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6$2;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6$2;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButtonVisibility:I
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserListFragment;->access$702(Lcom/instagram/android/fragment/UserListFragment;I)I

    .line 334
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6$2;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    :cond_0
    return-void
.end method
