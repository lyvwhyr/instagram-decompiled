.class Lcom/instagram/android/creation/fragment/CameraFragment$6;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$6;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$6;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->initializeCapabilities()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1500(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    .line 464
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$6;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->startPreview()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1600(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    .line 465
    return-void
.end method
