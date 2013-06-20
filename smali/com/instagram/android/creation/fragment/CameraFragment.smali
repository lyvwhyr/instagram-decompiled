.class public Lcom/instagram/android/creation/fragment/CameraFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/android/activity/ActivityKeyEventDelegate;
.implements Lcom/instagram/camera/FocusManager$Listener;
.implements Lcom/instagram/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final ACTIVITY_REQUEST_LIBRARY:I = 0x1

.field private static final BUNDLE_TEMP_FILE_GALLERY:Ljava/lang/String; = "tempFileGallery"

.field private static final CHECK_DISPLAY_ROTATION:I = 0x2

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final FIRST_TIME_INIT:I = 0x1

.field private static final FOCUSING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final REQUEST_CROP_PHOTO:I = 0x1

.field private static final REQUEST_FILTER:I = 0x2

.field private static final REQUEST_PICK_FROM_GALLERY:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x4

.field private static final SHOW_TAP_TO_FOCUS_TOAST:I = 0x6

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraFragment"

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2


# instance fields
.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;

.field private mAutoFocusModeEnabled:Z

.field private mAwbLockSupported:Z

.field private mBackCameraId:I

.field private mCamcorderButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

.field mCamera:Landroid/hardware/Camera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCameraNotSupported:Z

.field mCameraOpenThread:Ljava/lang/Thread;

.field mCameraPreviewThread:Ljava/lang/Thread;

.field private mCameraState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field mDefaultCameraId:I

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private final mErrorCallback:Lcom/instagram/camera/CameraErrorCallback;

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

.field private mFocusManager:Lcom/instagram/camera/FocusManager;

.field private mFrontCameraId:I

.field private mGalleryTempFile:Ljava/io/File;

.field private mGridlinesToggle:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

.field private final mHandler:Landroid/os/Handler;

.field private mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

.field private mImageUri:Landroid/net/Uri;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mLibraryButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

.field private mMeteringAreaSupported:Z

.field mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPicturesRemaining:J

.field private mPreferences:Lcom/instagram/camera/ComboPreferences;

.field private mPreviewFrame:Landroid/view/View;

.field private mPreviewFrameLayout:Lcom/instagram/camera/SquarePreviewFrameLayout;

.field private mPreviewPanel:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultFromGallery:Z

.field private mSceneMode:Ljava/lang/String;

.field private mShutterButton:Lcom/instagram/camera/ShutterButton;

.field private final mShutterCallback:Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUpdateSet:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mDidRegister:Z

    .line 119
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterCallback:Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;

    .line 120
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAutoFocusCallback:Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;

    .line 124
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/instagram/android/creation/fragment/CameraFragment$MainHandler;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientation:I

    .line 134
    iput v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationCompensation:I

    .line 145
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraNotSupported:Z

    .line 151
    iput-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 155
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOpenCameraFail:Z

    .line 156
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDisabled:Z

    .line 178
    iput v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    .line 186
    new-instance v0, Lcom/instagram/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/instagram/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mErrorCallback:Lcom/instagram/camera/CameraErrorCallback;

    .line 200
    iput-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;

    .line 201
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mResultFromGallery:Z

    .line 318
    iput-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraOpenThread:Ljava/lang/Thread;

    .line 320
    iput-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    .line 329
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$2;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1530
    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->checkStorage()V

    return-void
.end method

