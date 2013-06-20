.class final Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;Lcom/instagram/android/fragment/EditProfileFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->privacy_fail:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 705
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 687
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$700(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 688
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$700(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 689
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 679
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 680
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$700(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 681
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$700(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 682
    return-void
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isNowPrivate"

    .prologue
    .line 693
    const-string v0, "EditProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is now private? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$700(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 695
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/model/User;->setPrivacyStatus(Lcom/instagram/android/model/User$PrivacyStatus;)V

    .line 700
    return-void

    .line 695
    :cond_0
    sget-object v0, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPublic:Lcom/instagram/android/model/User$PrivacyStatus;

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 675
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
