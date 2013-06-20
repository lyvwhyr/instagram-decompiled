.class Lcom/instagram/android/support/camera/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/support/camera/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/Util$BackgroundJob;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob$1;->this$0:Lcom/instagram/android/support/camera/Util$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob$1;->this$0:Lcom/instagram/android/support/camera/Util$BackgroundJob;

    #getter for: Lcom/instagram/android/support/camera/Util$BackgroundJob;->mActivity:Lcom/instagram/android/support/camera/MonitoredFragment;
    invoke-static {v0}, Lcom/instagram/android/support/camera/Util$BackgroundJob;->access$000(Lcom/instagram/android/support/camera/Util$BackgroundJob;)Lcom/instagram/android/support/camera/MonitoredFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob$1;->this$0:Lcom/instagram/android/support/camera/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/MonitoredFragment;->removeLifeCycleListener(Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;)V

    .line 376
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob$1;->this$0:Lcom/instagram/android/support/camera/Util$BackgroundJob;

    #getter for: Lcom/instagram/android/support/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/support/camera/Util$BackgroundJob;->access$100(Lcom/instagram/android/support/camera/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob$1;->this$0:Lcom/instagram/android/support/camera/Util$BackgroundJob;

    #getter for: Lcom/instagram/android/support/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/support/camera/Util$BackgroundJob;->access$100(Lcom/instagram/android/support/camera/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 379
    :cond_0
    return-void
.end method
