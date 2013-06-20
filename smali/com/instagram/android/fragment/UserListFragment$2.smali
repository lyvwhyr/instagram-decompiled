.class Lcom/instagram/android/fragment/UserListFragment$2;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    .line 175
    new-instance v1, Lcom/instagram/android/fragment/UserListFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/fragment/UserListFragment$2$1;-><init>(Lcom/instagram/android/fragment/UserListFragment$2;Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_1

    .line 184
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    sget v2, Lcom/facebook/k;->confirm_follow_all_request_in_signup:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v5}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/adapter/UserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/instagram/android/fragment/UserListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    new-instance v2, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v3, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v2, Lcom/facebook/k;->follow_all:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/UserListFragment$2$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserListFragment$2$2;-><init>(Lcom/instagram/android/fragment/UserListFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 200
    :goto_1
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    sget v2, Lcom/facebook/k;->are_you_sure:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/fragment/UserListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->followAllFriends(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/instagram/android/fragment/UserListFragment;->access$1000(Lcom/instagram/android/fragment/UserListFragment;Landroid/view/View;)V

    goto :goto_1
.end method
