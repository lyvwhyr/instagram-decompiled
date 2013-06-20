.class Lcom/instagram/android/login/fragment/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LoginFragment$1;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment$1;->this$0:Lcom/instagram/android/login/fragment/LoginFragment;

    #calls: Lcom/instagram/android/login/fragment/LoginFragment;->doLogin()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LoginFragment;->access$000(Lcom/instagram/android/login/fragment/LoginFragment;)V

    .line 77
    return-void
.end method
