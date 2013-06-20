.class Lcom/instagram/android/fragment/UserDetailFragment$4;
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
    .line 296
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment$4;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 300
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$4;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$4;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/UserDetailFragment$4;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/UserDetailFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/User;->toggleBlockStatus(Landroid/content/Context;Landroid/support/v4/app/af;)V

    .line 303
    :cond_0
    return-void
.end method
