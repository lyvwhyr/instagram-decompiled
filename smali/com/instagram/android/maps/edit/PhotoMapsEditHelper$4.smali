.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "PhotoMapsEditHelper.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 4
    .parameter "responseObject"

    .prologue
    const/4 v3, 0x1

    .line 135
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getCurrentlyDeletedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    .line 140
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/android/model/GeoMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->removeGeoData()V

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->markEditSuccessful()V

    .line 147
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #calls: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->removeDialog(Z)V
    invoke-static {v0, v3}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$200(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Z)V

    .line 149
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
    invoke-static {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$300(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$400(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->your_map_is_now_ready:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    :goto_1
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$4;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$400(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->changes_saved:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
