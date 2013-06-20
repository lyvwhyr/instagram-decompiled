.class Lcom/instagram/android/fragment/UserDetailFragment$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "UserDetailFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserDetailFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment$Receiver;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/fragment/UserDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment$Receiver;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.PendingMediaService.BROADCAST_INTENT_NEW_MEDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$Receiver;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/fragment/UserDetailFragment;->mNeedsReload:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserDetailFragment;->access$002(Lcom/instagram/android/fragment/UserDetailFragment;Z)Z

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$Receiver;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->onUserUpdated()V

    goto :goto_0
.end method
