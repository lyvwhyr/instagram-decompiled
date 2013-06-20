.class Lcom/instagram/android/fragment/EditProfileFragment$2;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "editable"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mHandler:Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$000(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;->removeMessages(I)V

    .line 117
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mHandler:Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$000(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$200(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z
    invoke-static {v0, v4}, Lcom/instagram/android/fragment/EditProfileFragment;->access$302(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z

    .line 121
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z
    invoke-static {v0, v3}, Lcom/instagram/android/fragment/EditProfileFragment;->access$302(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z

    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$2;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 112
    return-void
.end method
