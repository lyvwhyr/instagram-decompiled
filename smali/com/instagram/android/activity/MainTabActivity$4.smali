.class Lcom/instagram/android/activity/MainTabActivity$4;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;

.field final synthetic val$options:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$4;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iput-object p2, p0, Lcom/instagram/android/activity/MainTabActivity$4;->val$options:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private optionIsCamera(I)Z
    .locals 3
    .parameter "which"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$4;->val$options:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$4;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    sget v2, Lcom/facebook/k;->camera:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$4;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    .line 530
    invoke-direct {p0, p2}, Lcom/instagram/android/activity/MainTabActivity$4;->optionIsCamera(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenBuiltinCamera()V

    .line 532
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$4;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {}, Lcom/instagram/util/BuiltInCameraUtil;->getPhotoOutputMediaFile()Ljava/io/File;

    move-result-object v2

    #setter for: Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->access$1302(Lcom/instagram/android/activity/MainTabActivity;Ljava/io/File;)Ljava/io/File;

    .line 533
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity$4;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;
    invoke-static {v2}, Lcom/instagram/android/activity/MainTabActivity;->access$1300(Lcom/instagram/android/activity/MainTabActivity;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/util/BuiltInCameraUtil;->show(Landroid/app/Activity;ILjava/io/File;)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$4;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->openBuiltinGallery(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/instagram/android/activity/MainTabActivity;->access$900(Lcom/instagram/android/activity/MainTabActivity;Landroid/app/Activity;)V

    goto :goto_0
.end method
