.class Lcom/instagram/android/maps/PhotoMapsActivity$11;
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
    .line 239
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1200(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mPreviousStates:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1200(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/PhotoMapsActivity$MapState;

    .line 246
    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/PhotoMapsActivity$11$1;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity$11$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$11;Lcom/instagram/android/maps/PhotoMapsActivity$MapState;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/maps/ui/IgMapsView;->post(Ljava/lang/Runnable;)Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$11;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureZoomButton()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$600(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 255
    return-void
.end method
