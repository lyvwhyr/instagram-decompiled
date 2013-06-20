.class Lcom/instagram/android/support/camera/CropFragment$3;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Lcom/instagram/android/support/camera/LoadImageTask$LoadImageListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/support/camera/CropFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/CropFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment$3;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadImageFinished(Lcom/instagram/android/support/camera/gallery/IImage;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "image"
    .parameter "bitmap"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$3;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #setter for: Lcom/instagram/android/support/camera/CropFragment;->mImage:Lcom/instagram/android/support/camera/gallery/IImage;
    invoke-static {v0, p1}, Lcom/instagram/android/support/camera/CropFragment;->access$202(Lcom/instagram/android/support/camera/CropFragment;Lcom/instagram/android/support/camera/gallery/IImage;)Lcom/instagram/android/support/camera/gallery/IImage;

    .line 190
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$3;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #setter for: Lcom/instagram/android/support/camera/CropFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/instagram/android/support/camera/CropFragment;->access$302(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 192
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$3;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$3;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #calls: Lcom/instagram/android/support/camera/CropFragment;->onImageLoaded()V
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$400(Lcom/instagram/android/support/camera/CropFragment;)V

    .line 195
    :cond_0
    return-void
.end method
