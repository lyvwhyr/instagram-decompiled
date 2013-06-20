.class Lcom/instagram/android/login/fragment/PasswordResetFragment$3;
.super Ljava/lang/Object;
.source "PasswordResetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$3;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$3;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    #calls: Lcom/instagram/android/login/fragment/PasswordResetFragment;->doReset()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$400(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V

    .line 104
    return-void
.end method
