.class Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;->this$1:Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    new-instance v1, Lcom/instagram/api/loaderrequest/FlagHelper;

    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;->this$1:Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v0, v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;->this$1:Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;->this$1:Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;

    iget-object v3, v3, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v3, v3, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/CommentThreadFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/instagram/api/loaderrequest/FlagHelper;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;)V

    .line 89
    if-nez p2, :cond_0

    sget-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->Spam:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1$1;->this$1:Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;->this$0:Lcom/instagram/android/adapter/row/CommentRowAdapter$2;

    iget-object v2, v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v1, v2, v0}, Lcom/instagram/api/loaderrequest/FlagHelper;->flagComment(Lcom/instagram/android/model/Comment;Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;)V

    .line 93
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->Abuse:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    goto :goto_0
.end method
