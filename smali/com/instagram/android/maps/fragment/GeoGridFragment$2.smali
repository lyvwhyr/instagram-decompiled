.class Lcom/instagram/android/maps/fragment/GeoGridFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "GeoGridFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$2;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment$2;->this$0:Lcom/instagram/android/maps/fragment/GeoGridFragment;

    #calls: Lcom/instagram/android/maps/fragment/GeoGridFragment;->handleCancel()V
    invoke-static {v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->access$100(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    .line 77
    return-void
.end method
