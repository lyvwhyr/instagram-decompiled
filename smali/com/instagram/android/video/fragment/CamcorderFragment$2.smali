.class Lcom/instagram/android/video/fragment/CamcorderFragment$2;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$2;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 358
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    sub-int v1, p4, p2

    .line 362
    sub-int v2, p5, p3

    .line 363
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$2;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    check-cast v0, Lcom/instagram/android/video/camera/CameraScreenNail;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 366
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$2;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/gl/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView;->requestRenderForced()V

    goto :goto_0
.end method
