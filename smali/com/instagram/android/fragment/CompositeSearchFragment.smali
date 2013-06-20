.class public Lcom/instagram/android/fragment/CompositeSearchFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "CompositeSearchFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final TAG:Ljava/lang/String; = "CompositeSearchFragment"

.field public static mCurrentSearchMode:Lcom/instagram/android/fragment/SearchFragment$SearchMode;


# instance fields
.field private mFirstCreation:Z

.field private mOldOrientation:I

.field private mSearchTagsFragment:Lcom/instagram/android/fragment/SearchTagsFragment;

.field private mSearchUsersFragment:Lcom/instagram/android/fragment/SearchUsersFragment;

.field private mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_USERS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    sput-object v0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mCurrentSearchMode:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mFirstCreation:Z

    return-void
.end method

.method private getFragmentForMode(Lcom/instagram/android/fragment/SearchFragment$SearchMode;)Lcom/instagram/android/fragment/SearchFragment;
    .locals 1
    .parameter "mode"

    .prologue
    .line 97
    sget-object v0, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_USERS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    if-ne p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSearchUsersFragment:Lcom/instagram/android/fragment/SearchUsersFragment;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSearchTagsFragment:Lcom/instagram/android/fragment/SearchTagsFragment;

    goto :goto_0
.end method

.method private showFragment(Lcom/instagram/android/fragment/SearchFragment;)V
    .locals 2
    .parameter "fragmentToShow"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    .line 89
    iput-object p1, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    .line 90
    iget-object v1, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SearchFragment;->show()V

    .line 91
    iget-object v1, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    if-eq v0, v1, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/instagram/android/fragment/SearchFragment;->hide()V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SearchFragment;->getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/instagram/android/fragment/SearchTagsFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/SearchTagsFragment;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSearchTagsFragment:Lcom/instagram/android/fragment/SearchTagsFragment;

    .line 40
    new-instance v0, Lcom/instagram/android/fragment/SearchUsersFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/SearchUsersFragment;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSearchUsersFragment:Lcom/instagram/android/fragment/SearchUsersFragment;

    .line 42
    sget-object v0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mCurrentSearchMode:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->getFragmentForMode(Lcom/instagram/android/fragment/SearchFragment$SearchMode;)Lcom/instagram/android/fragment/SearchFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    .line 44
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->getChildFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 45
    sget v1, Lcom/facebook/g;->frame_layout:I

    iget-object v2, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSearchTagsFragment:Lcom/instagram/android/fragment/SearchTagsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ac;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    move-result-object v0

    sget v1, Lcom/facebook/g;->frame_layout:I

    iget-object v2, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSearchUsersFragment:Lcom/instagram/android/fragment/SearchUsersFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ac;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->setRetainInstance(Z)V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 31
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    sget v1, Lcom/facebook/g;->frame_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 33
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 70
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SearchFragment;->hideSoftKeyboard()V

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mOldOrientation:I

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->showFragment(Lcom/instagram/android/fragment/SearchFragment;)V

    .line 60
    iget-boolean v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mFirstCreation:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SearchFragment;->showSoftKeyboard()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mFirstCreation:Z

    .line 64
    :cond_0
    return-void
.end method

.method public setSelectedFragmentSearchText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mSelectedFragment:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/SearchFragment;->setSearchText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public showFragment(Lcom/instagram/android/fragment/SearchFragment$SearchMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 79
    sput-object p1, Lcom/instagram/android/fragment/CompositeSearchFragment;->mCurrentSearchMode:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    .line 80
    sget-object v0, Lcom/instagram/android/fragment/CompositeSearchFragment;->mCurrentSearchMode:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->getFragmentForMode(Lcom/instagram/android/fragment/SearchFragment$SearchMode;)Lcom/instagram/android/fragment/SearchFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/CompositeSearchFragment;->showFragment(Lcom/instagram/android/fragment/SearchFragment;)V

    .line 81
    return-void
.end method
