.class final Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;Lcom/instagram/android/creation/fragment/CameraFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;-><init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$ShutterCallback;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #getter for: Lcom/instagram/android/creation/fragment/CameraFragment;->mFocusManager:Lcom/instagram/camera/FocusManager;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$900(Lcom/instagram/android/creation/fragment/CameraFragment;)Lcom/instagram/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/camera/FocusManager;->onShutter()V

    .line 326
    return-void
.end method
