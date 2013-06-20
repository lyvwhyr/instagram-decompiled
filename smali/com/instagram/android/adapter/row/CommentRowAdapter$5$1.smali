.class Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$5;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 174
    packed-switch p2, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0}, Lcom/instagram/android/model/Comment;->getMedia()Lcom/instagram/android/model/Media;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$context:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/Media;->commentPostRequestStart(Lcom/instagram/android/model/Comment;Landroid/content/Context;)V

    .line 177
    new-instance v0, Lcom/instagram/api/loaderrequest/PostCommentRequest;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/api/loaderrequest/PostCommentRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;)V

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/PostCommentRequest;->perform(Lcom/instagram/android/model/Comment;)V

    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$comment:Lcom/instagram/android/model/Comment;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$5$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$5;

    iget-object v1, v1, Lcom/instagram/android/adapter/row/CommentRowAdapter$5;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;)V

    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
