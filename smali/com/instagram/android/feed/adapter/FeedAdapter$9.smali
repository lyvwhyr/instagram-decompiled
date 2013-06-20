.class Lcom/instagram/android/feed/adapter/FeedAdapter$9;
.super Lcom/instagram/android/widget/SimpleAnimationListener;
.source "FeedAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$9;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$9;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/widget/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$9;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2300(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$9;->val$parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$9;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2300(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1659
    return-void
.end method
