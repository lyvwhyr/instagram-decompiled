.class public Lcom/instagram/android/video/fragment/CamcorderFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;
.implements Lcom/instagram/android/video/camera/CameraScreenNail$Listener;
.implements Lcom/instagram/android/video/camera/MultiClipVideoRecorder;
.implements Lcom/instagram/android/video/ui/PhotoView$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final CHECK_DISPLAY_ROTATION:I = 0x4

.field private static final MESSAGE_CLEAR_FOCUS_INDICATOR:I = 0x5

.field private static final MESSAGE_CLEAR_FOCUS_INDICATOR_DELAY_MS:I = 0x12c

.field private static final MESSAGE_CLEAR_SCREEN_DELAY:I = 0x2

.field private static final MESSAGE_CLIP_PROGRESS:I = 0x1

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SWITCH_CAMERA:I = 0x8

.field public static final TAG:Ljava/lang/String; = "CamcorderFragment"


# instance fields
.field private mAcceptButton:Lcom/instagram/android/video/ui/VideoAcceptButton;

.field private mBlinkerAnimation:Landroid/view/animation/Animation;

.field private mBlinkerView:Landroid/widget/ImageView;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraDisplayOrientation:I

.field protected mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

.field private mCancelButton:Lcom/instagram/android/video/ui/VideoCancelButton;

.field private mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

.field private mClipRecorderStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/video/camera/ClipRecorderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

.field private mClipStackView:Lcom/instagram/android/video/ui/ClipStackView;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDialog:Lcom/instagram/android/widget/IgProgressDialog;

.field private final mErrorCallback:Lcom/instagram/camera/CameraErrorCallback;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

.field private mFrameDrawnListener:Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedFocus:Z

.field private mHasSetUpFocus:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOriginalRingerMode:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPausing:Z

.field private mPhotoView:Lcom/instagram/android/video/ui/PhotoView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

.field private mPreviewOverlayView:Landroid/view/View;

.field mPreviewing:Z

.field protected mProfile:Landroid/media/CamcorderProfile;

.field private mRecorderStateListeners:Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;

.field private mRecordingSession:Ljava/lang/String;

.field private mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

.field private mSurfaceViewReady:Z

.field private mSwitchCameraButton:Lcom/instagram/android/video/ui/SwitchCameraButton;

.field private mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

.field private mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

.field private mVideoFileSizeManager:Lcom/instagram/android/video/VideoFileSizeManager;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoRecorderState:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

.field private mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 126
    new-instance v0, Lcom/instagram/android/video/ClipStackManager;

    invoke-direct {v0}, Lcom/instagram/android/video/ClipStackManager;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    .line 131
    new-instance v0, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;

    invoke-direct {v0}, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecorderStateListeners:Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;

    .line 133
    new-instance v0, Lcom/instagram/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/instagram/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mErrorCallback:Lcom/instagram/camera/CameraErrorCallback;

    .line 146
    new-instance v0, Lcom/instagram/android/video/fragment/CamcorderFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$1;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    .line 215
    iput-boolean v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewing:Z

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mOrientation:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    .line 224
    iput-boolean v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPaused:Z

    .line 226
    new-instance v0, Lcom/instagram/android/video/VideoFileSizeManager;

    invoke-direct {v0}, Lcom/instagram/android/video/VideoFileSizeManager;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFileSizeManager:Lcom/instagram/android/video/VideoFileSizeManager;

    .line 229
    iput v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mOriginalRingerMode:I

    .line 1378
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/camera/ui/RotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ClipStackManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setClipRecorderState(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/instagram/android/video/fragment/CamcorderFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/instagram/android/video/fragment/CamcorderFragment;I)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/instagram/android/video/fragment/CamcorderFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusArea:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/instagram/android/video/fragment/CamcorderFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMeteringArea:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ui/CamcorderPreviewLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/instagram/android/video/fragment/CamcorderFragment;IIFIIIILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p8}, Lcom/instagram/android/video/fragment/CamcorderFragment;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/instagram/android/video/fragment/CamcorderFragment;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/instagram/android/video/fragment/CamcorderFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->lockExposureIfCustomFocus(Z)V

    return-void
