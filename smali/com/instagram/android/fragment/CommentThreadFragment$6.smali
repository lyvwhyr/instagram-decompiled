.class Lcom/instagram/android/fragment/CommentThreadFragment$6;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$6;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$6;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$6;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$6;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$6;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #getter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;
    invoke-static {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$100(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/adapter/CommentThreadAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/adapter/CommentThreadAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->setSelection(I)V

    .line 213
    :cond_0
    return-void
.end method
