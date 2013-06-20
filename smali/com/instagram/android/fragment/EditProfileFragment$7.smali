.class Lcom/instagram/android/fragment/EditProfileFragment$7;
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
    .line 229
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$700(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 233
    :goto_0
    new-instance v2, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->getTurningPrivacyOnConfirmationMessage()Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$900(Lcom/instagram/android/fragment/EditProfileFragment;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->yes_im_sure:I

    new-instance v3, Lcom/instagram/android/fragment/EditProfileFragment$7$2;

    invoke-direct {v3, p0, v0}, Lcom/instagram/android/fragment/EditProfileFragment$7$2;-><init>(Lcom/instagram/android/fragment/EditProfileFragment$7;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/EditProfileFragment$7$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/EditProfileFragment$7$1;-><init>(Lcom/instagram/android/fragment/EditProfileFragment$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 256
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->getTurningPrivacyOffConfirmationMessage()Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1000(Lcom/instagram/android/fragment/EditProfileFragment;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
