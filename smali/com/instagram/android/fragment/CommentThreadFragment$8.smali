.class Lcom/instagram/android/fragment/CommentThreadFragment$8;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

.field final synthetic val$editText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;Lcom/instagram/android/widget/CommentAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$8;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    iput-object p2, p0, Lcom/instagram/android/fragment/CommentThreadFragment$8;->val$editText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$8;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$8;->val$editText:Lcom/instagram/android/widget/CommentAutoCompleteTextView;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->sendCommentFromTextView(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$400(Lcom/instagram/android/fragment/CommentThreadFragment;Landroid/widget/TextView;)V

    .line 246
    return-void
.end method
