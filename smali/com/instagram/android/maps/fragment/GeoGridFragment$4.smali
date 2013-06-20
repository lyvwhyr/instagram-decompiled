.class Lcom/instagram/android/maps/fragment/GeoGridFragment$4;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$4;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 160
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$4;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    #calls: Lcom/instagram/android/maps/fragment/GeoGridFragment;->getGeoMedia()Ljava/util/List;
    invoke-static {v1}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$200(Lcom/instagram/android/maps/fragment/GeoGridFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removePublishFlag(Ljava/util/Collection;)V

    .line 161
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$4;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-virtual {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getAdapter()Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method
