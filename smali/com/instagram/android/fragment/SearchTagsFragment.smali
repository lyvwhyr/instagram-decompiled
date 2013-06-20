.class public Lcom/instagram/android/fragment/SearchTagsFragment;
.super Lcom/instagram/android/fragment/SearchFragment;
.source "SearchTagsFragment.java"


# instance fields
.field private mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mSearchTagsRequest:Lcom/instagram/api/loaderrequest/HashtagSearchRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/SearchTagsFragment;)Lcom/instagram/android/adapter/HashtagListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/SearchTagsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchTagsFragment;->updateProgressBarState()V

    return-void
.end method

.method private updateProgressBarState()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchTagsFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/instagram/android/adapter/HashtagListAdapter;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/adapter/HashtagListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchTagsFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v1}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

    return-object v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/HashtagListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method protected getHintResource()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/facebook/k;->search_for_a_tag:I

    return v0
.end method

.method public getMode()Lcom/instagram/android/fragment/SearchFragment$SearchMode;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_TAGS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

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
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Hashtag;

    .line 93
    iget-object v1, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mSearchTagsRequest:Lcom/instagram/api/loaderrequest/HashtagSearchRequest;

    invoke-virtual {v1}, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->getSearchHistory()Lcom/instagram/util/SearchSession;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/model/Hashtag;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/util/SearchSession;->reportHashtagSearchSuccess(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/model/Hashtag;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/UserPreferences;->saveRecentHashtag(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchTagsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/model/Hashtag;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchTagsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/instagram/android/fragment/HashtagFeedFragment;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/support/v4/app/p;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/SearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchTagsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/instagram/android/fragment/SearchTagsFragment$1;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/SearchTagsFragment$1;-><init>(Lcom/instagram/android/fragment/SearchTagsFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mSearchTagsRequest:Lcom/instagram/api/loaderrequest/HashtagSearchRequest;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/instagram/android/fragment/SearchFragment;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mSearchTagsRequest:Lcom/instagram/api/loaderrequest/HashtagSearchRequest;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mSearchTagsRequest:Lcom/instagram/api/loaderrequest/HashtagSearchRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->getSearchHistory()Lcom/instagram/util/SearchSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/SearchSession;->isFailedSearchSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mSearchTagsRequest:Lcom/instagram/api/loaderrequest/HashtagSearchRequest;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->getSearchHistory()Lcom/instagram/util/SearchSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/SearchSession;->reportHashtagSearchFailure()V

    .line 112
    :cond_0
    return-void
.end method

.method protected performSearchRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment;->mSearchTagsRequest:Lcom/instagram/api/loaderrequest/HashtagSearchRequest;

    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/HashtagSearchRequest;->perform(Ljava/lang/String;)V

    .line 81
    return-void
.end method
