.class Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$2;
.super Ljava/lang/Object;
.source "IgEditOrZoomPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

.field final synthetic val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$2;->this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$2;->val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$2;->this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->dismiss()V

    .line 49
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$2;->val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-virtual {v0}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->launchGeoGridFragment(Ljava/util/List;)V

    .line 50
    return-void
.end method
