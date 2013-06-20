.class Lcom/instagram/android/fragment/MainFeedFragment$2;
.super Landroid/os/Handler;
.source "MainFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/MainFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/MainFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/instagram/android/fragment/MainFeedFragment$2;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pending_media_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$2;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    iget-object v2, p0, Lcom/instagram/android/fragment/MainFeedFragment$2;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    #getter for: Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;
    invoke-static {v2}, Lcom/instagram/android/fragment/MainFeedFragment;->access$100(Lcom/instagram/android/fragment/MainFeedFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    #calls: Lcom/instagram/android/fragment/MainFeedFragment;->placeNewMedia(Lcom/instagram/android/model/PendingMedia;)V
    invoke-static {v1, v0}, Lcom/instagram/android/fragment/MainFeedFragment;->access$200(Lcom/instagram/android/fragment/MainFeedFragment;Lcom/instagram/android/model/PendingMedia;)V

    .line 162
    new-instance v0, Lcom/instagram/appirater/Appirater;

    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment$2;->this$0:Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/MainFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/appirater/Appirater;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/appirater/Appirater;->userDidSignificantEvent(Z)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
