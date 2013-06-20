.class Lcom/instagram/android/fragment/ChangePasswordFragment$5;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "ChangePasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    const/4 v4, 0x1

    .line 169
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 171
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getRootNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 178
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/ApiResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 187
    :goto_1
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/BaseApiLoaderCallbacks;->handleRequestServerErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #getter for: Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$200(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #getter for: Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$200(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->crop_text_save:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #calls: Lcom/instagram/android/fragment/ChangePasswordFragment;->setTextFieldsEnabled(Z)V
    invoke-static {v0, v4}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$300(Lcom/instagram/android/fragment/ChangePasswordFragment;Z)V

    .line 194
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    sget v1, Lcom/facebook/k;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/ApiResponse;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRequestFinished()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 165
    return-void
.end method

.method public onRequestStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 157
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #getter for: Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$200(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #getter for: Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$200(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->saving:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #calls: Lcom/instagram/android/fragment/ChangePasswordFragment;->setTextFieldsEnabled(Z)V
    invoke-static {v0, v2}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$300(Lcom/instagram/android/fragment/ChangePasswordFragment;Z)V

    .line 160
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #getter for: Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$200(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/facebook/k;->password_changed:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 199
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #getter for: Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$400(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$5;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 201
    return-void
.end method
