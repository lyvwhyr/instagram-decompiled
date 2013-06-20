.class public Lcom/instagram/android/creation/fragment/FilterFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "FilterFragment.java"

# interfaces
.implements Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;


# static fields
.field public static final ARGUMENTS_CAMERA_ROTATION:Ljava/lang/String; = "cameraRotation"

.field public static final ARGUMENTS_CROP_RECT:Ljava/lang/String; = "cropRect"

.field public static final ARGUMENTS_FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final ARGUMENTS_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final ARGUMENTS_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final ARGUMENTS_MEDIA_SOURCE:Ljava/lang/String; = "mediaSource"

.field public static final ARGUMENTS_MIRROR_MEDIA:Ljava/lang/String; = "mirrorMedia"

.field public static final ARGUMENTS_ORIGINAL_HEIGHT:Ljava/lang/String; = "originalHeight"

.field public static final ARGUMENTS_ORIGINAL_WIDTH:Ljava/lang/String; = "originalWidth"

.field private static final BUNDLE_KEY_LUX_ENABLED:Ljava/lang/String; = "luxEnabled"

.field private static final BUNDLE_KEY_TILT_SHIFT_ENABLED:Ljava/lang/String; = "tiltEnabled"

.field private static final BUNDLE_KEY_TILT_SHIFT_MANAGER:Ljava/lang/String; = "tiltManager"

.field private static final BUNDLE_KEY_TILT_SHIFT_MODE:Ljava/lang/String; = "tiltMode"

.field private static final BUNDLE_ROTATION:Ljava/lang/String; = "rotation"

.field private static final BUNDLE_SELECTED_FILTER_INDEX:Ljava/lang/String; = "selectedFilter"

.field private static final REMOVE_TILTSHIFT_OVERLAY:I = 0xca0

.field private static final SHOW_LOADING_MESSAGE:I = 0xca1

.field public static final TILT_SHIFT_MODE_CIRCLE:I = 0x1

.field public static final TILT_SHIFT_MODE_LINE:I = 0x0

.field public static final UPLOAD_DIMENSIONS:I = 0x264


# instance fields
.field private mBorderButton:Landroid/widget/CompoundButton;

.field private mBordersEnabled:Z

.field private mController:Lcom/instagram/android/gl/FilterController;

.field private mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

.field private mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field private mIImage:Lcom/instagram/android/support/camera/gallery/IImage;

.field private mLuxButton:Landroid/widget/CompoundButton;

.field private mLuxEnabled:Z

.field private mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

.field private mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

.field private mRotateButton:Landroid/widget/Button;

.field private mRotation:I

.field private mSelectedFilterIndex:I

.field private mTiltShiftEnabled:Z

.field private mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

.field private mTiltShiftMode:I

.field private mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 83
    iput v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 87
    new-instance v0, Lcom/instagram/android/gl/TiltShiftManager;

    invoke-direct {v0}, Lcom/instagram/android/gl/TiltShiftManager;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    .line 88
    new-instance v0, Lcom/instagram/android/creation/fragment/FilterFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$1;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    .line 112
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    .line 113
    iput v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    .line 116
    iput v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mSelectedFilterIndex:I

    .line 737
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;)Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->removeMaskHighlight()V

    return-void
.end method

