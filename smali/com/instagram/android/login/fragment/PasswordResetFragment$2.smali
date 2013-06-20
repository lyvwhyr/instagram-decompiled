.class Lcom/instagram/android/login/fragment/PasswordResetFragment$2;
.super Ljava/lang/Object;
.source "PasswordResetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$2;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$2;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$2;->val$parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$2;->val$parentView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->fragment_password_reset_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$2;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    #getter for: Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z
    invoke-static {v0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->access$200(Lcom/instagram/android/login/fragment/PasswordResetFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    return-void

    .line 76
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
