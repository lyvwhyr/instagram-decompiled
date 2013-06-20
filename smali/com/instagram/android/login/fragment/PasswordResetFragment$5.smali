.class Lcom/instagram/android/login/fragment/PasswordResetFragment$5;
.super Ljava/lang/Object;
.source "PasswordResetFragment.java"

# interfaces
.implements Lcom/instagram/android/login/PasswordValidator$TextChangedListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$5;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$5;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_password_reset_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$5;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    #getter for: Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;
    invoke-static {v1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$500(Lcom/instagram/android/login/fragment/PasswordResetFragment;)Lcom/instagram/android/login/PasswordValidator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/login/PasswordValidator;->shouldEnableSaveButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    return-void
.end method
