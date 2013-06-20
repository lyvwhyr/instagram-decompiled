.class final Lcom/instagram/android/adapter/row/CommentRowAdapter$4;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$comment:Lcom/instagram/android/model/Comment;

.field final synthetic val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Comment;Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$4;->val$comment:Lcom/instagram/android/model/Comment;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$4;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$4;->val$comment:Lcom/instagram/android/model/Comment;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$4;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;)V

    .line 144
    return-void
.end method
