.class Lcom/instagram/android/login/fragment/RegisterFragment$9;
.super Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;
.source "RegisterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$9;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/RegisterFragment$SimpleTextWatcher;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "editable"

    .prologue
    const/4 v3, 0x1

    .line 361
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$9;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mInitialCheckusernameRequestRan:Z
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1300(Lcom/instagram/android/login/fragment/RegisterFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$9;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1200(Lcom/instagram/android/login/fragment/RegisterFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$9;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #getter for: Lcom/instagram/android/login/fragment/RegisterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1200(Lcom/instagram/android/login/fragment/RegisterFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 365
    :cond_0
    return-void
.end method
