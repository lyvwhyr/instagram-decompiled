.class public Lcom/instagram/android/fragment/AboutFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "AboutFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    return-void
.end method

.method private createFooter(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 7
    .parameter "inflater"
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 76
    const v0, 0x102000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 84
    :goto_0
    sget v1, Lcom/facebook/h;->row_version:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 85
    sget v1, Lcom/facebook/g;->row_version_textview:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    const-string v4, "Instagram: v%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 88
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    const-string v1, "unknown"

    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/instagram/android/fragment/AboutFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/AboutFragment$1;-><init>(Lcom/instagram/android/fragment/AboutFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AboutFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/AboutFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AboutFragment$2;-><init>(Lcom/instagram/android/fragment/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->instagram_on_the_web:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->instagram_blog:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/instagram/android/model/menu/SeparatorItem;

    invoke-direct {v1}, Lcom/instagram/android/model/menu/SeparatorItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->terms_of_service:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->about_libraries:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->privacy_policy:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->setItems(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/AboutFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 65
    sget v0, Lcom/facebook/h;->layout_listview:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    sget v0, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 69
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-direct {p0, p1, v1}, Lcom/instagram/android/fragment/AboutFragment;->createFooter(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 72
    return-object v1
.end method
