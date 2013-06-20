.class Lcom/instagram/android/fragment/SuggestedUserFragment$2;
.super Landroid/database/DataSetObserver;
.source "SuggestedUserFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$2;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$2;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$2;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$300(Lcom/instagram/android/fragment/SuggestedUserFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$2;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getAdapter()Lcom/instagram/android/adapter/SuggestedUserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/adapter/SuggestedUserAdapter;->getSuggestedUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$2;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$2;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$300(Lcom/instagram/android/fragment/SuggestedUserFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    check-cast v0, Lcom/instagram/android/model/SuggestedUser;

    invoke-virtual {v0}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/model/User;->getUserFollowUpdateBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
