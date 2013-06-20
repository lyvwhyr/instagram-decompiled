.class Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$3:Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2$1;->this$3:Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2$1;->this$3:Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismiss()V

    .line 818
    return-void
.end method
