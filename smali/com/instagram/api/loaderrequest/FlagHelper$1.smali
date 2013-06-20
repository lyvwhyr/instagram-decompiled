.class Lcom/instagram/api/loaderrequest/FlagHelper$1;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "FlagHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/FlagHelper;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FlagHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$500(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "progressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 93
    :cond_0
    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/instagram/android/fragment/ProgressDialogFragment;->newInstance()Lcom/instagram/android/fragment/ProgressDialogFragment;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v1}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$500(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "progressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/ProgressDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$200(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/FlagHelper$1$2;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1$2;-><init>(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$200(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/FlagHelper$1$4;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1$4;-><init>(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 81
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$200(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/FlagHelper$1$3;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1$3;-><init>(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 70
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/FlagHelper$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1;->this$0:Lcom/instagram/api/loaderrequest/FlagHelper;

    #getter for: Lcom/instagram/api/loaderrequest/FlagHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/FlagHelper;->access$200(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/FlagHelper$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1$1;-><init>(Lcom/instagram/api/loaderrequest/FlagHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method
