.class Lcom/instagram/android/maps/PhotoMapsActivity$23;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$23;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 901
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$23;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    #getter for: Lcom/instagram/android/maps/PhotoMapsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->access$700(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/PhotoMapsActivity$23$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/PhotoMapsActivity$23$1;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity$23;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 907
    return-void
.end method
