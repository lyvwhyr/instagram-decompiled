.class public Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;
.super Lcom/instagram/android/adapter/UserListAdapter;
.source "PeopleTaggingUserListAdapter.java"


# instance fields
.field private mCollection:Lcom/instagram/android/people/model/PeopleTagCollection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZLcom/instagram/android/people/model/PeopleTagCollection;)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter "showFollowButtons"
    .parameter "showExtraDisplayName"
    .parameter "collection"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/adapter/UserListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZ)V

    .line 75
    iput-object p5, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZLcom/instagram/android/people/model/PeopleTagCollection;Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZLcom/instagram/android/people/model/PeopleTagCollection;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;-><init>(Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;Lcom/instagram/android/people/model/PeopleTagCollection;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mFilter:Landroid/widget/Filter;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method protected getNoResultsView()Landroid/view/View;
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_no_results_dark:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    sget v0, Lcom/facebook/g;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/k;->no_users_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    return-object v1
.end method

.method public getRowAdapter()Lcom/instagram/android/adapter/row/UserRowAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mRowAdapter:Lcom/instagram/android/adapter/row/UserRowAdapter;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/instagram/android/people/model/PeopleRowAdapter;

    invoke-direct {v0}, Lcom/instagram/android/people/model/PeopleRowAdapter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mRowAdapter:Lcom/instagram/android/adapter/row/UserRowAdapter;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->mRowAdapter:Lcom/instagram/android/adapter/row/UserRowAdapter;

    return-object v0
.end method
