.class Lcom/instagram/android/maps/PhotoMapsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PhotoMapsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$1;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$1;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$1;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$1;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->onBackPressed()V

    .line 101
    :cond_0
    return-void
.end method
