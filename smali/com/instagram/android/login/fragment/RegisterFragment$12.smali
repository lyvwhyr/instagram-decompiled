.class Lcom/instagram/android/login/fragment/RegisterFragment$12;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$12;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 398
    if-nez p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$12;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$12;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setEmailHasError(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1700(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 402
    sget v0, Lcom/facebook/k;->please_enter_a_valid_email_address:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-static {v0}, Lcom/instagram/android/login/EmailSpellChecker;->suggestEmail(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$12;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->showEmailSuggestionDialog(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1800(Lcom/instagram/android/login/fragment/RegisterFragment;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
