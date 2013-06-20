.class Lcom/instagram/android/fragment/CommentThreadFragment$13$1;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/CommentThreadFragment$13;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment$13;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13$1;->this$1:Lcom/instagram/android/fragment/CommentThreadFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$13$1;->this$1:Lcom/instagram/android/fragment/CommentThreadFragment$13;

    iget-object v0, v0, Lcom/instagram/android/fragment/CommentThreadFragment$13;->val$comment:Lcom/instagram/android/model/Comment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/Comment;->remove(Landroid/support/v4/app/af;)V

    .line 417
    return-void
.end method
