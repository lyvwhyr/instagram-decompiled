.class Lcom/instagram/android/maps/PhotoMapsActivity$23$1;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/PhotoMapsActivity$23;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$23;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$23$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$23$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$23;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$23;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mMapMediaPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$000(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/MapMediaPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismiss()V

    .line 905
    return-void
.end method
