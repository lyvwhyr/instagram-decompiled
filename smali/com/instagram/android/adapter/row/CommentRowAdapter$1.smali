.class final Lcom/instagram/android/adapter/row/CommentRowAdapter$1;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$comment:Lcom/instagram/android/model/Comment;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Comment;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$1;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 63
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getUserLinkClickListener()Lcom/instagram/android/listener/UserLinkClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$1;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-virtual {v1}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/android/listener/UserLinkClickListener;->onClick(Lcom/instagram/android/model/User;)V

    .line 64
    return-void
.end method
