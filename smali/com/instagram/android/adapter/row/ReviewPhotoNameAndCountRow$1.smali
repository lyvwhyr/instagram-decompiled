.class final Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;
.super Ljava/lang/Object;
.source "ReviewPhotoNameAndCountRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$holder:Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;

.field final synthetic val$item:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;->val$item:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;->val$holder:Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 46
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;->val$item:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;

    iget-object v1, v1, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isAnyOfThesePhotosRemoved(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;->val$holder:Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;

    iget-object v2, v1, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$Holder;->deselectButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 48
    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;->val$item:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;

    iget-object v1, v1, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removePublishFlag(Ljava/util/Collection;)V

    .line 53
    :goto_2
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    const/16 v1, 0xff

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/row/ReviewPhotoNameAndCountRow$1;->val$item:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;

    iget-object v1, v1, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter$NameAndCount;->cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->reversePublishFlag(Ljava/util/Collection;)V

    goto :goto_2
.end method
