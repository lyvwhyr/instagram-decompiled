.class Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;
.super Ljava/lang/Object;
.source "IgEditOrZoomPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

.field final synthetic val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

.field final synthetic val$photoMapsActivity:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;->this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;->val$photoMapsActivity:Lcom/instagram/android/maps/PhotoMapsActivity;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;->val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;->this$0:Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->dismiss()V

    .line 41
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;->val$photoMapsActivity:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;->val$cluster:Lcom/instagram/android/maps/clustering/QuadtreeCluster;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->zoomToBoundingBox(Lcom/instagram/android/maps/clustering/QuadtreeCluster;Z)Z

    .line 42
    return-void
.end method
