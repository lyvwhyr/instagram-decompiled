.class Lcom/instagram/android/fragment/UserDetailFragment$2;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserDetailFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getMenuOptions()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 272
    aget-object v1, v0, p2

    iget-object v2, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/UserDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/k;->report_as_spam:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/UserDetailFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/UserDetailFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/FlagHelper;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;)V

    .line 274
    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/FlagHelper;->flagUser(Ljava/lang/String;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    aget-object v1, v0, p2

    iget-object v2, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/UserDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/k;->menu_label_block_user:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    sget v1, Lcom/facebook/k;->menu_label_block_user:I

    #calls: Lcom/instagram/android/fragment/UserDetailFragment;->showBlockDialog(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserDetailFragment;->access$1000(Lcom/instagram/android/fragment/UserDetailFragment;I)V

    goto :goto_0

    .line 277
    :cond_2
    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/k;->menu_label_unblock_user:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$2;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    sget v1, Lcom/facebook/k;->menu_label_unblock_user:I

    #calls: Lcom/instagram/android/fragment/UserDetailFragment;->showBlockDialog(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserDetailFragment;->access$1000(Lcom/instagram/android/fragment/UserDetailFragment;I)V

    goto :goto_0
.end method
