.class Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$6;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setStickyScrollingEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$6$1;->this$1:Lcom/instagram/android/fragment/AbstractFeedFragment$6;

    iget-object v1, v1, Lcom/instagram/android/fragment/AbstractFeedFragment$6;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    .line 237
    :cond_0
    return-void
.end method