.method static synthetic access$102(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->renderFullsizeBitmap()V

    return-void
.end method

.method static synthetic access$1300(Lcom/instagram/android/creation/fragment/FilterFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/FilterFragment;->setLuxEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/instagram/android/creation/fragment/FilterFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I

    return v0
.end method

.method static synthetic access$1402(Lcom/instagram/android/creation/fragment/FilterFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I

    return p1
.end method

.method static synthetic access$1500(Lcom/instagram/android/creation/fragment/FilterFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/FilterFragment;->startTiltShiftWithMode(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/instagram/android/creation/fragment/FilterFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/instagram/android/creation/fragment/FilterFragment;ZI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getTiltShiftButtonState(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/instagram/android/creation/fragment/FilterFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/FilterFragment;->innerStartShift(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/creation/fragment/FilterFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxButton:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/android/creation/fragment/FilterFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBorderButton:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->setContinousRenderDelayed()V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/TiltShiftManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/creation/fragment/FilterFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/FilterFragment;->setBordersEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/creation/widget/TiltShiftButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    return-object v0
.end method

.method static synthetic access$802(Lcom/instagram/android/creation/fragment/FilterFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mSelectedFilterIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    return-object v0
.end method

.method private getCameraCropRect(IIIIZ)Landroid/graphics/Rect;
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "cameraRotatation"
    .parameter "exifOrientation"
    .parameter "mirrored"

    .prologue
    .line 656
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 657
    sub-int v5, p1, v4

    .line 658
    sub-int v6, p2, v4

    .line 660
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p5

    .line 661
    invoke-static/range {v0 .. v6}, Lcom/instagram/android/creation/util/RotateUtil;->getNormalizedPhotoCrop(IIIZIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 664
    :goto_0
    return-object v0

    :cond_0
    move v0, p1

    move v1, p2

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v6}, Lcom/instagram/android/creation/util/RotateUtil;->getExifRotationPhotoCrop(IIIZIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method private getFullPathFromArgument()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getIImage()Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/support/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIImage()Lcom/instagram/android/support/camera/gallery/IImage;
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mIImage:Lcom/instagram/android/support/camera/gallery/IImage;

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/instagram/android/support/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/instagram/android/support/camera/gallery/IImageList;

    move-result-object v1

    .line 547
    invoke-interface {v1, v0}, Lcom/instagram/android/support/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mIImage:Lcom/instagram/android/support/camera/gallery/IImage;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mIImage:Lcom/instagram/android/support/camera/gallery/IImage;

    return-object v0
.end method

.method private getOriginalHeight()I
    .locals 1

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getIImage()Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/support/camera/gallery/IImage;->getWidth()I

    move-result v0

    return v0
.end method

.method private getOriginalWidth()I
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getIImage()Lcom/instagram/android/support/camera/gallery/IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/support/camera/gallery/IImage;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTiltShiftButtonState(ZI)I
    .locals 1
    .parameter "tiltShiftEnabled"
    .parameter "tiltShiftMode"

    .prologue
    const/4 v0, 0x1

    .line 397
    if-eqz p1, :cond_1

    .line 398
    if-ne p2, v0, :cond_0

    .line 402
    :goto_0
    return v0

    .line 400
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasBordersEnabled()Z
    .locals 1

    .prologue
    .line 718
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getHasBordersEnabled()Z

    move-result v0

    return v0
.end method

.method private innerStartShift(I)V
    .locals 2
    .parameter "tiltShiftMode"

    .prologue
    const/4 v1, 0x1

    .line 482
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterController;->setTiltShiftEnabled(Z)V

    .line 483
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    .line 484
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/FilterFragment;->setTiltShiftMode(I)V

    .line 485
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->transitionTiltshiftAnimation()V

    .line 486
    return-void
.end method

.method private removeMaskHighlight()V
    .locals 1

    .prologue
    .line 406
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftRemoveMaskHighlight()V

    .line 407
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->requestRender()V

    .line 408
    return-void
.end method

.method private renderFullsizeBitmap()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    new-instance v1, Lcom/instagram/android/creation/callback/RenderFullCallback;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/callback/RenderFullCallback;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/gl/FilterController;->renderToBitmap(Lcom/instagram/android/gl/FilterController$RenderCallbacks;I)V

    .line 512
    return-void
.end method

.method private setBordersEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBordersEnabled:Z

    .line 703
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBordersEnabled:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/UserPreferences;->setHasBordersEnabled(Z)V

    .line 704
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterController;->requestRender()V

    .line 705
    return-void
.end method

.method private setContinousRenderDelayed()V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$11;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$11;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    return-void
.end method

.method private setLuxEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxEnabled:Z

    .line 559
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterController;->requestRenderWithBlurRedraw()V

    .line 560
    return-void
.end method

.method private setTiltShiftMode(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 598
    iput p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    .line 599
    invoke-static {p1}, Lcom/instagram/android/gl/NativeBridge;->setTiltShiftMode(I)V

    .line 600
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    iget v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    invoke-direct {p0, v1, v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getTiltShiftButtonState(ZI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setState(I)V

    .line 601
    return-void
.end method

.method private startTiltShiftWithMode(I)V
    .locals 4
    .parameter "tiltShiftMode"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->dismiss()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    .line 463
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderMode(I)V

    .line 470
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/creation/fragment/FilterFragment$15;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/FilterFragment;->innerStartShift(I)V

    goto :goto_0
.end method

.method private transitionTiltshiftAnimation()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$16;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$16;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    return-void
.end method


# virtual methods
.method public getBordersEnabled()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBordersEnabled:Z

    return v0
.end method

.method public getCameraOrientation()I
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cameraRotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getFullPathFromArgument()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/support/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v0

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCroppingRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 649
    :goto_0
    return-object v0

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cameraRotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getOriginalHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getOriginalWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "cameraRotation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getFullPathFromArgument()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/support/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getMirrorMasterTexture()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/creation/fragment/FilterFragment;->getCameraCropRect(IIIIZ)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentFilter()I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/FilterPicker;->getSelectedFilter()Lcom/instagram/android/gl/IgFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/IgFilter;->getId()I

    move-result v0

    return v0
.end method

.method public getCurrentRotation()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I

    return v0
.end method

.method public getLuxEnabled()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxEnabled:Z

    return v0
.end method

.method public getMasterTexturePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getFullPathFromArgument()Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v1, "FilterFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading full path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-object v0
.end method

.method public getMirrorMasterTexture()Z
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mirrorMedia"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getTiltShiftEnabled()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    return v0
.end method

.method public getTiltShiftMode()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    return v0
.end method

.method public getTiltShiftOriginX()F
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-virtual {v0}, Lcom/instagram/android/gl/TiltShiftManager;->getOriginX()F

    move-result v0

    return v0
.end method

.method public getTiltShiftOriginY()F
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-virtual {v0}, Lcom/instagram/android/gl/TiltShiftManager;->getOriginY()F

    move-result v0

    return v0
.end method

.method public getTiltShiftPopupWindow()Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 421
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->overlay_tiltshift:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 424
    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    invoke-direct {v1, p0, v0, v3, v3}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    .line 425
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    sget v1, Lcom/facebook/g;->overlay_tiltshift_button_circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$12;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$12;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    sget v1, Lcom/facebook/g;->overlay_tiltshift_button_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$13;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$13;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    sget v1, Lcom/facebook/g;->overlay_tiltshift_button_off:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$14;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$14;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    return-object v0
.end method

.method public getTiltShiftRadius()F
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-virtual {v0}, Lcom/instagram/android/gl/TiltShiftManager;->getRadius()F

    move-result v0

    return v0
.end method

.method public getTiltShiftTheta()F
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-virtual {v0}, Lcom/instagram/android/gl/TiltShiftManager;->getTheta()F

    move-result v0

    return v0
.end method

.method public isCameraOrientedCrop()Z
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cameraRotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mirrorTiltShift()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-virtual {v0}, Lcom/instagram/android/gl/TiltShiftManager;->mirror()V

    .line 606
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 523
    if-eq p2, v1, :cond_0

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 528
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->hasBordersEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBordersEnabled:Z

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v0, "luxEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxEnabled:Z

    .line 126
    const-string v0, "tiltEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    .line 127
    const-string v0, "tiltMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    .line 128
    const-string v0, "tiltManager"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/gl/TiltShiftManager;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    .line 129
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I

    .line 130
    const-string v0, "selectedFilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mSelectedFilterIndex:I

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/instagram/android/gl/NativeBridge;->setMasterTextureDelegate(Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;)V

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0xd7

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 190
    sget v0, Lcom/facebook/h;->fragment_filter:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 192
    sget v0, Lcom/facebook/g;->fragment_filter_gl_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/gl/FilterGLSurfaceView;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    .line 194
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x140

    if-ne v0, v2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 196
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 198
    iget-object v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    invoke-virtual {v2, v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/gl/TiltShiftManager;->setGLView(Landroid/opengl/GLSurfaceView;)V

    .line 202
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$2;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    new-instance v0, Lcom/instagram/android/creation/fragment/FilterFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$3;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    .line 217
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getLuxSupported()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getTiltShiftSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    sget v0, Lcom/facebook/g;->icon_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/high16 v2, 0x4100

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 227
    :cond_1
    :goto_0
    sget v0, Lcom/facebook/g;->button_toggle_borders:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBorderButton:Landroid/widget/CompoundButton;

    .line 228
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBorderButton:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$4;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBorderButton:Landroid/widget/CompoundButton;

    iget-boolean v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBordersEnabled:Z

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 239
    sget v0, Lcom/facebook/g;->button_tiltshift_menu:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/TiltShiftButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    .line 240
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getTiltShiftSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$5;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$5;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    invoke-virtual {v0, v4}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setVisibility(I)V

    .line 264
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    iget-boolean v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    iget v3, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    invoke-direct {p0, v2, v3}, Lcom/instagram/android/creation/fragment/FilterFragment;->getTiltShiftButtonState(ZI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setState(I)V

    .line 269
    sget v0, Lcom/facebook/g;->fragment_filter_filter_picker:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/FilterPicker;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    .line 270
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$6;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$6;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/FilterPicker;->setOnFilterChangedListener(Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;)V

    .line 277
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    iget v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mSelectedFilterIndex:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/FilterPicker;->setSelectedFilterIndex(I)V

    .line 282
    sget v0, Lcom/facebook/g;->button_accept:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$7;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$7;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    sget v0, Lcom/facebook/g;->button_toggle_lux:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxButton:Landroid/widget/CompoundButton;

    .line 340
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getLuxSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxButton:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$8;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$8;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 356
    :goto_2
    sget v0, Lcom/facebook/g;->button_rotate:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotateButton:Landroid/widget/Button;

    .line 357
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotateButton:Landroid/widget/Button;

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$9;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$9;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    sget v0, Lcom/facebook/g;->button_back:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/creation/fragment/FilterFragment$10;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$10;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-object v1

    .line 219
    :cond_2
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getLuxSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    sget v0, Lcom/facebook/g;->lux_separator:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 221
    sget v0, Lcom/facebook/g;->icon_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/high16 v2, 0x40c0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    goto/16 :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    invoke-virtual {v0, v5}, Lcom/instagram/android/creation/widget/TiltShiftButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 154
    invoke-static {p0}, Lcom/instagram/android/gl/NativeBridge;->removeMasterTextureDelegate(Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;)V

    .line 156
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 160
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mPopupWindow:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->dismiss()V

    .line 163
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 385
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-virtual {v0, v1}, Lcom/instagram/android/gl/TiltShiftManager;->setGLView(Landroid/opengl/GLSurfaceView;)V

    .line 386
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    .line 387
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    .line 388
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltshiftButton:Lcom/instagram/android/creation/widget/TiltShiftButton;

    .line 389
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotateButton:Landroid/widget/Button;

    .line 390
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxButton:Landroid/widget/CompoundButton;

    .line 391
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mBorderButton:Landroid/widget/CompoundButton;

    .line 392
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/FilterPicker;->setOnFilterChangedListener(Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;)V

    .line 393
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterPicker:Lcom/instagram/android/creation/widget/FilterPicker;

    .line 394
    return-void
.end method

.method public onFinishLoadMasterTexture()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$17;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$17;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->onPause()V

    .line 169
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 176
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 177
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 181
    invoke-static {p0}, Lcom/instagram/android/gl/NativeBridge;->setMasterTextureDelegate(Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;)V

    .line 183
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->onResume()V

    .line 184
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenFilters()V

    .line 185
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 141
    const-string v0, "luxEnabled"

    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mLuxEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string v0, "tiltEnabled"

    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v0, "tiltMode"

    iget v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v0, "tiltManager"

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftManager:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    const-string v0, "selectedFilter"

    iget v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mSelectedFilterIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v0, "rotation"

    iget v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mRotation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public onStartLoadMasterTexture()V
    .locals 4

    .prologue
    .line 611
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 612
    return-void
.end method

.method public removeDialogIfPresent()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 726
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 728
    :cond_1
    return-void
.end method

.method public renderUploadBitmap()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment;->mController:Lcom/instagram/android/gl/FilterController;

    new-instance v1, Lcom/instagram/android/creation/callback/RenderUploadCallback;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/callback/RenderUploadCallback;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    const/16 v2, 0x264

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/gl/FilterController;->renderToBitmap(Lcom/instagram/android/gl/FilterController$RenderCallbacks;I)V

    .line 518
    return-void
.end method