.end method

.method static synthetic access$2302(Lcom/instagram/android/video/fragment/CamcorderFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHasPerformedFocus:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/instagram/android/video/fragment/CamcorderFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecordingSession:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/video/fragment/CamcorderFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraDisplayOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$500(Lcom/instagram/android/video/fragment/CamcorderFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->startPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/video/fragment/CamcorderFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/gl/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/video/ui/VideoDeleteButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/video/fragment/CamcorderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 7
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    const/4 v5, 0x0

    .line 945
    int-to-float v0, p1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 946
    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 947
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p4, v2

    sub-int v3, p6, v0

    invoke-static {v2, v5, v3}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v2

    .line 948
    div-int/lit8 v3, v1, 0x2

    sub-int v3, p5, v3

    sub-int v4, p7, v1

    invoke-static {v3, v5, v4}, Lcom/instagram/camera/CameraUtil;->clamp(III)I

    move-result v3

    .line 950
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 951
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 952
    invoke-static {v4, p8}, Lcom/instagram/camera/CameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 953
    return-void
.end method

.method private clearTapToFocusState()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1237
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1238
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    sget v1, Lcom/facebook/g;->focus_indicator:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    .line 1241
    invoke-virtual {v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->clear()V

    .line 1243
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1047
    const-string v0, "CamcorderFragment"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1049
    const-string v0, "CamcorderFragment"

    const-string v1, "already stopped"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :goto_0
    return-void

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1053
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1054
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1055
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewing:Z

    goto :goto_0
.end method

.method private configureBlinker()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x2

    .line 274
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v1

    .line 275
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->getTotalClipLength()I

    move-result v2

    .line 277
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/facebook/g;->camcorder_root:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 278
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/e;->camcorder_buttonbar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->blinker_offset_from_buttonbar:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 283
    int-to-double v4, v2

    const-wide v6, 0x40cd4c0000000000L

    div-double/2addr v4, v6

    int-to-double v1, v1

    mul-double/2addr v1, v4

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->blinker_initial_left_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-double v4, v4

    sub-double/2addr v1, v4

    .line 285
    double-to-int v1, v1

    invoke-virtual {v0, v1, v8, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 286
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    return-void
.end method

.method private configureSwitchCameraButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mSwitchCameraButton:Lcom/instagram/android/video/ui/SwitchCameraButton;

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v2, v0}, Lcom/instagram/android/video/ui/SwitchCameraButton;->setAlpha(I)V

    .line 257
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mSwitchCameraButton:Lcom/instagram/android/video/ui/SwitchCameraButton;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v2}, Lcom/instagram/android/video/ClipStackManager;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/SwitchCameraButton;->setEnabled(Z)V

    .line 258
    return-void

    :cond_1
    move v0, v1

    .line 256
    goto :goto_0
.end method

.method private getCameraId()I
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/instagram/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    return v0
.end method

.method private getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 728
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 729
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 730
    return-object v0
.end method

.method private getClipRecorderState()Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    return-object v0
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1127
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewWidth:I

    .line 1129
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewHeight:I

    .line 1149
    :goto_0
    const-string v0, "CamcorderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1132
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/instagram/android/video/util/CamcorderUtil;->getCorrectedPreferredPreviewSizeForVideo(Landroid/hardware/Camera$Parameters;Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1135
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 1136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1138
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1140
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_1

    .line 1141
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1144
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/video/util/CamcorderUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1146
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewWidth:I

    .line 1147
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private getMinVideoIndicatorXPos()I
    .locals 1

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    return v0
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

    .line 1065
    .line 1066
    if-nez p1, :cond_1

    .line 1108
    :cond_0
    return-object v4

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1080
    if-gtz v0, :cond_6

    .line 1082
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1084
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    .line 1088
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

    .line 1089
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 1090
    sub-double/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fa999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    .line 1091
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_5

    .line 1093
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_2
    move-object v4, v0

    .line 1095
    goto :goto_1

    .line 1098
    :cond_3
    if-nez v4, :cond_0

    .line 1099
    const-string v0, "CamcorderFragment"

    const-string v2, "No preview size match the aspect ratio"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
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

    .line 1102
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v7, v3

    cmpg-double v3, v7, v5

    if-gez v3, :cond_4

    .line 1104
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

.method private initializeRecorder()V
    .locals 4

    .prologue
    .line 735
    const-string v0, "CamcorderFragment"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 739
    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 750
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 751
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 752
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 754
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecordingSession:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/video/util/VideoFileUtil;->generateRecordingSessionName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecordingSession:Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecordingSession:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/video/util/VideoFileUtil;->generateVideoFilename(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 760
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 767
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 768
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    const-string v0, "CamcorderFragment"

    const-string v1, "Couldn\'t unlock camera"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :catch_1
    move-exception v0

    .line 762
    const-string v1, "CamcorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->releaseMediaRecorder()V

    .line 764
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 812
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 813
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 805
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 807
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 808
    return-void
.end method

.method private lockExposureIfCustomFocus(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHasPerformedFocus:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/android/video/util/CamcorderUtil;->supportsAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 580
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 581
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 583
    :cond_0
    return-void
.end method

.method private onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method private onStopVideoRecording()V
    .locals 0

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->stopVideoRecording()Z

    .line 863
    return-void
.end method

.method private openCamera()V
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraId()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    .line 964
    return-void
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 793
    return-void
.end method

.method private prepareShutter()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/VideoShutterButton;->setEnabled(Z)V

    .line 797
    return-void
.end method

.method private readVideoPreferences()V
    .locals 3

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getCameraId()I

    move-result v0

    .line 1114
    invoke-static {}, Lcom/instagram/android/video/util/CamcorderUtil;->EnforceLowQualityVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    const-string v1, "CamcorderFragment"

    const-string v2, "Profile selected: 480P."

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    .line 1122
    :goto_0
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getDesiredPreviewSize()V

    .line 1123
    return-void

    .line 1118
    :cond_0
    const-string v1, "CamcorderFragment"

    const-string v2, "Profile selected: QUALITY_HIGH."

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 772
    const-string v0, "CamcorderFragment"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/video/util/VideoFileUtil;->cleanupEmptyFileAsync(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 776
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 777
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 779
    :cond_0
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    .line 780
    return-void
.end method

.method private releasePreviewResources()V
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    check-cast v0, Lcom/instagram/android/video/camera/CameraScreenNail;

    .line 1373
    invoke-virtual {v0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1374
    invoke-virtual {v0}, Lcom/instagram/android/video/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1376
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 802
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 919
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->setAspectRatio(D)V

    .line 921
    return-void
.end method

.method private setCameraParameters()V
    .locals 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1001
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1002
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/android/video/util/CamcorderUtil;->setWhiteBalance(Landroid/hardware/Camera$Parameters;)V

    .line 1005
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/instagram/android/video/util/CamcorderUtil;->setFocusModeForCamera(Landroid/hardware/Camera$Parameters;)V

    .line 1007
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1009
    const-string v0, "CamcorderFragment"

    const-string v1, "Setting camera parameters"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1012
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1014
    iget v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->updateCameraScreenNailSize(II)V

    .line 1015
    return-void
.end method

.method private setClipRecorderState(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    .line 698
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener;

    .line 700
    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderState:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    invoke-interface {v0, v2}, Lcom/instagram/android/video/camera/ClipRecorderStateListener;->onClipRecorderStateChange(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V

    goto :goto_0

    .line 703
    :cond_0
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->RECORDING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    if-ne p1, v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 708
    :goto_1
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 930
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 941
    :goto_0
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 934
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 935
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    const-string v0, "CamcorderFragment"

    const-string v1, "Error setting display orientation"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMuteAll(Z)V
    .locals 4
    .parameter "mute"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 307
    const/4 v2, 0x1

    .line 308
    invoke-virtual {v0, v2, p1}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 309
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 311
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 312
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 314
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 315
    return-void

    .line 309
    :cond_1
    iget v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mOriginalRingerMode:I

    goto :goto_0
.end method

.method private setRecorderState(Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;J)V
    .locals 3
    .parameter "recorderState"
    .parameter "timeStamp"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoRecorderState:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    .line 717
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecorderStateListeners:Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoRecorderState:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;->onVideoRecorderStateChange(Ljava/lang/String;Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;J)V

    .line 721
    :cond_0
    return-void
.end method

.method private setupTapToFocus()V
    .locals 3

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHasSetUpFocus:Z

    if-eqz v0, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    if-nez v0, :cond_2

    .line 1258
    :cond_1
    const-string v0, "CamcorderFragment"

    const-string v1, "Couldn\'t set up tap to focus, missing view"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1261
    :cond_2
    invoke-static {}, Lcom/instagram/android/video/util/CamcorderUtil;->supportsAutoFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1262
    const-string v0, "CamcorderFragment"

    const-string v1, "Couldnt set up tap to focus, not supported"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1266
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    sget v1, Lcom/facebook/g;->focus_indicator:I

    invoke-virtual {v0, v1}, Lcom/instagram/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/FocusIndicatorView;

    .line 1268
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewOverlayView:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/video/fragment/CamcorderFragment$12;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment$12;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Lcom/instagram/camera/ui/FocusIndicatorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHasSetUpFocus:Z

    goto :goto_0
.end method

.method private showPopup(Landroid/widget/PopupWindow;III)V
    .locals 4
    .parameter "window"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1154
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->camcorder_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1156
    sget v1, Lcom/facebook/l;->Camcorder_Popup:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1157
    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1158
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment$11;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/widget/PopupWindow;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1165
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 967
    const-string v0, "CamcorderFragment"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mErrorCallback:Lcom/instagram/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 970
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 971
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->stopPreview()V

    .line 974
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setDisplayOrientation()V

    .line 976
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 977
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setCameraParameters()V

    .line 978
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->clearTapToFocusState()V

    .line 981
    :try_start_0
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SURFACE_TEXTURE:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 983
    :try_start_1
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    check-cast v0, Lcom/instagram/android/video/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/instagram/android/video/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 989
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 995
    iput-boolean v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewing:Z

    .line 996
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 990
    :catch_1
    move-exception v0

    .line 991
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->closeCamera()V

    .line 992
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewing:Z

    .line 1044
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 586
    const-string v0, "CamcorderFragment"

    const-string v2, "stopVideoRecording"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 592
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 593
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 594
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->lockExposureIfCustomFocus(Z)V

    .line 596
    const-string v0, "CamcorderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 606
    :goto_0
    iput-boolean v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorderRecording:Z

    .line 607
    sget-object v1, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->STOPPED:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setRecorderState(Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;J)V

    .line 619
    iget-boolean v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPaused:Z

    if-eqz v1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->closeCamera()V

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->keepScreenOnAwhile()V

    .line 627
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->releaseMediaRecorder()V

    move v1, v0

    .line 631
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPaused:Z

    if-nez v0, :cond_3

    .line 632
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_2

    .line 633
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->stopPreview()V

    .line 635
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    check-cast v0, Lcom/instagram/android/video/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFrameDrawnListener:Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/camera/CameraScreenNail;->setOneTimeOnFrameDrawnListener(Lcom/instagram/android/video/camera/CameraScreenNail$OnFrameDrawnListener;)V

    .line 637
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->startPreview()V

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 641
    :cond_3
    return v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    const-string v2, "CamcorderFragment"

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/android/video/util/VideoFileUtil;->deleteFileAsync(Ljava/lang/String;)V

    .line 603
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1018
    sget-boolean v1, Lcom/instagram/android/video/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_2

    .line 1022
    move v0, p2

    .line 1023
    .end local p1
    .local v0, width:I
    move p2, p1

    move p1, v0

    .line 1026
    .end local v0           #width:I
    .restart local p1
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    check-cast v1, Lcom/instagram/android/video/camera/CameraScreenNail;

    .line 1027
    invoke-virtual {v1}, Lcom/instagram/android/video/camera/CameraScreenNail;->getWidth()I

    move-result v2

    .line 1028
    invoke-virtual {v1}, Lcom/instagram/android/video/camera/CameraScreenNail;->getHeight()I

    move-result v3

    .line 1030
    if-ne v2, p1, :cond_3

    if-eq v3, p2, :cond_4

    .line 1031
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/instagram/android/video/camera/CameraScreenNail;->setSize(II)V

    .line 1032
    invoke-virtual {v1}, Lcom/instagram/android/video/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 1033
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->requestRender()V

    .line 1036
    :cond_4
    invoke-virtual {v1}, Lcom/instagram/android/video/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1037
    invoke-virtual {v1}, Lcom/instagram/android/video/camera/CameraScreenNail;->acquireSurfaceTexture()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->deleteLastClip()V

    .line 564
    return-void
.end method

.method public endClip()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->STOPPING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    invoke-direct {p0, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setClipRecorderState(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V

    .line 551
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->finishClip()V

    .line 552
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$7;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void
.end method

.method public getGLRoot()Lcom/instagram/android/video/gl/GLRoot;
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    return-object v0
.end method

.method public getVideoRecorderState()Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoRecorderState:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    return-object v0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1224
    return-void
.end method

.method public onClipAdded(Lcom/instagram/android/video/model/Clip;)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->configureSwitchCameraButton()V

    .line 244
    return-void
.end method

.method public onClipChanged(Lcom/instagram/android/video/model/Clip;Lcom/instagram/android/video/model/Clip$ClipState;)V
    .locals 0
    .parameter "clip"
    .parameter "newState"

    .prologue
    .line 263
    return-void
.end method

.method public onClipDurationChanged(Lcom/instagram/android/video/model/Clip;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/instagram/android/video/model/Clip;->getState()Lcom/instagram/android/video/model/Clip$ClipState;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->RECORDING:Lcom/instagram/android/video/model/Clip$ClipState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->endClip()V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->configureBlinker()V

    .line 271
    return-void
.end method

.method public onClipRemoved(Lcom/instagram/android/video/model/Clip;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->configureSwitchCameraButton()V

    .line 249
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->configureBlinker()V

    .line 250
    invoke-virtual {p1}, Lcom/instagram/android/video/model/Clip;->getState()Lcom/instagram/android/video/model/Clip$ClipState;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/model/Clip$ClipState;->INVALID:Lcom/instagram/android/video/model/Clip$ClipState;

    if-ne v0, v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->showTapToRecordPopup()V

    .line 253
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 300
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecorderStateListeners:Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;->addListener(Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;)V

    .line 301
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/ClipStackManager;->addListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setLastMediaMode(I)V

    .line 303
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setRetainInstance(Z)V

    .line 329
    sget v0, Lcom/facebook/h;->fragment_camcorder:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 331
    sget v0, Lcom/facebook/g;->camera_preview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/GLRootView;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    .line 332
    sget v0, Lcom/facebook/g;->black_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    sget v0, Lcom/facebook/g;->frame:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    .line 334
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v0, v2, v3}, Lcom/instagram/android/video/ui/CamcorderPreviewLayout;->setAspectRatio(D)V

    .line 336
    sget v0, Lcom/facebook/g;->preview_overlay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewOverlayView:Landroid/view/View;

    .line 338
    sget v0, Lcom/facebook/g;->fragment_camera_shutter_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/VideoShutterButton;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    .line 340
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    new-instance v2, Lcom/instagram/android/video/camera/VideoButtonListener;

    invoke-direct {v2, p0, p0}, Lcom/instagram/android/video/camera/VideoButtonListener;-><init>(Lcom/instagram/android/video/camera/MultiClipVideoRecorder;Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/ui/VideoShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 341
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/ui/VideoShutterButton;->setClipStackManager(Lcom/instagram/android/video/ClipStackManager;)V

    .line 343
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    if-nez v0, :cond_0

    .line 344
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "CamcorderFragment"

    const-string v2, "Creating camera screen nail."

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Lcom/instagram/android/video/camera/CameraScreenNail;

    invoke-direct {v0, p0}, Lcom/instagram/android/video/camera/CameraScreenNail;-><init>(Lcom/instagram/android/video/camera/CameraScreenNail$Listener;)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    .line 347
    new-instance v0, Lcom/instagram/android/video/ui/PhotoView;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/android/video/ui/PhotoView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPhotoView:Lcom/instagram/android/video/ui/PhotoView;

    .line 348
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPhotoView:Lcom/instagram/android/video/ui/PhotoView;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/ui/PhotoView;->setListener(Lcom/instagram/android/video/ui/PhotoView$Listener;)V

    .line 349
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPhotoView:Lcom/instagram/android/video/ui/PhotoView;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/ui/PhotoView;->setScreenNail(Lcom/instagram/android/video/ui/ScreenNail;)V

    .line 350
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPhotoView:Lcom/instagram/android/video/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/gl/GLRootView;->setContentPane(Lcom/instagram/android/video/gl/GLView;)V

    .line 351
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    new-instance v2, Lcom/instagram/android/video/fragment/CamcorderFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$2;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/video/gl/GLRootView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 372
    :cond_0
    sget v0, Lcom/facebook/g;->focus_indicator_rotate_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    .line 373
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setupTapToFocus()V

    .line 375
    const-string v0, "CamcorderFragment"

    const-string v2, "onCreateView"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRecorderStateListeners:Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/camera/VideoRecorderDelegateListener;->removeListener(Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener;)V

    .line 322
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/ClipStackManager;->removeListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 323
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 495
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 497
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    .line 499
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    .line 500
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackView:Lcom/instagram/android/video/ui/ClipStackView;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ClipStackManager;->removeListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 501
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ClipStackManager;->removeListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 502
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ClipStackManager;->removeListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 503
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackView:Lcom/instagram/android/video/ui/ClipStackView;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/ClipStackView;->destroyStackView()V

    .line 505
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    .line 506
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackView:Lcom/instagram/android/video/ui/ClipStackView;

    .line 507
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    .line 508
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mAcceptButton:Lcom/instagram/android/video/ui/VideoAcceptButton;

    .line 509
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCancelButton:Lcom/instagram/android/video/ui/VideoCancelButton;

    .line 510
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mSwitchCameraButton:Lcom/instagram/android/video/ui/SwitchCameraButton;

    .line 511
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 513
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 515
    :cond_0
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewFrameLayout:Lcom/instagram/android/video/ui/CamcorderPreviewLayout;

    .line 516
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    .line 517
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mFocusIndicator:Lcom/instagram/camera/ui/RotateLayout;

    .line 518
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewOverlayView:Landroid/view/View;

    .line 519
    iput-boolean v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHasPerformedFocus:Z

    .line 520
    iput-boolean v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHasSetUpFocus:Z

    .line 521
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 522
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    .line 523
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    .line 524
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

    .line 525
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerView:Landroid/widget/ImageView;

    .line 526
    iput-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPhotoView:Lcom/instagram/android/video/ui/PhotoView;

    .line 527
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 234
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 1228
    sget-boolean v0, Lcom/instagram/android/video/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCameraScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    check-cast v0, Lcom/instagram/android/video/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/instagram/android/video/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 1233
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 239
    return-void
.end method

.method public onMaxVideoDurationReached()V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->showTapToContinuePopup()V

    .line 293
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "CamcorderFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->onPauseBeforeSuper()V

    .line 541
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 542
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->onPauseAfterSuper()V

    .line 543
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPaused:Z

    .line 818
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/CamcorderPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/CamcorderPopup;->dismiss()V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/CamcorderPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/CamcorderPopup;->dismiss()V

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/CamcorderPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/CamcorderPopup;->dismiss()V

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 832
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 834
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->onStopVideoRecording()V

    .line 840
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView;->onPause()V

    .line 842
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->releasePreviewResources()V

    .line 844
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->black_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 856
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->resetScreenOn()V

    .line 858
    invoke-direct {p0, v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setMuteAll(Z)V

    .line 859
    return-void

    .line 836
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->closeCamera()V

    goto :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1219
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->onResumeBeforeSuper()V

    .line 532
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 533
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->onResumeAfterSuper()V

    .line 534
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    .line 878
    new-instance v0, Lcom/instagram/android/video/fragment/CamcorderFragment$9;

    invoke-direct {v0, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$9;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    .line 885
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 886
    new-instance v2, Lcom/instagram/android/video/fragment/CamcorderFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment$10;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 893
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->configureSwitchCameraButton()V

    .line 895
    iget-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->openCamera()V

    .line 897
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->readVideoPreferences()V

    .line 898
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->resizeForPreviewAspectRatio()V

    .line 899
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->startPreview()V

    .line 905
    :goto_0
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->keepScreenOnAwhile()V

    .line 915
    const-string v0, "CamcorderFragment"

    const-string v1, "onResumeAfterSuper"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void

    .line 901
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mOnResumeTime:J

    .line 902
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 868
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mOriginalRingerMode:I

    .line 869
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setMuteAll(Z)V

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPaused:Z

    .line 873
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mGLRootView:Lcom/instagram/android/video/gl/GLRootView;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLRootView;->onResume()V

    .line 874
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 381
    const-string v0, "CamcorderFragment"

    const-string v1, "OnViewCreated"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget v0, Lcom/facebook/g;->clip_stack_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/ClipStackView;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackView:Lcom/instagram/android/video/ui/ClipStackView;

    .line 383
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackView:Lcom/instagram/android/video/ui/ClipStackView;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v1}, Lcom/instagram/android/video/ClipStackManager;->getClipStack()Lcom/instagram/android/video/model/ClipStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/ClipStackView;->setClipStack(Lcom/instagram/android/video/model/ClipStack;)V

    .line 384
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackView:Lcom/instagram/android/video/ui/ClipStackView;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ClipStackManager;->addListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 385
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ClipStackManager;->addListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    .line 388
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mVideoShutterButton:Lcom/instagram/android/video/ui/VideoShutterButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    sget v0, Lcom/facebook/g;->button_remove:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/VideoDeleteButton;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    .line 391
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/video/fragment/CamcorderFragment$3;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/VideoDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/VideoDeleteButton;->setClipStackManager(Lcom/instagram/android/video/ClipStackManager;)V

    .line 415
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/ui/VideoDeleteButton;->setCamcorderFragment(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    .line 416
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mRemoveButton:Lcom/instagram/android/video/ui/VideoDeleteButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ClipStackManager;->addListener(Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;)V

    .line 419
    sget v0, Lcom/facebook/g;->action_bar_camera_controls_cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/VideoCancelButton;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCancelButton:Lcom/instagram/android/video/ui/VideoCancelButton;

    .line 421
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCancelButton:Lcom/instagram/android/video/ui/VideoCancelButton;

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$4;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/VideoCancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCancelButton:Lcom/instagram/android/video/ui/VideoCancelButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    sget v0, Lcom/facebook/g;->button_accept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/VideoAcceptButton;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mAcceptButton:Lcom/instagram/android/video/ui/VideoAcceptButton;

    .line 454
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mClipRecorderStateListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mAcceptButton:Lcom/instagram/android/video/ui/VideoAcceptButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mAcceptButton:Lcom/instagram/android/video/ui/VideoAcceptButton;

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$5;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/VideoAcceptButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    sget v0, Lcom/facebook/g;->action_bar_camera_controls_switch_camera_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/SwitchCameraButton;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mSwitchCameraButton:Lcom/instagram/android/video/ui/SwitchCameraButton;

    .line 470
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 471
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mSwitchCameraButton:Lcom/instagram/android/video/ui/SwitchCameraButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/SwitchCameraButton;->setVisibility(I)V

    .line 491
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mSwitchCameraButton:Lcom/instagram/android/video/ui/SwitchCameraButton;

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$6;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/SwitchCameraButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    sget v0, Lcom/facebook/g;->minimum_clip_length_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 483
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 484
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getMinVideoIndicatorXPos()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 486
    sget v0, Lcom/facebook/g;->blinker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerView:Landroid/widget/ImageView;

    .line 487
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/b;->camcorder_blinker:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerAnimation:Landroid/view/animation/Animation;

    .line 489
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->configureBlinker()V

    .line 490
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mBlinkerAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getGLRoot()Lcom/instagram/android/video/gl/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLRoot;->requestRenderForced()V

    .line 1214
    return-void
.end method

.method public showMinVideoLengthPopup()V
    .locals 5

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    if-nez v0, :cond_0

    .line 1199
    new-instance v0, Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/f;->nux_bottom_left:I

    sget v3, Lcom/facebook/k;->video_minimum_warning:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/video/ui/CamcorderPopup;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    .line 1204
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-static {v1, v2}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    .line 1205
    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMinVideoLengthPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    const/16 v3, 0x53

    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getMinVideoIndicatorXPos()I

    move-result v4

    sub-int v0, v4, v0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/instagram/android/video/fragment/CamcorderFragment;->showPopup(Landroid/widget/PopupWindow;III)V

    .line 1209
    return-void
.end method

.method public showTapToContinuePopup()V
    .locals 4

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

    if-nez v0, :cond_0

    .line 1169
    new-instance v0, Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/f;->nux_top_right:I

    sget v3, Lcom/facebook/k;->video_tap_to_continue:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/video/ui/CamcorderPopup;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

    .line 1173
    :cond_0
    const/16 v0, 0x35

    .line 1174
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    .line 1175
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    .line 1176
    iget-object v3, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToContinuePopupWindow:Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->showPopup(Landroid/widget/PopupWindow;III)V

    .line 1177
    return-void
.end method

.method public showTapToRecordPopup()V
    .locals 4

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Lcom/instagram/android/video/ui/CamcorderPopup;

    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/f;->nux_bottom_center:I

    sget v3, Lcom/facebook/k;->video_press_and_hold:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/video/ui/CamcorderPopup;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    .line 1193
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    .line 1194
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mTapToRecordPopup:Lcom/instagram/android/video/ui/CamcorderPopup;

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->showPopup(Landroid/widget/PopupWindow;III)V

    .line 1195
    return-void
.end method

.method public startClip()V
    .locals 2

    .prologue
    .line 678
    sget-object v0, Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;->PREPARING:Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;

    invoke-direct {p0, v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setClipRecorderState(Lcom/instagram/android/video/camera/ClipRecorderStateListener$ClipRecorderState;)V

    .line 679
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/video/fragment/CamcorderFragment$8;

    invoke-direct {v1, p0}, Lcom/instagram/android/video/fragment/CamcorderFragment$8;-><init>(Lcom/instagram/android/video/fragment/CamcorderFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    return-void
.end method

.method public startRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 645
    const-string v0, "CamcorderFragment"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0, v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->lockExposureIfCustomFocus(Z)V

    .line 648
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->initializeRecorder()V

    .line 649
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 650
    const-string v0, "CamcorderFragment"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->pauseAudioPlayback()V

    .line 655
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->prepareShutter()V

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mMediaRecorderRecording:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    sget-object v0, Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;->RECORDING:Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/video/fragment/CamcorderFragment;->setRecorderState(Lcom/instagram/android/video/camera/VideoRecorderStateChangeListener$VideoState;J)V

    .line 674
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->keepScreenOn()V

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    const-string v1, "CamcorderFragment"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->releaseMediaRecorder()V

    .line 664
    :try_start_1
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 665
    :catch_1
    move-exception v0

    .line 666
    const-string v1, "CamcorderFragment"

    const-string v2, "Could not reconnect camera."

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 568
    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/instagram/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v1, v0}, Lcom/instagram/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 570
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->closeCamera()V

    .line 571
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->openCamera()V

    .line 572
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->readVideoPreferences()V

    .line 573
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->startPreview()V

    .line 574
    invoke-direct {p0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->resizeForPreviewAspectRatio()V

    .line 575
    return-void
.end method
