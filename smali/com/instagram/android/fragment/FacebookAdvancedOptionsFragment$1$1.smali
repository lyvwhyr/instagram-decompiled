.class Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;->this$1:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;->this$1:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;

    iget-object v1, v1, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;->this$1:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;

    iget-object v1, v1, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    sget v2, Lcom/facebook/k;->x_problems:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;->this$1:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;

    iget-object v5, v5, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    sget v6, Lcom/facebook/k;->facebook:I

    invoke-virtual {v5, v6}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1$1;-><init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 69
    return-void
.end method
