.class Lcom/instagram/android/fragment/SuggestedUserFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "SuggestedUserFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$5;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "com.instagram.android.service.action_bar_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$5;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->scrollToTop()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string v1, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$5;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$500(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$5;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mInitialNetworkRequestFinished:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$400(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$5;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    const/4 v1, 0x1

    #calls: Lcom/instagram/android/fragment/SuggestedUserFragment;->fetchData(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$800(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)V

    goto :goto_0
.end method
