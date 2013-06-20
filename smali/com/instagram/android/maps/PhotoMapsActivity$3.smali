.class Lcom/instagram/android/maps/PhotoMapsActivity$3;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/IgMapsView$DetachWindowListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$3;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$3;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$3;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismissAll()V

    .line 135
    :cond_0
    return-void
.end method
