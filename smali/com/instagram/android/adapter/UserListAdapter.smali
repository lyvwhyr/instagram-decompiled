.class public Lcom/instagram/android/adapter/UserListAdapter;
.super Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;
.source "UserListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/adapter/NoResultsEnhancedAdapter",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field protected mFilter:Landroid/widget/Filter;

.field protected mLoaderManager:Landroid/support/v4/app/af;

.field private mRefreshStatusHandler:Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;

.field protected mRowAdapter:Lcom/instagram/android/adapter/row/UserRowAdapter;

.field protected mShowExtraDisplayName:Z

.field protected mShowFollowButtons:Z

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "loaderManager"
    .parameter "showFollowButtons"
    .parameter "showExtraDisplayName"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;-><init>(Lcom/instagram/android/adapter/UserListAdapter;Lcom/instagram/android/adapter/UserListAdapter$1;)V

    iput-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mRefreshStatusHandler:Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;

    .line 63
    new-instance v0, Lcom/instagram/android/adapter/UserListAdapter$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/adapter/UserListAdapter$1;-><init>(Lcom/instagram/android/adapter/UserListAdapter;)V

    iput-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p2, p0, Lcom/instagram/android/adapter/UserListAdapter;->mLoaderManager:Landroid/support/v4/app/af;

    .line 78
    iput-boolean p3, p0, Lcom/instagram/android/adapter/UserListAdapter;->mShowFollowButtons:Z

    .line 79
    iput-boolean p4, p0, Lcom/instagram/android/adapter/UserListAdapter;->mShowExtraDisplayName:Z

    .line 82
    iget-boolean v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mShowFollowButtons:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/instagram/android/adapter/UserListAdapter$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/adapter/UserListAdapter$2;-><init>(Lcom/instagram/android/adapter/UserListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/adapter/UserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/adapter/UserListAdapter;)Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mRefreshStatusHandler:Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/adapter/UserListAdapter;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 1
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 123
    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/adapter/UserListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/instagram/android/model/User;)V

    .line 124
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;Lcom/instagram/android/model/User;)V
    .locals 6
    .parameter "v"
    .parameter "context"
    .parameter "user"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/instagram/android/adapter/UserListAdapter;->getRowAdapter()Lcom/instagram/android/adapter/row/UserRowAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;

    iget-boolean v3, p0, Lcom/instagram/android/adapter/UserListAdapter;->mShowFollowButtons:Z

    iget-boolean v4, p0, Lcom/instagram/android/adapter/UserListAdapter;->mShowExtraDisplayName:Z

    iget-object v5, p0, Lcom/instagram/android/adapter/UserListAdapter;->mLoaderManager:Landroid/support/v4/app/af;

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/adapter/row/UserRowAdapter;->bindView(Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;Lcom/instagram/android/model/User;ZZLandroid/support/v4/app/af;)V

    .line 129
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;

    invoke-direct {v0, p0}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;-><init>(Lcom/instagram/android/adapter/UserListAdapter;)V

    iput-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mFilter:Landroid/widget/Filter;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method protected getNoResultsView()Landroid/view/View;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/instagram/android/adapter/UserListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_no_results:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    sget v0, Lcom/facebook/g;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/k;->no_users_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    return-object v1
.end method

.method public getObjects()Ljava/util/List;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method public getRowAdapter()Lcom/instagram/android/adapter/row/UserRowAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mRowAdapter:Lcom/instagram/android/adapter/row/UserRowAdapter;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/instagram/android/adapter/row/UserRowAdapter;

    invoke-direct {v0}, Lcom/instagram/android/adapter/row/UserRowAdapter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mRowAdapter:Lcom/instagram/android/adapter/row/UserRowAdapter;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter;->mRowAdapter:Lcom/instagram/android/adapter/row/UserRowAdapter;

    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/instagram/android/adapter/UserListAdapter;->getRowAdapter()Lcom/instagram/android/adapter/row/UserRowAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/adapter/row/UserRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/UserListAdapter;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method
