.class final Lcom/instagram/android/adapter/row/CommentRowAdapter$3;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$canDeleteComment:Z

.field final synthetic val$comment:Lcom/instagram/android/model/Comment;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

.field final synthetic val$holder:Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Comment;Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;Lcom/instagram/android/fragment/CommentThreadFragment;ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$comment:Lcom/instagram/android/model/Comment;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$holder:Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    iput-object p3, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    iput-boolean p4, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$canDeleteComment:Z

    iput-object p5, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-static {v2}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->isCommentOwner(Lcom/instagram/android/model/Comment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$holder:Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteConfirmedButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 110
    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$holder:Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteConfirmedButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$holder:Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 135
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$holder:Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteConfirmedButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$holder:Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/CommentThreadFragment;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$canDeleteComment:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 118
    :cond_2
    new-instance v2, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v3, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$context:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$context:Landroid/app/Activity;

    #calls: Lcom/instagram/android/adapter/row/CommentRowAdapter;->getMenuOptions(Landroid/content/Context;Z)[Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->access$100(Landroid/content/Context;Z)[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;

    invoke-direct {v4, p0, v0}, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;-><init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$3;Z)V

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
