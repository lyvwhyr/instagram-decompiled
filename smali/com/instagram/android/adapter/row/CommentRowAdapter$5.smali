.class final Lcom/instagram/android/adapter/row/CommentRowAdapter$5;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$comment:Lcom/instagram/android/model/Comment;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Comment;Lcom/instagram/android/fragment/CommentThreadFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    iput-object p3, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->wasMarkedAsSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v2}, Lcom/instagram/android/model/Comment;->getMarkedAsSpamErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/instagram/android/fragment/CommentThreadFragment;->onPostCommentFailed(Lcom/instagram/android/model/Comment;ZLjava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;-><init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$5;)V

    .line 187
    sget v2, Lcom/facebook/k;->failed:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v2, Lcom/facebook/k;->try_again:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v2, Lcom/facebook/k;->delete:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
