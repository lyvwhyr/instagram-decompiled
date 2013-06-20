.class Lcom/instagram/android/maps/ui/MapMediaPopup$8;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field final synthetic val$media:Lcom/instagram/android/model/GeoMedia;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$8;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$8;->val$media:Lcom/instagram/android/model/GeoMedia;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$8;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$8;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$8;->val$media:Lcom/instagram/android/model/GeoMedia;

    iget-object v2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$8;->val$viewGroup:Landroid/view/ViewGroup;

    #calls: Lcom/instagram/android/maps/ui/MapMediaPopup;->handleClick(Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$500(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V

    .line 375
    return-void
.end method
