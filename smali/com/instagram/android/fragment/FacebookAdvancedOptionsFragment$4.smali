.class Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "FacebookAdvancedOptionsFragment.java"


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
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mTimelineRow:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$500(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 155
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 166
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 167
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 161
    return-void
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mTimelineRow:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$500(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->mCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 149
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$4;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
