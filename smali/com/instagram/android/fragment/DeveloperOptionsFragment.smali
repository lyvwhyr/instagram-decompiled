.class public Lcom/instagram/android/fragment/DeveloperOptionsFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "DeveloperOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeveloperOptionsFragment"


# instance fields
.field private mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/instagram/android/fragment/DeveloperOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/DeveloperOptionsFragment$1;-><init>(Lcom/instagram/android/fragment/DeveloperOptionsFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/DeveloperOptionsFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/DeveloperOptionsFragment$2;-><init>(Lcom/instagram/android/fragment/DeveloperOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v1, Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    .line 81
    iget-object v1, p0, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->setItems(Ljava/util/Collection;)V

    .line 82
    iget-object v0, p0, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 60
    sget v0, Lcom/facebook/h;->layout_listview:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    sget v1, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 63
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 64
    sget v2, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 67
    sget v2, Lcom/facebook/h;->fragment_admin_options_empty:I

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 71
    return-object v0
.end method
