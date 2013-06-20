.class public Lcom/instagram/android/maps/adapter/GeoMediaAdapter;
.super Lcom/instagram/android/adapter/EnhancedArrayAdapter;
.source "GeoMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/adapter/EnhancedArrayAdapter",
        "<",
        "Lcom/instagram/android/maps/adapter/GeoMediaAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final NUM_MEDIA_PER_ROW:I = 0x3


# instance fields
.field private mGeoMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private getMediaCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->mGeoMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 3
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 39
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->getMediaList(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->bindEditModeView(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;Ljava/util/List;Landroid/widget/BaseAdapter;Z)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->getMediaList(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->bindEditModeViewWithoutCheckMark(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->mGeoMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMedia(I)Lcom/instagram/android/model/GeoMedia;
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->mGeoMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    return-object v0
.end method

.method public getMediaList(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    mul-int/lit8 v2, p1, 0x3

    .line 50
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 51
    add-int v3, v2, v0

    .line 52
    invoke-direct {p0}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->getMediaCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 53
    invoke-virtual {p0, v3}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->getMedia(I)Lcom/instagram/android/model/GeoMedia;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-object v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 34
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->newEditView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    iput-object p1, p0, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->mGeoMedias:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->notifyDataSetChanged()V

    .line 30
    return-void
.end method
