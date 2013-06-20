.class Lcom/instagram/android/support/camera/CropFragment$6;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/support/camera/CropFragment;

.field final synthetic val$croppedImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment$6;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iput-object p2, p0, Lcom/instagram/android/support/camera/CropFragment$6;->val$croppedImage:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$6;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$6;->val$croppedImage:Landroid/graphics/Bitmap;

    #calls: Lcom/instagram/android/support/camera/CropFragment;->cleanup(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/CropFragment;->access$600(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V

    .line 424
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$6;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    #getter for: Lcom/instagram/android/support/camera/CropFragment;->mCropFragmentListener:Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;
    invoke-static {v0}, Lcom/instagram/android/support/camera/CropFragment;->access$000(Lcom/instagram/android/support/camera/CropFragment;)Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/support/camera/CropFragment$CropFragmentListener;->onCancelCrop()V

    .line 425
    return-void
.end method
