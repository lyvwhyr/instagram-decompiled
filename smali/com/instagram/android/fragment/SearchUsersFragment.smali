.class public Lcom/instagram/android/fragment/SearchUsersFragment;
.super Lcom/instagram/android/fragment/SearchFragment;
.source "SearchUsersFragment.java"


# static fields
.field public static final BROADCAST_FOLLOW_STATUS_CHANGED:Ljava/lang/String; = "com.instagram.android.service.BROADCAST_FOLLOW_STATUS_CHANGED"

.field public static final BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID:Ljava/lang/String; = "com.instagram.android.service.BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID"

.field public static final LOG_TAG:Ljava/lang/String; = "SearchUsersFragment"


# instance fields
.field protected mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

.field private mFollowStatusChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private final mUserListRequestCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;
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
.end field

.field private mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/instagram/android/fragment/SearchUsersFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SearchUsersFragment$1;-><init>(Lcom/instagram/android/fragment/SearchUsersFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mFollowStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/instagram/android/fragment/SearchUsersFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SearchUsersFragment$2;-><init>(Lcom/instagram/android/fragment/SearchUsersFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListRequestCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/SearchUsersFragment;)Lcom/instagram/api/loaderrequest/UserSearchRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/SearchUsersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->updateProgressBarState()V

    return-void
.end method

.method private updateProgressBarState()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/instagram/android/adapter/UserListAdapter;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/instagram/android/adapter/UserListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZ)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    .line 60
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v1}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    return-object v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method protected getHintResource()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/facebook/k;->search_for_a_user:I

    return v0
.end method

.method public getMode()Lcom/instagram/android/fragment/SearchFragment$SearchMode;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_USERS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    return-object v0
.end method

.method protected handleItemClick(Landroid/widget/AdapterView;I)V
    .locals 3
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 101
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/UserPreferences;->saveRecentUser(Lcom/instagram/android/model/User;)V

    .line 103
    new-instance v1, Lcom/instagram/util/FragmentNavigator;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/util/FragmentNavigator;->toProfile(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/SearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lcom/instagram/api/loaderrequest/UserSearchRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListRequestCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/UserSearchRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    .line 46
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mFollowStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/instagram/android/fragment/SearchFragment;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserSearchRequest;->getSearchHistory()Lcom/instagram/util/SearchSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/SearchSession;->isFailedSearchSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserSearchRequest;->getSearchHistory()Lcom/instagram/util/SearchSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/SearchSession;->reportUserSearchFailure()V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mFollowStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 142
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->onDestroy()V

    .line 145
    :cond_1
    return-void
.end method

.method protected performSearchRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/UserSearchRequest;->perform(Ljava/lang/String;)V

    .line 73
    return-void
.end method
