.class public Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;
.super Ljava/lang/Object;
.source "MediaSetRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static bindEditModeView(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;Ljava/util/List;Landroid/widget/BaseAdapter;Z)V
    .locals 10
    .parameter "holder"
    .parameter
    .parameter "adapter"
    .parameter "addLastRowPadding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;",
            "Ljava/util/List",
            "<+",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;",
            "Landroid/widget/BaseAdapter;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, geoMedia:Ljava/util/List;,"Ljava/util/List<+Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    aget-object v5, v0, v1

    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageBorderViews:[Landroid/view/ViewGroup;

    aget-object v6, v0, v1

    .line 39
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->checkMarks:[Landroid/widget/ImageView;

    aget-object v7, v0, v1

    .line 41
    if-ge v1, v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 43
    :goto_1
    if-nez v0, :cond_1

    .line 44
    invoke-virtual {v5, v8}, Lcom/instagram/android/mediacache/IgImageView;->setVisibility(I)V

    .line 45
    invoke-virtual {v5, v3}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 47
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 41
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v5, v2}, Lcom/instagram/android/mediacache/IgImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-virtual {v6, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->willBePublished(Lcom/instagram/android/model/GeoMedia;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    const/16 v0, 0xff

    invoke-virtual {v5, v0}, Lcom/instagram/android/mediacache/IgImageView;->setAlpha(I)V

    .line 55
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_3
    new-instance v0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;

    invoke-direct {v0, p1, v1, p2}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$1;-><init>(Ljava/util/List;ILandroid/widget/BaseAdapter;)V

    invoke-virtual {v5, v0}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 57
    :cond_2
    const/16 v0, 0x55

    invoke-virtual {v5, v0}, Lcom/instagram/android/mediacache/IgImageView;->setAlpha(I)V

    .line 58
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 74
    if-eqz p3, :cond_4

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->review_bottom_row_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    :goto_4
    return-void

    .line 77
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4
.end method

.method public static bindEditModeViewWithoutCheckMark(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "holder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/instagram/android/model/MinimialMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/instagram/android/model/MinimialMedia;>;"
    const/4 v1, 0x0

    .line 85
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    aget-object v2, v2, v0

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/instagram/android/mediacache/IgImageView;->setAlpha(I)V

    .line 87
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->checkMarks:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0, p1, v1, v1}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;Ljava/util/ArrayList;ZZ)V

    .line 90
    return-void
.end method

.method public static bindView(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;Ljava/util/ArrayList;ZZ)V
    .locals 9
    .parameter "holder"
    .parameter
    .parameter "isFirstRow"
    .parameter "isLastRow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/instagram/android/model/MinimialMedia;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/instagram/android/model/MinimialMedia;>;"
    const/4 v3, 0x0

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->image_button_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 101
    iget-object v4, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->view:Landroid/view/View;

    if-eqz p3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/instagram/util/ViewUtil;->setBottomPadding(Landroid/view/View;I)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->view:Landroid/view/View;

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->setTopPadding(Landroid/view/View;I)V

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 105
    :goto_2
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 106
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    aget-object v5, v0, v1

    .line 107
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageBorderViews:[Landroid/view/ViewGroup;

    aget-object v6, v0, v1

    .line 109
    if-ge v1, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/MinimialMedia;

    .line 111
    :goto_3
    if-nez v0, :cond_4

    .line 112
    invoke-virtual {v5, v8}, Lcom/instagram/android/mediacache/IgImageView;->setVisibility(I)V

    .line 113
    invoke-virtual {v5, v3}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    if-eqz v6, :cond_0

    .line 115
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    :cond_0
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v0, v2

    .line 101
    goto :goto_0

    :cond_2
    move v1, v2

    .line 102
    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 109
    goto :goto_3

    .line 118
    :cond_4
    invoke-virtual {v5, v2}, Lcom/instagram/android/mediacache/IgImageView;->setVisibility(I)V

    .line 119
    invoke-interface {v0}, Lcom/instagram/android/model/MinimialMedia;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 120
    if-eqz v6, :cond_5

    .line 121
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    :cond_5
    new-instance v6, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$2;

    invoke-direct {v6, v0}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$2;-><init>(Lcom/instagram/android/model/MinimialMedia;)V

    invoke-virtual {v5, v6}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v5, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->videoOverlayViews:[Landroid/view/View;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/instagram/android/model/MinimialMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v5, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v5, :cond_6

    .line 135
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->videoOverlayViews:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->videoOverlayViews:[Landroid/view/View;

    aget-object v0, v0, v1

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 142
    :cond_7
    return-void
.end method

.method public static newEditView(Landroid/content/Context;I)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "numMediaPerRow"

    .prologue
    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 165
    sget v0, Lcom/facebook/h;->row_gridview_edit:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 167
    new-instance v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;

    invoke-direct {v4, p1}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;-><init>(I)V

    .line 168
    iput-object v0, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->view:Landroid/view/View;

    .line 169
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v1, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->size:I

    if-ge v2, v1, :cond_0

    .line 170
    sget v1, Lcom/facebook/h;->grid_item_with_map_edit:I

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 171
    iget-object v5, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageBorderViews:[Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v5, v2

    .line 172
    iget-object v5, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    iget-object v1, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageBorderViews:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    sget v6, Lcom/facebook/g;->grid_item_with_frame_iv:I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/mediacache/IgImageView;

    aput-object v1, v5, v2

    .line 173
    iget-object v5, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->checkMarks:[Landroid/widget/ImageView;

    iget-object v1, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->imageBorderViews:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    sget v6, Lcom/facebook/g;->row_gridview_imageview_checkmark_1:I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v5, v2

    .line 169
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 177
    return-object v0
.end method

.method public static newView(Landroid/content/Context;I)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "count"

    .prologue
    .line 145
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 146
    sget v0, Lcom/facebook/h;->row_gridview_container:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 149
    new-instance v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;

    invoke-direct {v4, p1}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;-><init>(I)V

    .line 150
    iput-object v0, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->view:Landroid/view/View;

    .line 151
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v1, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->size:I

    if-ge v2, v1, :cond_0

    .line 152
    sget v1, Lcom/facebook/h;->grid_item_with_frame:I

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    iget-object v5, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageBorderViews:[Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v5, v2

    .line 154
    iget-object v1, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageBorderViews:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    check-cast v1, Lcom/instagram/android/widget/IgImageButton;

    .line 155
    iget-object v5, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {v1}, Lcom/instagram/android/widget/IgImageButton;->getImageView()Lcom/instagram/android/widget/ConstrainedImageView;

    move-result-object v6

    aput-object v6, v5, v2

    .line 156
    iget-object v5, v4, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->videoOverlayViews:[Landroid/view/View;

    invoke-virtual {v1}, Lcom/instagram/android/widget/IgImageButton;->getVideoOverlayView()Landroid/view/View;

    move-result-object v1

    aput-object v1, v5, v2

    .line 151
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 160
    return-object v0
.end method
