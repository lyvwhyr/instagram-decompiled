.class Lcom/instagram/android/fragment/CommentThreadFragment$14;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$14;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 428
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$14;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$14;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$14;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    sget v2, Lcom/facebook/k;->x_problems:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/android/fragment/CommentThreadFragment$14;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    sget v6, Lcom/facebook/k;->instagram:I

    invoke-virtual {v5, v6}, Lcom/instagram/android/fragment/CommentThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/fragment/CommentThreadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/android/fragment/CommentThreadFragment$14$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$14$1;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment$14;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 439
    :cond_0
    return-void
.end method
