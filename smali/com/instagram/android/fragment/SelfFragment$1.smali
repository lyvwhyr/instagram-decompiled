.class Lcom/instagram/android/fragment/SelfFragment$1;
.super Ljava/lang/Object;
.source "SelfFragment.java"

# interfaces
.implements Lcom/facebook/content/b;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SelfFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SelfFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/fragment/SelfFragment$1;->this$0:Lcom/instagram/android/fragment/SelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment$1;->this$0:Lcom/instagram/android/fragment/SelfFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SelfFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.SelfFragment.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->setPhotosOfYouCount(I)V

    .line 44
    return-void
.end method
