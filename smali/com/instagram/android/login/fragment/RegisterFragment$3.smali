.class Lcom/instagram/android/login/fragment/RegisterFragment$3;
.super Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;
.source "RegisterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$3;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 194
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$3;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->label_phone_optional:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$3;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->getPhone()Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$500(Lcom/instagram/android/login/fragment/RegisterFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    return-void

    .line 194
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
