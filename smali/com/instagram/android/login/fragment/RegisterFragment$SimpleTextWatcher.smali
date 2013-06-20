.class Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 830
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 822
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 826
    return-void
.end method
