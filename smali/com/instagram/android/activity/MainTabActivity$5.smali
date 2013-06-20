.class Lcom/instagram/android/activity/MainTabActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "MainTabActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$5;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 603
    const-string v0, "com.instagram.android.receiver.C2DMReceiver.NOTIFICATION_RECEIVED_BROADCAST_PROXY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v0, "MainTabActivity"

    const-string v1, "Received NOTIFICATION_RECEIVED_BROADCAST, sending NOTIFICATION_RECEIVED_BROADCAST_PROXY"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const-string v0, "MainTabActivity"

    const-string v1, "News Fragment did not receive NOTIFICATION_RECEIVED_BROADCAST_PROXY"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    const-string v0, "MainTabActivity"

    const-string v1, "NOTIFICATION_RECEIVED_BROADCAST_PROXY received by somebody"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
