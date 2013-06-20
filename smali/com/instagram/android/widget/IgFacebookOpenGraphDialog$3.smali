.class final Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;
.super Ljava/lang/Object;
.source "IgFacebookOpenGraphDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;

.field final synthetic val$loaderManager:Landroid/support/v4/app/af;

.field final synthetic val$postDialogAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$loaderManager:Landroid/support/v4/app/af;

    iput-object p3, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$dialog:Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;

    iput-object p4, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$postDialogAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 83
    new-instance v0, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;

    iget-object v1, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$loaderManager:Landroid/support/v4/app/af;

    invoke-static {}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->access$000()Lcom/instagram/api/AbstractApiCallbacks;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/loaderrequest/OpenGraphActionRequest;->perform(IZ)V

    .line 85
    iget-object v0, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$dialog:Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$postDialogAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$3;->val$postDialogAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_0
    return-void
.end method
