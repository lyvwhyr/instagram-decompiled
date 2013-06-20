.class Lcom/instagram/android/fragment/EditProfileFragment$6;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$6;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$6;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/ChangePasswordFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 223
    return-void
.end method
