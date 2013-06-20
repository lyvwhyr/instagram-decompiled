.class Lcom/instagram/android/fragment/AbstractFeedFragment$6;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 228
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 229
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment$6;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_0
    return-void
.end method
