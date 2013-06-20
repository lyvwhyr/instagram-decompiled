.class public Lcom/instagram/android/fragment/LikedFeedFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "LikedFeedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/LikedFeedFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/LikedFeedFragment;->addListEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private addListEmptyView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LikedFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    sget v1, Lcom/facebook/k;->no_posts_yet:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LikedFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/l;->SignupFormText:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LikedFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LikedFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LikedFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/instagram/android/fragment/LikedFeedFragment$LikesActionBar;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/LikedFeedFragment$LikesActionBar;-><init>(Lcom/instagram/android/fragment/LikedFeedFragment;)V

    return-object v0
.end method

.method protected getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method protected makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)",
            "Lcom/instagram/api/loaderrequest/MediaFeedRequest;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/LikedFeedFragment$2;

    sget v1, Lcom/facebook/g;->request_id_liked_feed:I

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/LikedFeedFragment$2;-><init>(Lcom/instagram/android/fragment/LikedFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/LikedFeedFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/LikedFeedFragment$1;-><init>(Lcom/instagram/android/fragment/LikedFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/LikedFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 35
    return-void
.end method

.method public populateConversionTrackingData(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "liked"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
