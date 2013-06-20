.class Lcom/instagram/android/creation/fragment/FilterFragment$1;
.super Landroid/os/Handler;
.source "FilterFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xca0

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->dismiss()V

    .line 108
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    return-void

    .line 95
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xca1

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$102(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    new-instance v1, Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$102(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;

    .line 104
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    sget v2, Lcom/facebook/k;->loading:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setCancelable(Z)V

    .line 106
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$1;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    goto :goto_0
.end method
