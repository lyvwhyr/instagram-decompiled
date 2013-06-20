.class Lcom/instagram/android/login/PasswordValidator$3;
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
    .line 129
    iput-object p1, p0, Lcom/instagram/android/login/PasswordValidator$3;->this$0:Lcom/instagram/android/login/PasswordValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$3;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$000(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator$3;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/instagram/android/login/PasswordValidator;->access$500(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/instagram/android/login/PasswordValidator$3;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordHasError:Z
    invoke-static {v2}, Lcom/instagram/android/login/PasswordValidator;->access$300(Lcom/instagram/android/login/PasswordValidator;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$3;->this$0:Lcom/instagram/android/login/PasswordValidator;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/login/PasswordValidator;->setPasswordConfirmHasError(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->access$600(Lcom/instagram/android/login/PasswordValidator;Z)V

    .line 137
    sget v0, Lcom/facebook/k;->passwords_do_not_match:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 140
    :cond_0
    return-void
.end method
