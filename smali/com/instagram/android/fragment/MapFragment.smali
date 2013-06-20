.class public Lcom/instagram/android/fragment/MapFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "MapFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENT_USER_ID:Ljava/lang/String; = "ARGUMENT_USER_ID"


# instance fields
.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/instagram/android/fragment/MapFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/MapFragment$1;-><init>(Lcom/instagram/android/fragment/MapFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/GroupFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/GroupFragmentActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/GroupFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/GroupFragmentActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/MapFragment;->mWindow:Landroid/view/Window;

    .line 30
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/instagram/android/fragment/MapFragment;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 85
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v0, v1

    .line 87
    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 88
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    return-object v2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/GroupFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/GroupFragmentActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v1, "tag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 104
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 105
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/fragment/MapFragment;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 97
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 71
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/GroupFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/GroupFragmentActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 76
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 36
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/GroupFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/GroupFragmentActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    return-void
.end method
