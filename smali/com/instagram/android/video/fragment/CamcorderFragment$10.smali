.class Lcom/instagram/android/video/fragment/CamcorderFragment$10;
.super Ljava/util/TimerTask;
.source "CamcorderFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

.field final synthetic val$fadeIn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$10;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iput-object p2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$10;->val$fadeIn:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$10;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    invoke-virtual {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$10;->val$fadeIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 890
    return-void
.end method
