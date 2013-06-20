.class Lcom/instagram/android/login/fragment/LoginFragment$3;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LoginFragment$3;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 101
    if-eqz p2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$3;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 104
    :cond_0
    return-void
.end method
