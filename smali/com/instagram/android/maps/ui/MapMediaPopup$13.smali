.class Lcom/instagram/android/maps/ui/MapMediaPopup$13;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$13;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$13;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$13;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;
    invoke-static {v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$100(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/PhotoOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getTopLeftPixelPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup$13;->this$0:Lcom/instagram/android/maps/ui/MapMediaPopup;

    #getter for: Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;
    invoke-static {v2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$100(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/PhotoOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getTopLeftPixelPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    #calls: Lcom/instagram/android/maps/ui/MapMediaPopup;->translatePhotosBackToPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->access$1100(Lcom/instagram/android/maps/ui/MapMediaPopup;II)V

    .line 454
    return-void
.end method
