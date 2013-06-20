.class Lcom/instagram/android/login/fragment/RegisterFragment$15;
.super Landroid/os/Handler;
.source "RegisterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$15;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 641
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 642
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$15;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$15;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->performUsernameCheck()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1400(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    goto :goto_0
.end method
