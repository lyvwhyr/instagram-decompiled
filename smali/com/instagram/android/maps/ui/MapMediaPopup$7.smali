.class Lcom/instagram/android/maps/ui/MapMediaPopup$7;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$7;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreFinish(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$7;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$200(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$7$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$7$1;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$7;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$300(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;)V

    .line 346
    return-void
.end method
