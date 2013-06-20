.class Lcom/instagram/android/feed/adapter/FeedAdapter$8;
.super Lcom/instagram/android/widget/SimpleAnimationListener;
.source "FeedAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field final synthetic val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-direct {p0}, Lcom/instagram/android/widget/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    sget v1, Lcom/facebook/g;->key_list_position:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1639
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/Media;

    .line 1641
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v2

    sget v3, Lcom/facebook/g;->key_media_id:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/mediacache/IgProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1642
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->hideLegacyVideoView()V
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$3000(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 1650
    :goto_0
    return-void

    .line 1649
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->prepareVideo(Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V
    invoke-static {v2, v1, v3, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1900(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$8;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2300(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    return-void
.end method
