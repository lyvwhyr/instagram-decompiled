.class Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "FacebookAdvancedOptionsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$200(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 83
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 85
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 78
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
