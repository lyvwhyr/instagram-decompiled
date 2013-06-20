.class Lcom/instagram/android/maps/PhotoMapsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PhotoMapsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$2;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$2;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #calls: Lcom/instagram/android/maps/PhotoMapsActivity;->processEditingResult()V
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$100(Lcom/instagram/android/maps/PhotoMapsActivity;)V

    .line 108
    return-void
.end method
