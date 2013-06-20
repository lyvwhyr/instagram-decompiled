.class Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$1;
.super Ljava/lang/Object;
.source "FacebookRecoveryCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$1;->this$0:Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$1;->this$0:Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;

    #getter for: Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->access$000(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->unable_to_use_facebook_account_please_use_password_reset_email_instead:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 46
    return-void
.end method
