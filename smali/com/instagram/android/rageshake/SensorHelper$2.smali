.class Lcom/instagram/android/rageshake/SensorHelper$2;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/rageshake/SensorHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/rageshake/SensorHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/android/rageshake/SensorHelper$2;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$2;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #setter for: Lcom/instagram/android/rageshake/SensorHelper;->mDialogPresent:Z
    invoke-static {v0, v4}, Lcom/instagram/android/rageshake/SensorHelper;->access$002(Lcom/instagram/android/rageshake/SensorHelper;Z)Z

    .line 62
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$2;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #getter for: Lcom/instagram/android/rageshake/SensorHelper;->mSensorEventListener:Lcom/facebook/e/a;
    invoke-static {v0}, Lcom/instagram/android/rageshake/SensorHelper;->access$200(Lcom/instagram/android/rageshake/SensorHelper;)Lcom/facebook/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/e/a;->cooldown()V

    .line 63
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$2;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #getter for: Lcom/instagram/android/rageshake/SensorHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/instagram/android/rageshake/SensorHelper;->access$300(Lcom/instagram/android/rageshake/SensorHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/rageshake/RageShakeUtil;->takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/instagram/android/rageshake/SensorHelper$2;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    new-instance v2, Lcom/instagram/android/rageshake/SaveScreenShotTask;

    iget-object v3, p0, Lcom/instagram/android/rageshake/SensorHelper$2;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #getter for: Lcom/instagram/android/rageshake/SensorHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/instagram/android/rageshake/SensorHelper;->access$300(Lcom/instagram/android/rageshake/SensorHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/instagram/android/rageshake/SaveScreenShotTask;-><init>(Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    #setter for: Lcom/instagram/android/rageshake/SensorHelper;->mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;
    invoke-static {v1, v2}, Lcom/instagram/android/rageshake/SensorHelper;->access$402(Lcom/instagram/android/rageshake/SensorHelper;Lcom/instagram/android/rageshake/SaveScreenShotTask;)Lcom/instagram/android/rageshake/SaveScreenShotTask;

    .line 67
    iget-object v0, p0, Lcom/instagram/android/rageshake/SensorHelper$2;->this$0:Lcom/instagram/android/rageshake/SensorHelper;

    #getter for: Lcom/instagram/android/rageshake/SensorHelper;->mSaveScreenShotTask:Lcom/instagram/android/rageshake/SaveScreenShotTask;
    invoke-static {v0}, Lcom/instagram/android/rageshake/SensorHelper;->access$400(Lcom/instagram/android/rageshake/SensorHelper;)Lcom/instagram/android/rageshake/SaveScreenShotTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/rageshake/SaveScreenShotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget v0, Lcom/facebook/k;->rageshake_error_facebook:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    goto :goto_0
.end method
