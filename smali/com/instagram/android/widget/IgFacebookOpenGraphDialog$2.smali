.class final Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;
.super Ljava/lang/Object;
.source "IgFacebookOpenGraphDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$dialog:Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;

.field final synthetic val$postDialogAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;->val$dialog:Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;

    iput-object p2, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;->val$postDialogAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;->val$dialog:Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->dismiss()V

    .line 74
    iget-object v0, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;->val$postDialogAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$2;->val$postDialogAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 77
    :cond_0
    return-void
.end method
