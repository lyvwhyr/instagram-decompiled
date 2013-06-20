.class Lcom/instagram/android/login/PasswordValidator$1;
.super Ljava/lang/Object;
.source "PasswordValidator.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/PasswordValidator;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/PasswordValidator;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/instagram/android/login/PasswordValidator$1;->this$0:Lcom/instagram/android/login/PasswordValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$1;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$000(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator$1;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/instagram/android/login/PasswordValidator;->access$000(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$1;->this$0:Lcom/instagram/android/login/PasswordValidator;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/login/PasswordValidator;->setPasswordHasError(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->access$100(Lcom/instagram/android/login/PasswordValidator;Z)V

    .line 105
    sget v0, Lcom/facebook/k;->password_must_be_six_characters:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$1;->this$0:Lcom/instagram/android/login/PasswordValidator;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/login/PasswordValidator;->setPasswordHasError(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->access$100(Lcom/instagram/android/login/PasswordValidator;Z)V

    goto :goto_0
.end method
