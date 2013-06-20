.class Lcom/instagram/android/adapter/UserListAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "UserListAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/adapter/UserListAdapter;


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/UserListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/adapter/UserListAdapter$1;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter$1;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    #getter for: Lcom/instagram/android/adapter/UserListAdapter;->mRefreshStatusHandler:Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;
    invoke-static {v0}, Lcom/instagram/android/adapter/UserListAdapter;->access$100(Lcom/instagram/android/adapter/UserListAdapter;)Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;->removeMessages(I)V

    .line 68
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter$1;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    #getter for: Lcom/instagram/android/adapter/UserListAdapter;->mRefreshStatusHandler:Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;
    invoke-static {v0}, Lcom/instagram/android/adapter/UserListAdapter;->access$100(Lcom/instagram/android/adapter/UserListAdapter;)Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    return-void
.end method
