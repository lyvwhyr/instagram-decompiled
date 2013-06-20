.class Lcom/instagram/android/creation/NearbyVenuesFragment$6;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Lcom/facebook/content/b;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$6;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment$6;->this$0:Lcom/instagram/android/creation/NearbyVenuesFragment;

    #calls: Lcom/instagram/android/creation/NearbyVenuesFragment;->onVenuesFetched(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->access$1100(Lcom/instagram/android/creation/NearbyVenuesFragment;Landroid/content/Intent;)V

    .line 248
    return-void
.end method
