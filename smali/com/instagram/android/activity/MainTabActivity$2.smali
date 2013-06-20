.class Lcom/instagram/android/activity/MainTabActivity$2;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getHasAdvancedCameraEnabled()Z

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/camera/CameraDetectionUtil;->hasAnyCamera(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->openBuiltinGallery(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$900(Lcom/instagram/android/activity/MainTabActivity;Landroid/app/Activity;)V

    .line 492
    :goto_0
    return-void

    .line 484
    :cond_0
    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->showBuiltInCaptureOptionDialog()V
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$1000(Lcom/instagram/android/activity/MainTabActivity;)V

    goto :goto_0

    .line 487
    :cond_2
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenInstagramCamera()V

    .line 488
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    const-class v2, Lcom/instagram/android/creation/activity/MediaCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 490
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$2;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/activity/MainTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
