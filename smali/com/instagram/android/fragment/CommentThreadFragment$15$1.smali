.class Lcom/instagram/android/fragment/CommentThreadFragment$15$1;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/CommentThreadFragment$15;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment$15;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$15$1;->this$1:Lcom/instagram/android/fragment/CommentThreadFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$15$1;->this$1:Lcom/instagram/android/fragment/CommentThreadFragment$15;

    iget-object v0, v0, Lcom/instagram/android/fragment/CommentThreadFragment$15;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->toggleEditView()V
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$600(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    .line 468
    return-void
.end method
