.class Lcom/instagram/android/maps/ui/PhotoOverlay$1;
.super Ljava/lang/Object;
.source "PhotoOverlay.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/PhotoOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$1;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$1;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #setter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$102(Lcom/instagram/android/maps/ui/PhotoOverlay;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 75
    iget-object v0, p0, Lcom/instagram/android/maps/ui/PhotoOverlay$1;->this$0:Lcom/instagram/android/maps/ui/PhotoOverlay;

    #getter for: Lcom/instagram/android/maps/ui/PhotoOverlay;->mMapView:Lcom/instagram/android/maps/ui/IgMapsView;
    invoke-static {v0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->access$200(Lcom/instagram/android/maps/ui/PhotoOverlay;)Lcom/instagram/android/maps/ui/IgMapsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->invalidate()V

    .line 76
    return-void
.end method
