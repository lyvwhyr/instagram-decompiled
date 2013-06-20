.class Lcom/instagram/android/fragment/CommentThreadFragment$13;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

.field final synthetic val$comment:Lcom/instagram/android/model/Comment;

.field final synthetic val$optionalErrorMessageFromServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;Ljava/lang/String;Lcom/instagram/android/model/Comment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    iput-object p2, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13;->val$optionalErrorMessageFromServer:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13;->val$optionalErrorMessageFromServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->learn_more:I

    new-instance v2, Lcom/instagram/android/fragment/CommentThreadFragment$13$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$13$2;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment$13;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->delete:I

    new-instance v2, Lcom/instagram/android/fragment/CommentThreadFragment$13$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$13$1;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment$13;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 421
    :cond_0
    return-void
.end method
