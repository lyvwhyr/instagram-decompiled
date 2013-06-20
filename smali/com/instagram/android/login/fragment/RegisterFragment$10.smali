.class Lcom/instagram/android/login/fragment/RegisterFragment$10;
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
    .line 368
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$10;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 371
    if-nez p2, :cond_0

    .line 372
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$10;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$10;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setPasswordHasError(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1500(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 375
    sget v0, Lcom/facebook/k;->password_must_be_six_characters:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 378
    :cond_0
    return-void
.end method
