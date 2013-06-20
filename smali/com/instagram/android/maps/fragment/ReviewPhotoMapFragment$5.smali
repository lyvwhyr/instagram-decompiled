.class Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "ReviewPhotoMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/android/model/GeoMedia;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;>;"
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 133
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mLoadedWithError:Z
    invoke-static {v0, v1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$702(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;Z)Z

    .line 134
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #calls: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->showLoadingErrorIfNecessary()V
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$200(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)V

    .line 135
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->setIsLoading(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$800(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;Z)V

    .line 146
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFinished()V

    .line 147
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->setIsLoading(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$800(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;Z)V

    .line 140
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestStart()V

    .line 141
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 8
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
    .line 123
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->load(Ljava/util/List;)V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instagram/android/maps/clustering/GeoPhoto;

    .line 125
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #getter for: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$500(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Lcom/instagram/android/maps/clustering/Quadtree;

    move-result-object v7

    new-instance v0, Lcom/instagram/android/maps/clustering/QuadtreePoint;

    invoke-interface {v5}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLatitude()D

    move-result-wide v1

    invoke-interface {v5}, Lcom/instagram/android/maps/clustering/GeoPhoto;->getLongitude()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/clustering/QuadtreePoint;-><init>(DDLjava/lang/Comparable;)V

    invoke-virtual {v7, v0}, Lcom/instagram/android/maps/clustering/Quadtree;->add(Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #getter for: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mAdapter:Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$600(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment$5;->this$0:Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;

    #getter for: Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->mQuadtree:Lcom/instagram/android/maps/clustering/Quadtree;
    invoke-static {v1}, Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;->access$500(Lcom/instagram/android/maps/fragment/ReviewPhotoMapFragment;)Lcom/instagram/android/maps/clustering/Quadtree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/Quadtree;->getClustersUsingLocationNames()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/ReviewPhotoMapAdapter;->setClusters(Ljava/util/ArrayList;)V

    .line 128
    return-void
.end method
