.class Lcom/instagram/android/login/PasswordValidator$4;
.super Lcom/instagram/android/login/PasswordValidator$SimpleTextWatcher;
.source "PasswordValidator.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/PasswordValidator;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/PasswordValidator;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/instagram/android/login/PasswordValidator$4;->this$0:Lcom/instagram/android/login/PasswordValidator;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/PasswordValidator$SimpleTextWatcher;-><init>(Lcom/instagram/android/login/PasswordValidator$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editable"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$4;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$000(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator$4;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/instagram/android/login/PasswordValidator;->access$500(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/instagram/android/login/PasswordValidator$4;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmHasError:Z
    invoke-static {v2}, Lcom/instagram/android/login/PasswordValidator;->access$700(Lcom/instagram/android/login/PasswordValidator;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$4;->this$0:Lcom/instagram/android/login/PasswordValidator;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/login/PasswordValidator;->setPasswordConfirmHasError(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->access$600(Lcom/instagram/android/login/PasswordValidator;Z)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$4;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mTextChangedListener:Lcom/instagram/android/login/PasswordValidator$TextChangedListener;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$400(Lcom/instagram/android/login/PasswordValidator;)Lcom/instagram/android/login/PasswordValidator$TextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$4;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mTextChangedListener:Lcom/instagram/android/login/PasswordValidator$TextChangedListener;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$400(Lcom/instagram/android/login/PasswordValidator;)Lcom/instagram/android/login/PasswordValidator$TextChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/login/PasswordValidator$TextChangedListener;->onTextChanged()V

    .line 156
    :cond_1
    return-void
.end method
