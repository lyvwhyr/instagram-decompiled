.class Lcom/instagram/android/fragment/EditProfileFragment$9;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    const/4 v1, 0x1

    .line 436
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$302(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z

    .line 437
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->crop_text_save:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 439
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$302(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z

    .line 427
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 419
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$302(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z

    .line 420
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->saving_your_updates:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 422
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$9;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->changes_saved:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 432
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 414
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment$9;->onSuccess(Lcom/instagram/android/model/User;)V

    return-void
.end method
