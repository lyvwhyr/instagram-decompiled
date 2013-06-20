.class Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$2;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$reportOptions:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    .line 80
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$resources:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/k;->flag_comment_second_step_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$reportOptions:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;-><init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 97
    return-void
.end method
