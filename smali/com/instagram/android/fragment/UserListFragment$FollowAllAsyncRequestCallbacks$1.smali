.class Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks$1;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->gotoNextStepInSignupFlow()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1100(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 434
    return-void
.end method
