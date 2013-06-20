.class Lcom/instagram/android/fragment/EditProfileFragment$10;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Lcom/instagram/android/model/CheckUsernameResponse;",
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
    .line 448
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1800(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1800(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgSmallLoadingSpinner;->setVisibility(I)V

    .line 484
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFinished()V

    .line 485
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1800(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1800(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgSmallLoadingSpinner;->setVisibility(I)V

    .line 476
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestStart()V

    .line 477
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/CheckUsernameResponse;)V
    .locals 5
    .parameter "responseObject"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameResponse:Lcom/instagram/android/model/CheckUsernameResponse;
    invoke-static {v0, p1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1502(Lcom/instagram/android/fragment/EditProfileFragment;Lcom/instagram/android/model/CheckUsernameResponse;)Lcom/instagram/android/model/CheckUsernameResponse;

    .line 454
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$200(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$200(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$200(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/CheckUsernameResponse;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/model/CheckUsernameResponse;->isIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasAvailable()V
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1600(Lcom/instagram/android/fragment/EditProfileFragment;)V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasError()V
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1700(Lcom/instagram/android/fragment/EditProfileFragment;)V

    .line 464
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$10;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    sget v1, Lcom/facebook/k;->username_x_is_not_available:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/instagram/android/model/CheckUsernameResponse;->getUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/EditProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 448
    check-cast p1, Lcom/instagram/android/model/CheckUsernameResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment$10;->onSuccess(Lcom/instagram/android/model/CheckUsernameResponse;)V

    return-void
.end method
