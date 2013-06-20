.class Lcom/instagram/android/fragment/SearchUsersFragment$2;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "SearchUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SearchUsersFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SearchUsersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/android/fragment/SearchUsersFragment$2;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment$2;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/SearchUsersFragment;->mIsLoading:Z

    .line 125
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 126
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment$2;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    #calls: Lcom/instagram/android/fragment/SearchUsersFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchUsersFragment;->access$100(Lcom/instagram/android/fragment/SearchUsersFragment;)V

    .line 127
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment$2;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/SearchUsersFragment;->mIsLoading:Z

    .line 118
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 119
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment$2;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    #calls: Lcom/instagram/android/fragment/SearchUsersFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchUsersFragment;->access$100(Lcom/instagram/android/fragment/SearchUsersFragment;)V

    .line 120
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/SearchUsersFragment$2;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, userList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment$2;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    iget-object v0, v0, Lcom/instagram/android/fragment/SearchUsersFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v0, p1}, Lcom/instagram/android/adapter/UserListAdapter;->appendItemsWithFilteringOfPreviousItems(Ljava/util/ArrayList;)V

    .line 112
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment$2;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/SearchUsersFragment;->setSelection(I)V

    .line 113
    return-void
.end method
