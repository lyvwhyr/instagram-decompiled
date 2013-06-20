.class Lcom/instagram/android/support/camera/CropFragment$5;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/support/camera/CropFragment;

.field final synthetic val$croppedImage:Landroid/graphics/Bitmap;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment$5;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iput-object p2, p0, Lcom/instagram/android/support/camera/CropFragment$5;->val$croppedImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/instagram/android/support/camera/CropFragment$5;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$5;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$5;->val$croppedImage:Landroid/graphics/Bitmap;

    #calls: Lcom/instagram/android/support/camera/CropFragment;->cleanup(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/CropFragment;->access$600(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V

    .line 412
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$5;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$000(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$5;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$000(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$5;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mSaveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/instagram/android/support/camera/CropFragment;->access$700(Lcom/instagram/android/support/camera/CropFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/support/camera/CropFragment$5;->val$extras:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;->onFinishCrop(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 415
    :cond_0
    return-void
.end method
