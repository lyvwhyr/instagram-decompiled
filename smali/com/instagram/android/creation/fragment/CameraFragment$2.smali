.class Lcom/instagram/android/creation/fragment/CameraFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "CameraFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/CameraFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/CameraFragment$2;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 332
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v1, "CameraFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$2;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->checkStorage()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1000(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/CameraFragment$2;->this$0:Lcom/instagram/android/creation/fragment/CameraFragment;

    #calls: Lcom/instagram/android/creation/fragment/CameraFragment;->checkStorage()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/CameraFragment;->access$1000(Lcom/instagram/android/creation/fragment/CameraFragment;)V

    goto :goto_0
.end method
