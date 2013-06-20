.class Lcom/instagram/android/maps/PhotoMapsActivity$13;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "PhotoMapsActivity.java"


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
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 4
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
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;>;"
    const/4 v3, 0x0

    .line 465
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->isCurrentUser()Z
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1500(Lcom/instagram/android/maps/PhotoMapsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$700(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$13$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$13$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    :goto_0
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 481
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    sget v2, Lcom/facebook/k;->could_not_load_photo_map_information:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 478
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    sget v1, Lcom/facebook/g;->layout_maps_button_retry:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->updateProgressBarState(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1600(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V

    .line 492
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFinished()V

    .line 493
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->updateProgressBarState(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1600(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V

    .line 486
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestStart()V

    .line 487
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 453
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity$13;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 1
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
    .line 457
    .local p1, responseObject:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->processPhotos(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1300(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V

    .line 458
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$13;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->initializeMapBoundsFromTree()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1400(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 459
    return-void
.end method
