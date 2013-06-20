.class Lcom/instagram/android/login/fragment/RegisterFragment$11;
.super Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;
.source "RegisterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$11;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editable"

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$11;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mPasswordHasError:Z
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1600(Lcom/instagram/android/login/fragment/RegisterFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$11;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 386
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$11;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setPasswordHasError(Z)V
    invoke-static {v0, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1500(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$11;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setPasswordHasError(Z)V
    invoke-static {v0, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1500(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    goto :goto_0
.end method
