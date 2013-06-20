.class Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$21$1;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$400(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->configureStateOfButtons()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$1700(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$1;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    iget-object v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v1, v1, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$2100(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 809
    return-void
.end method
