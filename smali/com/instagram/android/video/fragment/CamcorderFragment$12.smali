.class Lcom/instagram/android/video/fragment/CamcorderFragment$12;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

.field final synthetic val$focusIndicatorView:Lcom/instagram/camera/ui/FocusIndicatorView;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/camera/ui/FocusIndicatorView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iput-object p2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->val$focusIndicatorView:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1271
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v12, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return v12

    .line 1274
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 1275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    .line 1276
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraId()I
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1300(Lcom/instagram/android/video/fragment/CamcorderFragment;)I

    move-result v1

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1400(Lcom/instagram/android/video/fragment/CamcorderFragment;I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 1277
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v0, v12, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->getWidth()I

    move-result v1

    .line 1281
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->getHeight()I

    move-result v2

    .line 1282
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/gl/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView;->getWidth()I

    move-result v6

    .line 1283
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/gl/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView;->getHeight()I

    move-result v7

    .line 1284
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusArea:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1500(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-static {}, Lcom/a/a/b/fk;->a()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusArea:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1502(Lcom/instagram/android/video/fragment/CamcorderFragment;Ljava/util/List;)Ljava/util/List;

    .line 1286
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusArea:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1500(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v8, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-static {}, Lcom/a/a/b/fk;->a()Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMeteringArea:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1602(Lcom/instagram/android/video/fragment/CamcorderFragment;Ljava/util/List;)Ljava/util/List;

    .line 1288
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMeteringArea:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1600(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v8, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1702(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 1293
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1295
    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;
    invoke-static {v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1800(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->getWidth()I

    move-result v3

    .line 1296
    iget-object v8, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;
    invoke-static {v8}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1800(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->getHeight()I

    move-result v8

    .line 1297
    iget-object v9, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraDisplayOrientation:I
    invoke-static {v9}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$300(Lcom/instagram/android/video/fragment/CamcorderFragment;)I

    move-result v9

    iget-object v10, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraId()I
    invoke-static {v10}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1300(Lcom/instagram/android/video/fragment/CamcorderFragment;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/instagram/android/video/util/CamcorderUtil;->getDisplayOrientation(II)I

    move-result v9

    .line 1300
    invoke-static {v0, v11, v9, v3, v8}, Lcom/instagram/camera/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 1301
    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1307
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    const/high16 v3, 0x3f80

    iget-object v8, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusArea:Ljava/util/List;
    invoke-static {v8}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1500(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    invoke-static/range {v0 .. v8}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1900(Lcom/instagram/android/video/fragment/CamcorderFragment;IIFIIIILandroid/graphics/Rect;)V

    .line 1309
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    const/high16 v3, 0x3fc0

    iget-object v8, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMeteringArea:Ljava/util/List;
    invoke-static {v8}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1600(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    invoke-static/range {v0 .. v8}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1900(Lcom/instagram/android/video/fragment/CamcorderFragment;IIFIIIILandroid/graphics/Rect;)V

    .line 1314
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1317
    div-int/lit8 v3, v1, 0x2

    sub-int v3, v4, v3

    sub-int v1, v6, v1

    invoke-static {v3, v11, v1}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v1

    .line 1318
    div-int/lit8 v3, v2, 0x2

    sub-int v3, v5, v3

    sub-int v2, v7, v2

    invoke-static {v3, v11, v2}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v2

    .line 1319
    invoke-virtual {v0, v1, v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1322
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 1324
    const/16 v1, 0xd

    aput v11, v0, v1

    .line 1325
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/ui/RotateLayout;->requestLayout()V

    .line 1327
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/gl/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/gl/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/video/gl/GLRootView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 1328
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->val$focusIndicatorView:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v1}, Lcom/instagram/camera/ui/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1329
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1330
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1331
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->val$focusIndicatorView:Lcom/instagram/camera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->showStart()V

    .line 1334
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    #setter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2002(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 1335
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusArea:Ljava/util/List;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1500(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1336
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mMeteringArea:Ljava/util/List;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$1600(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1338
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #calls: Lcom/instagram/android/video/fragment/CamcorderFragment;->lockExposureIfCustomFocus(Z)V
    invoke-static {v0, v11}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2200(Lcom/instagram/android/video/fragment/CamcorderFragment;Z)V

    .line 1345
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$12;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$12$1;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment$12;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    const-string v0, "CamcorderFragment"

    const-string v1, "Could not set parameters!"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
