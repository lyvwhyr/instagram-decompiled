.class Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;
.super Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks",
        "<",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserListFragment;Lcom/instagram/android/fragment/UserListFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/UserListFragment;Lcom/instagram/android/fragment/UserListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    return-void
.end method


# virtual methods
.method protected onSuccess(Ljava/lang/Iterable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, responseObject:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/instagram/android/model/User;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 426
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->optimisticallyFollowOrRequestFollow()V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1800(Lcom/instagram/android/fragment/UserListFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks$1;-><init>(Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    :cond_1
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 420
    check-cast p1, Ljava/lang/Iterable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;->onSuccess(Ljava/lang/Iterable;)V

    return-void
.end method
