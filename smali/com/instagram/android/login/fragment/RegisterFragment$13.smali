.class Lcom/instagram/android/login/fragment/RegisterFragment$13;
.super Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;
.source "RegisterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$13;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

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

    .line 417
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$13;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mEmailHasError:Z
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1900(Lcom/instagram/android/login/fragment/RegisterFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$13;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 419
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$13;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setEmailHasError(Z)V
    invoke-static {v0, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1700(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$13;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setEmailHasError(Z)V
    invoke-static {v0, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1700(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    goto :goto_0
.end method
