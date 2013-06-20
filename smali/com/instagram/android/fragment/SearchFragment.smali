.class public abstract Lcom/instagram/android/fragment/SearchFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchFragment"

.field private static final TAG_ROW_FOOTER_SEARCH:Ljava/lang/String; = "TAG_ROW_FOOTER_SEARCH"


# instance fields
.field private mBroadcastManager:Lcom/facebook/b/a/k;

.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field protected mIsLoading:Z

.field private mListView:Landroid/widget/ListView;

.field protected mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

.field private mSearchFooterShowing:Z

.field private mSearchString:Ljava/lang/String;

.field private mTagsButton:Landroid/widget/Button;

.field private mUpdateFilterResultsReceiver:Lcom/facebook/b/a/j;

.field private mUsersButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mIsLoading:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchFooterShowing:Z

    .line 327
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/SearchFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/SearchFragment;)Lcom/instagram/android/fragment/CompositeSearchFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;->getCompositeFragment()Lcom/instagram/android/fragment/CompositeSearchFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/instagram/android/fragment/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/SearchFragment;Lcom/instagram/android/fragment/SearchFragment$SearchMode;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/SearchFragment;->switchSearchMode(Lcom/instagram/android/fragment/SearchFragment$SearchMode;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/SearchFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/SearchFragment;->showSearchFooter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/SearchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;->hideSearchFooter()V

    return-void
.end method

.method private configureHeader()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mHeaderView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->row_search_edit_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/SearchEditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    .line 174
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    iget-object v3, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    iget-object v3, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/SearchEditText;->setSelection(I)V

    .line 176
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    new-instance v3, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;-><init>(Lcom/instagram/android/fragment/SearchFragment;)V

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/SearchEditText;->setOnFilterTextListener(Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;)V

    .line 177
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchFragment;->getHintResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/SearchEditText;->setHint(I)V

    .line 179
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mHeaderView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->layout_button_group_view_switcher_button_tags:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mTagsButton:Landroid/widget/Button;

    .line 181
    iget-object v3, p0, Lcom/instagram/android/fragment/SearchFragment;->mTagsButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchFragment;->getMode()Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    move-result-object v0

    sget-object v4, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_TAGS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 182
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mTagsButton:Landroid/widget/Button;

    new-instance v3, Lcom/instagram/android/fragment/SearchFragment$2;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/SearchFragment$2;-><init>(Lcom/instagram/android/fragment/SearchFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mHeaderView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->layout_button_group_view_switcher_button_users:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mUsersButton:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mUsersButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchFragment;->getMode()Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_USERS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 196
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mUsersButton:Landroid/widget/Button;

    new-instance v1, Lcom/instagram/android/fragment/SearchFragment$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/SearchFragment$3;-><init>(Lcom/instagram/android/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v1, v2

    .line 195
    goto :goto_1
.end method

.method private getCompositeFragment()Lcom/instagram/android/fragment/CompositeSearchFragment;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/CompositeSearchFragment;

    return-object v0
.end method

.method private hideSearchFooter()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchFooterShowing:Z

    .line 294
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void
.end method

.method private showSearchFooter(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 299
    iput-boolean v3, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchFooterShowing:Z

    .line 301
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->search_for_x:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method

.method private switchSearchMode(Lcom/instagram/android/fragment/SearchFragment$SearchMode;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "mode"
    .parameter "searchText"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchFragment;->getMode()Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;->getCompositeFragment()Lcom/instagram/android/fragment/CompositeSearchFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/CompositeSearchFragment;->showFragment(Lcom/instagram/android/fragment/SearchFragment$SearchMode;)V

    .line 284
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;->getCompositeFragment()Lcom/instagram/android/fragment/CompositeSearchFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/fragment/CompositeSearchFragment;->setSelectedFragmentSearchText(Ljava/lang/CharSequence;)V

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/instagram/android/fragment/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SearchFragment$4;-><init>(Lcom/instagram/android/fragment/SearchFragment;)V

    return-object v0
.end method

.method protected abstract getAdapter()Landroid/widget/BaseAdapter;
.end method

.method protected abstract getFilter()Landroid/widget/Filter;
.end method

.method protected abstract getHintResource()I
.end method

.method protected abstract getMode()Lcom/instagram/android/fragment/SearchFragment$SearchMode;
.end method

.method protected abstract handleItemClick(Landroid/widget/AdapterView;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->hideSoftKeyboard()V

    .line 77
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/fragment/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/SearchFragment$1;-><init>(Lcom/instagram/android/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    .line 100
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    invoke-virtual {v0}, Lcom/facebook/b/a/k;->a()Lcom/facebook/b/a/i;

    move-result-object v0

    const-string v1, "BROADCAST_UPDATED_SEARCHES"

    new-instance v2, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;-><init>(Lcom/instagram/android/fragment/SearchFragment;Lcom/instagram/android/fragment/SearchFragment$1;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/b/a/i;->a(Ljava/lang/String;Lcom/facebook/content/b;)Lcom/facebook/b/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/a/i;->a()Lcom/facebook/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mUpdateFilterResultsReceiver:Lcom/facebook/b/a/j;

    .line 104
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mUpdateFilterResultsReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->b()V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 127
    sget v0, Lcom/facebook/h;->fragment_search:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mView:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    .line 132
    sget v0, Lcom/facebook/h;->row_search_header:I

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mHeaderView:Landroid/view/View;

    .line 133
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;->configureHeader()V

    .line 135
    sget v0, Lcom/facebook/h;->row_search_for_x:I

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    const-string v1, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 141
    iget-boolean v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchFooterShowing:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/SearchFragment;->showSearchFooter(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mUpdateFilterResultsReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->c()V

    .line 325
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 152
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SearchEditText;->setOnFilterTextListener(Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;)V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mTagsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mUsersButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mView:Landroid/view/View;

    .line 158
    iput-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    .line 159
    iput-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mHeaderView:Landroid/view/View;

    .line 160
    iput-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mFooterView:Landroid/view/View;

    .line 161
    iput-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    .line 162
    iput-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mTagsButton:Landroid/widget/Button;

    .line 163
    iput-object v1, p0, Lcom/instagram/android/fragment/SearchFragment;->mUsersButton:Landroid/widget/Button;

    .line 164
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SearchFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    return-void
.end method

.method protected performSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 308
    invoke-static {p1}, Lcom/instagram/util/StringUtil;->getCleanText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->clearFocus()V

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/SearchFragment;->performSearchRequest(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/instagram/android/fragment/SearchFragment;->hideSearchFooter()V

    goto :goto_0
.end method

.method protected abstract performSearchRequest(Ljava/lang/String;)V
.end method

.method public setSearchText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SearchEditText;->setSelection(I)V

    .line 92
    return-void
.end method

.method protected setSelection(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 240
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->requestFocusAfterLayout()V

    .line 82
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->showSoftKeyboard()V

    .line 73
    return-void
.end method
