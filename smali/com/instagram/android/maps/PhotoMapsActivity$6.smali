.class Lcom/instagram/android/maps/PhotoMapsActivity$6;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$6;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$6;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    new-instance v1, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity$6;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity$6;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    sget v4, Lcom/facebook/g;->layout_maps_button_edit:I

    invoke-virtual {v3, v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity$6;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/instagram/android/maps/PhotoMapsActivity;)V

    #setter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$802(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    .line 191
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$6;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$800(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$6;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->showAtLocation(Landroid/view/View;III)V

    .line 192
    return-void
.end method
