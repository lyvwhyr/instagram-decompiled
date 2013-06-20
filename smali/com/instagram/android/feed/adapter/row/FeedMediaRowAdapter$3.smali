.class Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

.field final synthetic val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

.field final synthetic val$media:Lcom/instagram/android/model/Media;

.field final synthetic val$optionsButton:Landroid/view/View;

.field final synthetic val$shouldDisplayTags:Z

.field final synthetic val$videoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;Lcom/instagram/android/model/Media;ZLcom/instagram/android/video/ui/MediaActionsView$VideoIconState;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iput-object p3, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$media:Lcom/instagram/android/model/Media;

    iput-boolean p4, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$shouldDisplayTags:Z

    iput-object p5, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$videoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    iput-object p6, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$optionsButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x1

    .line 271
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    sget v1, Lcom/facebook/g;->key_media_id:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    if-eqz p1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFeedAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$500(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v2}, Lcom/instagram/android/model/Media;->hasInTags()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-boolean v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$shouldDisplayTags:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getCurrentScrollState()I

    move-result v2

    if-nez v2, :cond_0

    .line 283
    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->startHideTagsTimerForMedia(Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$holder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->mediaActionsView:Lcom/instagram/android/video/ui/MediaActionsView;

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$videoIconState:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 290
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getFeedFragment()Lcom/instagram/android/fragment/AbstractFeedFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->tryAutoplayDelayed()V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$optionsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$optionsButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;->val$optionsButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 301
    :cond_2
    return-void
.end method
