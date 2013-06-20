.class public Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;
.super Lcom/instagram/android/adapter/EnhancedArrayAdapter;
.source "ReviewPhotoMapAdapter.java"


# static fields
.field private static final NUM_MEDIA_PER_ROW:I = 0x4

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_MAP:I = 0x2

.field private static final TYPE_NAME_AND_COUNT:I = 0x1

.field private static final TYPE_PHOTO_ROW:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private isLastRow(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 3
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 52
    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;

    invoke-static {p2, v0}, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow;->bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;)V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;

    invoke-static {p2, v0, v1}, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow;->bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;)V

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;

    invoke-static {p2, v0, v1}, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow;->bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow$Holder;Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;)V

    goto :goto_0

    .line 63
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->isLastRow(I)Z

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->bindEditModeView(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;Ljava/util/List;Landroid/widget/BaseAdapter;Z)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$HeaderRow;

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;

    if-eqz v0, :cond_2

    .line 129
    const/4 v0, 0x2

    goto :goto_0

    .line 131
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMediaListRow(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, originalList:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    mul-int/lit8 v2, p1, 0x4

    .line 108
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 109
    add-int v3, v2, v0

    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 111
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 35
    invoke-virtual {p0, p2}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    invoke-static {p1}, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-static {p1}, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_2
    invoke-static {p1}, Lcom/instagram/android/adapter/row/ReviewPhotoMapTypeRow;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_3
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->newEditView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setClusters(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/clustering/QuadtreeCluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/maps/clustering/QuadtreeCluster;>;"
    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->mObjects:Ljava/util/List;

    new-instance v1, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$HeaderRow;

    invoke-direct {v1, p0, v5}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$HeaderRow;-><init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    .line 79
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->isClusteredAroundLocationName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v7, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->mObjects:Ljava/util/List;

    new-instance v0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getLocationNameForClusterOfGeoMediaPoints()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;-><init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;ILjava/lang/String;Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$1;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_0
    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v7, 0x4010

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 89
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 90
    iget-object v3, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->mObjects:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->getMediaListRow(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_1
    iget-object v7, p0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->mObjects:Ljava/util/List;

    new-instance v0, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v3

    invoke-virtual {v2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$PointAndCount;-><init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/instagram/android/maps/clustering/QuadtreePoint;ILcom/instagram/android/adapter/ReviewPhotoMapAdapter$1;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
