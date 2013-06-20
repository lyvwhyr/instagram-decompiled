.class Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

.field final synthetic val$userCanDeleteComments:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$3;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iput-boolean p2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->val$userCanDeleteComments:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 123
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$context:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->val$userCanDeleteComments:Z

    #calls: Lcom/instagram/android/adapter/row/CommentRowAdapter;->getMenuOptions(Landroid/content/Context;Z)[Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->access$100(Landroid/content/Context;Z)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    .line 124
    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$context:Landroid/app/Activity;

    sget v2, Lcom/facebook/k;->delete_and_report_abuse:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$comment:Lcom/instagram/android/model/Comment;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;Z)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$context:Landroid/app/Activity;

    sget v2, Lcom/facebook/k;->delete:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$comment:Lcom/instagram/android/model/Comment;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$3$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$3;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$3;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;)V

    goto :goto_0
.end method
