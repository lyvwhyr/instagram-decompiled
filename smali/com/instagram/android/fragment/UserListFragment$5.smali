.class Lcom/instagram/android/fragment/UserListFragment$5;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$5;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$5;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1400(Lcom/instagram/android/fragment/UserListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$5;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$5;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mUsers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/instagram/android/fragment/UserListFragment;->access$1400(Lcom/instagram/android/fragment/UserListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/UserListAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 283
    :cond_0
    return-void
.end method
