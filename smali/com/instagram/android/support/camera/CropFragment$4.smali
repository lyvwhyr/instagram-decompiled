.class Lcom/instagram/android/support/camera/CropFragment$4;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/support/camera/CropFragment;

.field final synthetic val$croppedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/instagram/android/support/camera/CropFragment$4;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iput-object p2, p0, Lcom/instagram/android/support/camera/CropFragment$4;->val$croppedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/instagram/android/support/camera/CropFragment$4;->this$0:Lcom/instagram/android/support/camera/CropFragment;

    iget-object v1, p0, Lcom/instagram/android/support/camera/CropFragment$4;->val$croppedBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/instagram/android/support/camera/CropFragment;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/instagram/android/support/camera/CropFragment;->access$500(Lcom/instagram/android/support/camera/CropFragment;Landroid/graphics/Bitmap;)V

    .line 339
    return-void
.end method
