.class Lcom/instagram/android/maps/ui/MapMediaPopup$9;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field final synthetic val$media:Lcom/instagram/android/model/GeoMedia;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$9;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$9;->val$media:Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$9;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$9;->val$media:Lcom/instagram/android/model/GeoMedia;

    sget v2, Lcom/facebook/g;->constrained_image_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/instagram/android/maps/ui/MapMediaPopup;->handleClick(Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$500(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V

    .line 385
    return-void
.end method
