.class Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$12;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup$12;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;->this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;->this$1:Lcom/instagram/android/maps/ui/MapMediaPopup$12;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/MapMediaPopup$12;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$200(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$12$1$1;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup$12$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method
