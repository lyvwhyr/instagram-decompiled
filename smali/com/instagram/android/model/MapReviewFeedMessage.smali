.class public Lcom/instagram/android/model/MapReviewFeedMessage;
.super Lcom/instagram/android/model/FeedMessage;
.source "MapReviewFeedMessage.java"


# instance fields
.field private mNum:I

.field private mSubtitle:Ljava/lang/String;

.field private mThumbnail:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/android/model/FeedMessage;-><init>()V

    .line 88
    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/instagram/android/model/MapReviewFeedMessage;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/instagram/android/model/MapReviewFeedMessage;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/instagram/android/model/MapReviewFeedMessage;

    invoke-direct {v1}, Lcom/instagram/android/model/MapReviewFeedMessage;-><init>()V

    .line 37
    const-string v0, "thumbnail"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/instagram/android/model/MapReviewFeedMessage;->mThumbnail:Ljava/lang/String;

    .line 38
    const-string v0, "num"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/instagram/android/model/MapReviewFeedMessage;->mNum:I

    .line 39
    const-string v0, "title"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/instagram/android/model/MapReviewFeedMessage;->mTitle:Ljava/lang/String;

    .line 40
    const-string v0, "subtitle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/instagram/android/model/MapReviewFeedMessage;->mSubtitle:Ljava/lang/String;

    .line 42
    return-object v1
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 74
    invoke-static {}, Lcom/instagram/android/maps/util/MapsUtils;->hasGoogleMaps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    check-cast p1, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;

    .line 76
    .end local p1
    iget-object v0, p1, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->thumb:Lcom/instagram/android/widget/ConstrainedImageView;

    iget-object v1, p0, Lcom/instagram/android/model/MapReviewFeedMessage;->mThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->setUrl(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/model/MapReviewFeedMessage;->mThumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p1, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->line1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/model/MapReviewFeedMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->line1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/model/MapReviewFeedMessage;->mThumbnail:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/util/ViewUtil;->makeVisibilityGoneIfBlank(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p1, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->line2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/model/MapReviewFeedMessage;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p1, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->line1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/model/MapReviewFeedMessage;->mSubtitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/util/ViewUtil;->makeVisibilityGoneIfBlank(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p1, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->count:Landroid/widget/TextView;

    iget v1, p0, Lcom/instagram/android/model/MapReviewFeedMessage;->mNum:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-void

    .line 84
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/model/FeedMessage;->bind(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createView(Landroid/content/Context;Lcom/instagram/android/feed/adapter/MainFeedAdapter;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "mainFeedAdapter"

    .prologue
    .line 48
    invoke-static {}, Lcom/instagram/android/maps/util/MapsUtils;->hasGoogleMaps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->layout_message_photomap:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    new-instance v0, Lcom/instagram/android/model/MapReviewFeedMessage$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/model/MapReviewFeedMessage$1;-><init>(Lcom/instagram/android/model/MapReviewFeedMessage;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v2, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;

    invoke-direct {v2, p0}, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;-><init>(Lcom/instagram/android/model/MapReviewFeedMessage;)V

    .line 60
    sget v0, Lcom/facebook/g;->message_photomap_thumb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ConstrainedImageView;

    iput-object v0, v2, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->thumb:Lcom/instagram/android/widget/ConstrainedImageView;

    .line 61
    sget v0, Lcom/facebook/g;->message_photomap_line_1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->line1:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/facebook/g;->message_photomap_line_2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->line2:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/facebook/g;->message_photomap_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/model/MapReviewFeedMessage$Holder;->count:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/instagram/android/model/FeedMessage;->createView(Landroid/content/Context;Lcom/instagram/android/feed/adapter/MainFeedAdapter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
