.class public Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow;
.super Ljava/lang/Object;
.source "ReviewPhotoNameAndCountRow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;)V
    .locals 5
    .parameter "context"
    .parameter "holder"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 33
    iget v0, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->count:I

    if-le v0, v2, :cond_0

    .line 34
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->copy:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->you_geotagged_x_photos_near:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->name:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isAnyOfThesePhotosRemoved(Ljava/util/List;)Z

    move-result v0

    .line 42
    iget-object v1, p1, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->deselectButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 43
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->deselectButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;

    invoke-direct {v1, p2, p1}, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;-><init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->copy:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->you_geotagged_x_photo_near:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_1
    const/16 v0, 0xff

    goto :goto_1
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_review_name:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;-><init>()V

    .line 22
    sget v0, Lcom/facebook/g;->row_review_map_textview_expanded_copy:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->copy:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/facebook/g;->row_review_name_textview_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->name:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/facebook/g;->row_review_name_button_deselect_cluster:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->deselectButton:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    return-object v1
.end method
