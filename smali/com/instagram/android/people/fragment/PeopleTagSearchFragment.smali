.class public Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "PeopleTagSearchFragment.java"


# static fields
.field public static final FRAGMENT_TRANSACTION_NAME:Ljava/lang/String; = "PeopleTagSearch"

.field private static final TAG_ROW_FOOTER_SEARCH:Ljava/lang/String; = "TAG_ROW_FOOTER_SEARCH"


# instance fields
.field private mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

.field private mFooterView:Landroid/view/View;

.field protected mIsLoading:Z

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

.field private mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

.field private mServerSearchResultsVisible:Z

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
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mIsLoading:Z

    .line 50
    iput-boolean v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mServerSearchResultsVisible:Z

    .line 213
    new-instance v0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;-><init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mUserListRequestCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    .line 297
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/widget/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->animateSearchFooter()V

    return-void
.end method

.method static synthetic access$202(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mServerSearchResultsVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->showSearchFooter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->showListView()V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->hideListView()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->hideSearchFooter()V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private animateSearchFooter()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->searching:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->action_bar_glyph_refresh_spinner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/b;->rotate_spinner:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    return-void
.end method

.method private getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-virtual {v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    return-object v0
.end method

.method private hideListView()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 264
    return-void
.end method

.method private hideSearchFooter()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 267
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 268
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method

.method public static run(Landroid/support/v4/app/p;)V
    .locals 3
    .parameter "manager"

    .prologue
    .line 285
    new-instance v0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    invoke-direct {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;-><init>()V

    .line 286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v2

    .line 289
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 290
    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/ac;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 291
    const-string v0, "PeopleTagSearch"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 292
    invoke-virtual {v2}, Landroid/support/v4/app/ac;->a()I

    .line 294
    invoke-virtual {p0}, Landroid/support/v4/app/p;->b()Z

    .line 295
    return-void
.end method

.method private showListView()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 260
    return-void
.end method

.method private showSearchFooter(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->search_for_x:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method


# virtual methods
.method protected handleItemClick(Landroid/widget/AdapterView;I)V
    .locals 2
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
    .line 142
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 143
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    invoke-interface {v1, v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;->onUserSelected(Lcom/instagram/android/model/User;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement PeopleTagSearchFragmentListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->setRetainInstance(Z)V

    .line 74
    new-instance v0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;

    invoke-direct {v0}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;-><init>()V

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->setContext(Landroid/content/Context;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->setLoaderManager(Landroid/support/v4/app/af;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->showExtraDisplayName(Z)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->showFollowButtons(Z)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->setPeopleTagCollection(Lcom/instagram/android/people/model/PeopleTagCollection;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->build()Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 86
    sget v0, Lcom/facebook/h;->fragment_people_tag_search:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    sget v1, Lcom/facebook/g;->row_search_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/widget/SearchEditText;

    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    .line 90
    iget-boolean v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mServerSearchResultsVisible:Z

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    new-instance v2, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;-><init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/SearchEditText;->setOnFilterTextListener(Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;)V

    .line 95
    :cond_0
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    .line 96
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;-><init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    sget v1, Lcom/facebook/h;->row_search_for_x_dark:I

    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    .line 110
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    const-string v2, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 114
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    invoke-interface {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;->onPeopleTagSearchCancel()V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 133
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 121
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SearchEditText;->setOnFilterTextListener(Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;)V

    .line 122
    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    .line 123
    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    .line 124
    iput-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mFooterView:Landroid/view/View;

    .line 125
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDetach()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    .line 67
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->hideSoftKeyboard()V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 168
    iget-boolean v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mServerSearchResultsVisible:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->showListView()V

    .line 170
    invoke-direct {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->hideSearchFooter()V

    .line 171
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    new-instance v1, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;-><init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SearchEditText;->setOnFilterTextListener(Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    new-instance v0, Lcom/instagram/api/loaderrequest/UserSearchRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mUserListRequestCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/UserSearchRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    .line 158
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->requestFocus()Z

    .line 161
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->showSoftKeyboard()V

    .line 162
    return-void
.end method

.method protected performSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 176
    invoke-static {p1}, Lcom/instagram/util/StringUtil;->getCleanText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->clearFocus()V

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListener:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;

    invoke-interface {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;->onPeopleTagSearchCancel()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;

    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/UserSearchRequest;->perform(Ljava/lang/String;)V

    goto :goto_0
.end method