.method static synthetic access$1102(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/instagram/android/creation/fragment/CameraFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/instagram/android/creation/fragment/CameraFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/instagram/android/creation/fragment/CameraFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$1600(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->startPreview()V

    return-void
.end method

.method static synthetic access$1700(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/instagram/android/creation/fragment/CameraFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/instagram/android/creation/fragment/CameraFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFrontCameraId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/instagram/android/creation/fragment/CameraFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mBackCameraId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/instagram/android/creation/fragment/CameraFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->updateStorageHint()V

    return-void
.end method

.method static synthetic access$2600(Lcom/instagram/android/creation/fragment/CameraFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$2602(Lcom/instagram/android/creation/fragment/CameraFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientation:I

    return p1
.end method

.method static synthetic access$2700(Lcom/instagram/android/creation/fragment/CameraFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2702(Lcom/instagram/android/creation/fragment/CameraFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$2800(Lcom/instagram/android/creation/fragment/CameraFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$3000(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/creation/fragment/CameraFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/creation/fragment/CameraFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$600(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/creation/fragment/CameraFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/instagram/android/creation/fragment/CameraFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    return-object v0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 294
    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$1;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 300
    return-void
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->isCameraIdle()Z

    move-result v0

    return v0
.end method

.method private checkStorage()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x2faf080

    const-wide/16 v2, 0x0

    .line 1499
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getSaveOriginalPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    invoke-static {}, Lcom/instagram/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    .line 1501
    iget-wide v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 1502
    iget-wide v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    sub-long/2addr v0, v4

    const-wide/32 v2, 0x16e360

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    .line 1508
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->updateStorageHint()V

    .line 1510
    :cond_1
    return-void

    .line 1504
    :cond_2
    iget-wide v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1505
    iput-wide v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 903
    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/CameraHolder;->release()V

    .line 904
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 905
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    .line 906
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    .line 907
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->onCameraReleased()V

    .line 909
    :cond_0
    return-void
.end method

.method private getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 12
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x0

    const-wide v5, 0x7fefffffffffffffL

    .line 1286
    .line 1287
    if-nez p1, :cond_1

    .line 1329
    :cond_0
    return-object v4

    .line 1298
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1301
    if-gtz v0, :cond_6

    .line 1303
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1305
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    .line 1309
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v5

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1310
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 1311
    sub-double/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    .line 1312
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_5

    .line 1314
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_2
    move-object v4, v0

    .line 1316
    goto :goto_1

    .line 1319
    :cond_3
    if-nez v4, :cond_0

    .line 1320
    const-string v0, "CameraFragment"

    const-string v2, "No preview size match the aspect ratio"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1323
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v7, v3

    cmpg-double v3, v7, v5

    if-gez v3, :cond_4

    .line 1325
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v5, v3

    move-object v4, v0

    goto :goto_3

    :cond_5
    move-object v0, v4

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method private getPreferredCameraId()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/instagram/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    .line 314
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/instagram/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 315
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    invoke-static {v0}, Lcom/instagram/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    .line 316
    return-void
.end method

.method private initCapabilitiesSdk14()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1703
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    .line 1704
    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/instagram/android/creation/fragment/CameraFragment;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusAreaSupported:Z

    .line 1708
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mMeteringAreaSupported:Z

    .line 1709
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAeLockSupported:Z

    .line 1710
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->isAwbDisabledOverride()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAwbLockSupported:Z

    .line 1711
    return-void

    :cond_0
    move v0, v2

    .line 1704
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1708
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1710
    goto :goto_2
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1689
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/instagram/camera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1692
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->initCapabilitiesSdk14()V

    .line 1699
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAutoFocusModeEnabled:Z

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 253
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationListener:Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;

    .line 260
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationListener:Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->enable()V

    .line 262
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->checkStorage()V

    .line 265
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 268
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->camera_preview:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreviewFrame:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->focus_indicator_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    .line 271
    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    aget-object v0, v0, v1

    .line 273
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_2

    move v4, v6

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreviewFrame:Landroid/view/View;

    iget v5, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mDisplayOrientation:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/camera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/instagram/camera/FocusManager$Listener;ZI)V

    .line 276
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/j;->camera_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/FocusManager;->initializeSoundPlayer(Landroid/content/res/AssetFileDescriptor;)V

    .line 278
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    .line 279
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->installIntentFilter()V

    .line 282
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    const-string v1, "pref_tap_to_focus_prompt_shown_key"

    invoke-virtual {v0, v1, v6}, Lcom/instagram/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    :cond_1
    iput-boolean v6, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    .line 289
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->addIdleHandler()V

    goto/16 :goto_0

    .line 273
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationListener:Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->enable()V

    .line 307
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->installIntentFilter()V

    .line 308
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/j;->camera_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/FocusManager;->initializeSoundPlayer(Landroid/content/res/AssetFileDescriptor;)V

    .line 309
    new-instance v0, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    .line 310
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 745
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mDidRegister:Z

    .line 753
    return-void
.end method

.method private isAwbDisabledOverride()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1721
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E612f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E612"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E615f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E617G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P705f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P705g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-P708g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-E615F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1684
    iget v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v1}, Lcom/instagram/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOnAWhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 620
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 621
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 622
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 623
    return-void
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "flashMode"
    .parameter "whiteBalance"
    .parameter "focusMode"

    .prologue
    .line 1088
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/instagram/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 617
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 3
    .parameter "updateSet"

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1358
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1359
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->updateCameraParametersInitialize()V

    .line 1362
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 1363
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->updateCameraParametersPreference()V

    .line 1367
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    :goto_0
    return-void

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    const-string v1, "CameraFragment"

    const-string v2, "Failed to set parameters"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment$9;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$9;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 1051
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mUpdateSet:I

    .line 1052
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1055
    iput v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mUpdateSet:I

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParameters(I)V

    .line 1059
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->updateSceneModeUI()V

    .line 1060
    iput v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mUpdateSet:I

    goto :goto_0

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 925
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-nez v0, :cond_1

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 938
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 929
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCamera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 930
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 932
    :catch_0
    move-exception v0

    .line 933
    const-string v0, "CameraFragment"

    const-string v1, "Error setting display orientation"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/instagram/camera/ui/RotateLayout;->setOrientation(I)V

    .line 1496
    :cond_0
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 915
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->closeCamera()V

    .line 916
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setRecordingHint()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1015
    return-void
.end method

.method private setResultFromGalleryOrCrop()V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mResultFromGallery:Z

    .line 663
    return-void
.end method

.method private showGallery()V
    .locals 2

    .prologue
    .line 717
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenBuiltinGallery(Z)V

    .line 718
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/FileUtil;->generateTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    .line 719
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Lcom/instagram/util/GalleryUtil;->show(Landroid/support/v4/app/Fragment;ILjava/io/File;)V

    .line 720
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mErrorCallback:Lcom/instagram/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 949
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-eqz v0, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->stopPreview()V

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 954
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setDisplayOrientation()V

    .line 956
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/camera/FocusManager;->setAeAwbLock(Z)V

    .line 957
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParameters(I)V

    .line 960
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 961
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 963
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    :cond_3
    :try_start_1
    const-string v0, "CameraFragment"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 974
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    .line 975
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->onPreviewStarted()V

    goto :goto_0

    .line 963
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->closeCamera()V

    .line 971
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-eqz v0, :cond_0

    .line 980
    const-string v0, "CameraFragment"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 983
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    .line 984
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->onPreviewStopped()V

    .line 985
    return-void
.end method

.method private takeResultFromGallery()Z
    .locals 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mResultFromGallery:Z

    .line 578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mResultFromGallery:Z

    .line 579
    return v0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 994
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_0

    .line 996
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 997
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1000
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1001
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setRecordingHint()V

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_2
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/16 v6, 0x8

    .line 1091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->updateModernCameraParametersPreference()V

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key_V7"

    invoke-virtual {v0, v1, v9}, Lcom/instagram/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_6

    .line 1099
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/camera/CameraSettings;->initialCameraPictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 1105
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1107
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/g;->frame_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreviewPanel:Landroid/view/View;

    .line 1111
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1114
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/instagram/android/creation/fragment/CameraFragment;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1117
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1118
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1123
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1124
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1126
    :cond_1
    const-string v0, "CameraFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/facebook/g;->frame:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/SquarePreviewFrameLayout;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreviewFrameLayout:Lcom/instagram/camera/SquarePreviewFrameLayout;

    .line 1129
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreviewFrameLayout:Lcom/instagram/camera/SquarePreviewFrameLayout;

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v1

    div-double v1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/SquarePreviewFrameLayout;->setAspectRatio(D)V

    .line 1133
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    sget v2, Lcom/facebook/k;->pref_camera_scenemode_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    .line 1135
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1136
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1137
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1143
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1153
    :cond_2
    :goto_1
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1154
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1160
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    invoke-static {v0}, Lcom/instagram/camera/CameraSettings;->readExposure(Lcom/instagram/camera/ComboPreferences;)I

    move-result v0

    .line 1161
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 1162
    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 1163
    if-lt v0, v2, :cond_8

    if-gt v0, v1, :cond_8

    .line 1164
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1169
    :goto_2
    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1171
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    sget v2, Lcom/facebook/k;->pref_camera_flash_mode_off:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1174
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1175
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1186
    :goto_3
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    sget v2, Lcom/facebook/k;->pref_camera_whitebalance_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1191
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1200
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0, v9}, Lcom/instagram/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v1}, Lcom/instagram/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1209
    :goto_5
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar_camera_controls_flash_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;

    .line 1211
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    .line 1212
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1214
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 1215
    :cond_4
    invoke-virtual {v0, v6}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->setVisibility(I)V

    .line 1228
    :goto_6
    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$7;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->setOnClickListener(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;)V

    .line 1257
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/g;->action_bar_camera_controls_switch_camera_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1258
    iget v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mNumberOfCameras:I

    if-le v2, v8, :cond_11

    .line 1259
    new-instance v2, Lcom/instagram/android/creation/fragment/CameraFragment$8;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$8;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 1272
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1275
    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_12

    .line 1276
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1277
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGridlinesToggle:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    :cond_5
    :goto_8
    return-void

    .line 1101
    :cond_6
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 1102
    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/instagram/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 1146
    :cond_7
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    .line 1147
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1148
    const-string v0, "auto"

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 1166
    :cond_8
    const-string v1, "CameraFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1177
    :cond_9
    sget v0, Lcom/facebook/k;->pref_camera_flash_mode_off:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1178
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1179
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1181
    :cond_a
    const-string v0, "CameraFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown flash mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1193
    :cond_b
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1194
    if-nez v0, :cond_3

    .line 1195
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1203
    :cond_c
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1216
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v8, :cond_e

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1217
    invoke-virtual {v0, v6}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 1219
    :cond_e
    const-string v1, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1220
    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->ON:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->showMode(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V

    goto/16 :goto_6

    .line 1221
    :cond_f
    const-string v1, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1222
    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->AUTO:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->showMode(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V

    goto/16 :goto_6

    .line 1224
    :cond_10
    sget-object v1, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->OFF:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->showMode(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V

    goto/16 :goto_6

    .line 1268
    :cond_11
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1280
    :cond_12
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1281
    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8
.end method

.method private updateModernCameraParametersPreference()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1334
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v1}, Lcom/instagram/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1338
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v1}, Lcom/instagram/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1342
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 1343
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v1}, Lcom/instagram/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1346
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 1348
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v1}, Lcom/instagram/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1350
    :cond_3
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1072
    const-string v0, "auto"

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :goto_0
    return-void

    .line 1076
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStorageHint()V
    .locals 5

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 725
    iget-wide v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 726
    sget v0, Lcom/facebook/k;->no_storage:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 737
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 739
    :cond_1
    return-void

    .line 727
    :cond_2
    iget-wide v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 728
    sget v0, Lcom/facebook/k;->preparing_sd:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_3
    iget-wide v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 730
    sget v0, Lcom/facebook/k;->access_sd_fail:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_4
    iget-wide v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPicturesRemaining:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 732
    sget v0, Lcom/facebook/k;->not_enough_space:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAutoFocusCallback:Lcom/instagram/android/creation/fragment/CameraFragment$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 762
    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    .line 763
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 768
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    .line 769
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParameters(I)V

    .line 770
    return-void
.end method

.method public capture()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1666
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1667
    :cond_0
    const/4 v0, 0x0

    .line 1675
    :goto_0
    return v0

    .line 1670
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    iget v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientation:I

    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/camera/CameraUtil;->setRotationParameter(Landroid/hardware/Camera$Parameters;IILcom/instagram/camera/CameraHolder;)V

    .line 1671
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1673
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterCallback:Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;

    new-instance v2, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;

    invoke-direct {v2, p0, v4}, Lcom/instagram/android/creation/fragment/CameraFragment$JpegPictureCallback;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1674
    iput v5, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    .line 1675
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    .line 449
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$5;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraOpenThread:Ljava/lang/Thread;

    .line 461
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$6;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    .line 472
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 474
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 475
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/instagram/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 477
    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mNumberOfCameras:I

    .line 480
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->resetExposureCompensation()V

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraOpenThread:Ljava/lang/Thread;

    .line 486
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOpenCameraFail:Z

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 520
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 500
    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mBackCameraId:I

    .line 501
    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFrontCameraId:I

    .line 504
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 506
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 510
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    :try_start_3
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 519
    :goto_2
    iput-object v3, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraPreviewThread:Ljava/lang/Thread;

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 515
    :catch_1
    move-exception v0

    goto :goto_2

    .line 507
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 627
    if-eq p2, v1, :cond_0

    .line 659
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setResultFromGalleryOrCrop()V

    .line 634
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 636
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/util/GalleryUtil;->getImageUriFromResult(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 637
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->cropIntentForFilterFragment(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setMediaSource(I)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 647
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 651
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 654
    :pswitch_2
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 655
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 694
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mLibraryButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    if-ne p1, v0, :cond_1

    .line 695
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->showGallery()V

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCamcorderButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    if-ne p1, v0, :cond_0

    .line 698
    invoke-static {}, Lcom/instagram/android/video/VideoFileSizeManager;->hasEnoughSpaceToStartRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 699
    sget v0, Lcom/facebook/k;->video_not_enough_space_for_recording:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/instagram/android/video/VideoFileSizeManager;->getMinimumSpaceMegabytes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 710
    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-direct {v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;-><init>()V

    .line 711
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 712
    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 348
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setLastMediaMode(I)V

    .line 349
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getPreferredCameraId()V

    .line 351
    new-instance v0, Lcom/instagram/camera/FocusManager;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    sget v2, Lcom/facebook/k;->pref_camera_focusmode_default:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/creation/fragment/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/camera/FocusManager;-><init>(Lcom/instagram/camera/ComboPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    .line 354
    invoke-static {}, Lcom/instagram/android/service/PendingMediaService;->isFinishedRendering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "CameraFragment"

    const-string v1, "Safe to delete temporary files."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/video/util/VideoFileUtil;->cleanupPreviousRecordingsAsync(Landroid/content/Context;)V

    .line 361
    :goto_0
    if-eqz p1, :cond_0

    .line 362
    const-string v0, "tempFileGallery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    .line 367
    :cond_0
    return-void

    .line 358
    :cond_1
    const-string v0, "CameraFragment"

    const-string v1, "Not done rendering. Won\'t delete temporary files yet."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 381
    sget v0, Lcom/facebook/h;->fragment_camera:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 386
    sget v0, Lcom/facebook/g;->camera_preview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 391
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 392
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 393
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 396
    sget v0, Lcom/facebook/g;->fragment_camera_shutter_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ShutterButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterButton:Lcom/instagram/camera/ShutterButton;

    .line 397
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterButton:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/instagram/camera/ShutterButton;->setOnShutterButtonListener(Lcom/instagram/camera/ShutterButton$OnShutterButtonListener;)V

    .line 398
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterButton:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ShutterButton;->setVisibility(I)V

    .line 400
    sget v0, Lcom/facebook/g;->fragment_camera_gallery_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mLibraryButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    .line 401
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mLibraryButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    invoke-virtual {v0, p0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    sget v0, Lcom/facebook/g;->fragment_camera_video_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCamcorderButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    .line 405
    iget-object v3, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCamcorderButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    invoke-static {}, Lcom/instagram/util/IgGateKeeper;->isVesper()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->meetsVideoCaptureRequirements()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCamcorderButton:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    invoke-virtual {v0, p0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    sget v0, Lcom/facebook/g;->action_bar_camera_controls_cancel_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/instagram/android/creation/fragment/CameraFragment$3;

    invoke-direct {v3, p0}, Lcom/instagram/android/creation/fragment/CameraFragment$3;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v3

    .line 419
    sget v0, Lcom/facebook/g;->grid_lines_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 420
    sget v0, Lcom/facebook/g;->action_bar_camera_controls_grid_lines_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGridlinesToggle:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    .line 423
    invoke-virtual {v3}, Lcom/instagram/android/UserPreferences;->getHasGridlinesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGridlinesToggle:Lcom/instagram/android/creation/widget/ActionBarHighlightButton;

    new-instance v1, Lcom/instagram/android/creation/fragment/CameraFragment$4;

    invoke-direct {v1, p0, v4, v3}, Lcom/instagram/android/creation/fragment/CameraFragment$4;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;Landroid/view/View;Lcom/instagram/android/UserPreferences;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    return-object v2

    .line 405
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 796
    sparse-switch p1, :sswitch_data_0

    .line 825
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 798
    :sswitch_0
    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 799
    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 803
    :sswitch_1
    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->onShutterButtonClick()V

    goto :goto_0

    .line 810
    :sswitch_2
    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 814
    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->onShutterButtonFocus(Z)V

    .line 815
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterButton:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/instagram/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterButton:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/instagram/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 820
    :goto_1
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterButton:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/instagram/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mShutterButton:Lcom/instagram/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/instagram/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 830
    packed-switch p1, :pswitch_data_0

    .line 838
    :goto_0
    return v0

    .line 832
    :pswitch_0
    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 833
    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->onShutterButtonFocus(Z)V

    .line 835
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 830
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 584
    iput-boolean v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    .line 586
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->stopPreview()V

    .line 588
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->closeCamera()V

    .line 589
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->resetScreenOn()V

    .line 591
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOrientationListener:Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment$MyOrientationEventListener;->disable()V

    .line 593
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;->finish()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mImageSaver:Lcom/instagram/android/creation/fragment/CameraFragment$ImageSaver;

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mDidRegister:Z

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mDidRegister:Z

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->releaseSoundPlayer()V

    .line 607
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->removeMessages()V

    .line 611
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 612
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 531
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    .line 535
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->takeResultFromGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 544
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-nez v0, :cond_2

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    invoke-static {v0, v1}, Lcom/instagram/camera/CameraUtil;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    .line 547
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->initializeCapabilities()V

    .line 548
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->resetExposureCompensation()V

    .line 549
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->startPreview()V
    :try_end_0
    .catch Lcom/instagram/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/instagram/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 562
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->keepScreenOnAWhile()V

    .line 570
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-ne v0, v2, :cond_0

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mOnResumeTime:J

    .line 572
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 553
    :catch_1
    move-exception v0

    .line 554
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cannot_connect_camera:I

    invoke-static {v0, v1}, Lcom/instagram/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 565
    :cond_4
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 373
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "tempFileGallery"

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mGalleryTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1018
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPreferences:Lcom/instagram/camera/ComboPreferences;

    invoke-static {v1}, Lcom/instagram/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 1025
    iget v2, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraId:I

    if-eq v2, v1, :cond_1

    .line 1026
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1027
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1028
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1029
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    invoke-static {}, Lcom/instagram/camera/CameraHolder;->instance()Lcom/instagram/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/camera/CameraHolder;->keep()V

    .line 1036
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :goto_1
    invoke-virtual {v0, v4, v4}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 1044
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v2

    .line 1038
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1039
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1046
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->doSnap()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    :cond_2
    if-eqz p1, :cond_3

    .line 677
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    .line 527
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 775
    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v0

    .line 781
    :cond_1
    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusAreaSupported:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mMeteringAreaSupported:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mAutoFocusModeEnabled:Z

    if-eqz v1, :cond_0

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/instagram/camera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1680
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setCameraParameters(I)V

    .line 1681
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 843
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 844
    const-string v0, "CameraFragment"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    const-string v0, "CameraFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged. w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 858
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 862
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mCameraState:I

    if-nez v0, :cond_3

    .line 870
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->startPreview()V

    .line 886
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mFirstTimeInitialized:Z

    if-nez v0, :cond_5

    .line 887
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 872
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mDisplayRotation:I

    if-eq v0, v1, :cond_4

    .line 873
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->setDisplayOrientation()V

    .line 875
    :cond_4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 879
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 889
    :cond_5
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->initializeSecondTime()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 894
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/CameraFragment;->stopPreview()V

    .line 898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 899
    return-void
.end method
