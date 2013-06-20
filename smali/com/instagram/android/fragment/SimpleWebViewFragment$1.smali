.class Lcom/instagram/android/fragment/SimpleWebViewFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SimpleWebViewFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SimpleWebViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$1;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$1;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    #calls: Lcom/instagram/android/fragment/SimpleWebViewFragment;->isRefreshEnabled()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->access$000(Lcom/instagram/android/fragment/SimpleWebViewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$1;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->onRefresh()V

    .line 48
    :cond_0
    return-void
.end method
