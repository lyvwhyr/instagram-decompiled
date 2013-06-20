.class Lcom/instagram/android/creation/fragment/CameraFragment$1;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$1;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/instagram/camera/Storage;->ensureOSXCompatible()V

    .line 297
    const/4 v0, 0x0

    return v0
.end method
