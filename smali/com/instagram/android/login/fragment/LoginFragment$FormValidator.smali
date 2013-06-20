.class Lcom/instagram/android/login/fragment/LoginFragment$FormValidator;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LoginFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LoginFragment$FormValidator;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/LoginFragment;Lcom/instagram/android/login/fragment/LoginFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/LoginFragment$FormValidator;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$FormValidator;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    #calls: Lcom/instagram/android/login/fragment/LoginFragment;->validate()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->access$300(Lcom/instagram/android/login/fragment/LoginFragment;)V

    .line 259
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 249
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 254
    return-void
.end method
