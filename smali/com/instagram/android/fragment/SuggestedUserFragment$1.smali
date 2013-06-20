.class Lcom/instagram/android/fragment/SuggestedUserFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SuggestedUserFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$1;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

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

    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$1;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mRefreshStatusHandler:Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$200(Lcom/instagram/android/fragment/SuggestedUserFragment;)Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;->removeMessages(I)V

    .line 61
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$1;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mRefreshStatusHandler:Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$200(Lcom/instagram/android/fragment/SuggestedUserFragment;)Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    return-void
.end method
