.class final Lcom/instagram/android/adapter/row/CommentRowAdapter$2;
.super Ljava/lang/Object;
.source "CommentRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$comment:Lcom/instagram/android/model/Comment;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

.field final synthetic val$reportOptions:[Ljava/lang/CharSequence;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/res/Resources;[Ljava/lang/CharSequence;Lcom/instagram/android/fragment/CommentThreadFragment;Lcom/instagram/android/model/Comment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$reportOptions:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$fragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    iput-object p5, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$comment:Lcom/instagram/android/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 73
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$resources:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/k;->flag_comment_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/row/CommentRowAdapter$2;->val$resources:Landroid/content/res/Resources;

    #calls: Lcom/instagram/android/adapter/row/CommentRowAdapter;->getFlagMenuOptions(Landroid/content/res/Resources;)[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->access$000(Landroid/content/res/Resources;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/adapter/row/CommentRowAdapter$2$1;-><init>(Lcom/instagram/android/adapter/row/CommentRowAdapter$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 101
    return-void
.end method
