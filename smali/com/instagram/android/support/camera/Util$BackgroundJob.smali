.class Lcom/instagram/android/support/camera/Util$BackgroundJob;
.super Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mActivity:Lcom/instagram/android/support/camera/MonitoredFragment;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/instagram/android/support/camera/MonitoredFragment;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "job"
    .parameter "dialog"
    .parameter "handler"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleAdapter;-><init>()V

    .line 372
    new-instance v0, Lcom/instagram/android/support/camera/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/support/camera/Util$BackgroundJob$1;-><init>(Lcom/instagram/android/support/camera/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 384
    iput-object p1, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mActivity:Lcom/instagram/android/support/camera/MonitoredFragment;

    .line 385
    iput-object p3, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 386
    iput-object p2, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 387
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mActivity:Lcom/instagram/android/support/camera/MonitoredFragment;

    invoke-virtual {v0, p0}, Lcom/instagram/android/support/camera/MonitoredFragment;->addLifeCycleListener(Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;)V

    .line 388
    iput-object p4, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/support/camera/Util$BackgroundJob;)Lcom/instagram/android/support/camera/MonitoredFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mActivity:Lcom/instagram/android/support/camera/MonitoredFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/support/camera/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/instagram/android/support/camera/MonitoredFragment;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 405
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method public onActivityStarted(Lcom/instagram/android/support/camera/MonitoredFragment;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 416
    return-void
.end method

.method public onActivityStopped(Lcom/instagram/android/support/camera/MonitoredFragment;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 411
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void

    .line 396
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/instagram/android/support/camera/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
