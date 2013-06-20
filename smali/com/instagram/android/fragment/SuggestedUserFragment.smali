.class public Lcom/instagram/android/fragment/SuggestedUserFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "SuggestedUserFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# instance fields
.field private mAdapter:Lcom/instagram/android/adapter/SuggestedUserAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInitialNetworkRequestFinished:Z

.field private mIsLoading:Z

.field private mRefreshStatusHandler:Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment;Lcom/instagram/android/fragment/SuggestedUserFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mRefreshStatusHandler:Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;

    .line 56
    new-instance v0, Lcom/instagram/android/fragment/SuggestedUserFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SuggestedUserFragment$1;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance v0, Lcom/instagram/android/fragment/SuggestedUserFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SuggestedUserFragment$5;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/SuggestedUserFragment;)Lcom/instagram/android/adapter/SuggestedUserAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mAdapter:Lcom/instagram/android/adapter/SuggestedUserAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/SuggestedUserFragment;)Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mRefreshStatusHandler:Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/SuggestedUserFragment;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mInitialNetworkRequestFinished:Z

    return v0
.end method

.method static synthetic access$402(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mInitialNetworkRequestFinished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$502(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/SuggestedUserFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->fetchData(Z)V

    return-void
.end method

.method private fetchData(Z)V
    .locals 6
    .parameter "isRefresh"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mInitialNetworkRequestFinished:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/instagram/api/loaderrequest/SuggestedUserListRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z

    move-result v4

    new-instance v5, Lcom/instagram/android/fragment/SuggestedUserFragment$3;

    invoke-direct {v5, p0, p1}, Lcom/instagram/android/fragment/SuggestedUserFragment$3;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment;Z)V

    invoke-direct/range {v0 .. v5}, Lcom/instagram/api/loaderrequest/SuggestedUserListRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;IZLcom/instagram/api/AbstractStreamingApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/SuggestedUserListRequest;->perform()V

    .line 166
    :cond_1
    return-void
.end method

.method private isSignUpFlow()Z
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fetchFollowStatusInBulk(Ljava/lang/Iterable;)V
    .locals 5
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
    .line 278
    .local p1, users:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/instagram/android/model/User;>;"
    new-instance v0, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 279
    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;->performForUsers(Ljava/lang/Iterable;)V

    .line 280
    return-void
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SuggestedUserFragment$4;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/adapter/SuggestedUserAdapter;
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mAdapter:Lcom/instagram/android/adapter/SuggestedUserAdapter;

    if-nez v0, :cond_0

    .line 250
    new-instance v1, Lcom/instagram/android/adapter/SuggestedUserAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v4

    invoke-direct {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/instagram/android/adapter/SuggestedUserAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;Z)V

    iput-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mAdapter:Lcom/instagram/android/adapter/SuggestedUserAdapter;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mAdapter:Lcom/instagram/android/adapter/SuggestedUserAdapter;

    return-object v0

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getAdapter()Lcom/instagram/android/adapter/SuggestedUserAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getAdapter()Lcom/instagram/android/adapter/SuggestedUserAdapter;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/SuggestedUserFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/SuggestedUserFragment$2;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/SuggestedUserAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->fetchData(Z)V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 183
    sget v0, Lcom/facebook/h;->layout_listview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 177
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroy()V

    .line 178
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroyView()V

    .line 194
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 109
    invoke-direct {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onPause()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 171
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onStart()V

    .line 172
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 275
    return-void
.end method
