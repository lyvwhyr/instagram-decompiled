.class Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity$21$1;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;->this$2:Lcom/instagram/android/maps/PhotoMapsActivity$21$1;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21$1;->this$1:Lcom/instagram/android/maps/PhotoMapsActivity$21;

    iget-object v0, v0, Lcom/instagram/android/maps/PhotoMapsActivity$21;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$700(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$21$1$2;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    return-void
.end method
