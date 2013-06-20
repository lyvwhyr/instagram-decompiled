.class Lcom/instagram/android/fragment/CommentThreadFragment$11;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$11;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$11;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->scrollToBottom(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$700(Lcom/instagram/android/fragment/CommentThreadFragment;I)V

    .line 270
    return-void
.end method
