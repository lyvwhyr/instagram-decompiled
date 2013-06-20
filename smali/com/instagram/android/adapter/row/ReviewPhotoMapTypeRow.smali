.class public Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow;
.super Ljava/lang/Object;
.source "ReviewPhotoMapTypeRow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;)V
    .locals 9
    .parameter "context"
    .parameter "holder"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 38
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->count:Landroid/widget/TextView;

    iget v1, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget v0, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->count:I

    if-le v0, v2, :cond_0

    .line 40
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->copy:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->you_geotagged_x_photos_near_here:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_0
    iget-object v6, p1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    const/4 v0, 0x0

    const-string v1, "12"

    iget-object v2, p1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {v2}, Lcom/instagram/android/mediacache/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/util/ViewUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/e;->map_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->point:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v4}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->point:Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-virtual {v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/widget/MapImageViewHelper;->constructStaticMapUrl(Lcom/instagram/android/location/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isAnyOfThesePhotosRemoved(Ljava/util/List;)Z

    move-result v0

    .line 51
    iget-object v1, p1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->deselectButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 52
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->deselectButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$1;

    invoke-direct {v1, p2, p1}, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$1;-><init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->copy:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->you_geotagged_x_photo_near_here:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_1
    const/16 v0, 0xff

    goto :goto_1
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_review_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;-><init>()V

    .line 25
    sget v0, Lcom/facebook/g;->row_review_map_textview_expanded_copy:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->copy:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/facebook/g;->row_review_map_textview_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->count:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/facebook/g;->row_review_map_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->imageView:Lcom/instagram/android/mediacache/IgImageView;

    .line 28
    sget v0, Lcom/facebook/g;->row_review_map_button_deselect_cluster:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;->deselectButton:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    return-object v1
.end method
