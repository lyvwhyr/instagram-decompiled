.class Lcom/instagram/android/login/PasswordValidator$2;
.super Lcom/instagram/android/login/PasswordValidator$SimpleTextWatcher;
.source "PasswordValidator.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/PasswordValidator;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/PasswordValidator;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/android/login/PasswordValidator$2;->this$0:Lcom/instagram/android/login/PasswordValidator;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/login/PasswordValidator$SimpleTextWatcher;-><init>(Lcom/instagram/android/login/PasswordValidator$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$2;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordHasError:Z
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$300(Lcom/instagram/android/login/PasswordValidator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$2;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$000(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$2;->this$0:Lcom/instagram/android/login/PasswordValidator;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/login/PasswordValidator;->setPasswordHasError(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->access$100(Lcom/instagram/android/login/PasswordValidator;Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$2;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mTextChangedListener:Lcom/instagram/android/login/PasswordValidator$TextChangedListener;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$400(Lcom/instagram/android/login/PasswordValidator;)Lcom/instagram/android/login/PasswordValidator$TextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator$2;->this$0:Lcom/instagram/android/login/PasswordValidator;

    #getter for: Lcom/instagram/android/login/PasswordValidator;->mTextChangedListener:Lcom/instagram/android/login/PasswordValidator$TextChangedListener;
    invoke-static {v0}, Lcom/instagram/android/login/PasswordValidator;->access$400(Lcom/instagram/android/login/PasswordValidator;)Lcom/instagram/android/login/PasswordValidator$TextChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/login/PasswordValidator$TextChangedListener;->onTextChanged()V

    .line 125
    :cond_1
    return-void
.end method
