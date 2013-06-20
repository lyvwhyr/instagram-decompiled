.class Lcom/instagram/android/fragment/ChangePasswordFragment$3;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$3;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$3;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #calls: Lcom/instagram/android/fragment/ChangePasswordFragment;->maybeEnableSaveButton()V
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$100(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    .line 78
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 70
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 73
    return-void
.end method
