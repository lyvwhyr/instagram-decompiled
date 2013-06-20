.class public Lcom/instagram/android/fragment/UserOptionsFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "UserOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UserOptionsFragment"


# instance fields
.field private mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

.field private mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;

.field private mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/UserOptionsFragment;)Lcom/instagram/util/AutoUpdateHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/UserOptionsFragment;)Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    return-object v0
.end method

.method private getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->find_friends_menu_label:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->posts_you_liked:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->report_problem:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;

    invoke-virtual {v1}, Lcom/instagram/util/AutoUpdateHelper;->isAutoUpdateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->check_for_updates:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    new-instance v1, Lcom/instagram/android/model/menu/HeaderItem;

    sget v2, Lcom/facebook/k;->account:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/HeaderItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->edit_sharing_settings:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->push_notification_settings:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->change_profile_picture:I

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/model/menu/MenuItem;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Lcom/instagram/android/Preferences;->getHasAdvancedCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/UserPreferences;->getSaveOriginalPhotos()Z

    move-result v1

    .line 264
    sget v2, Lcom/facebook/k;->save_original_photos:I

    invoke-static {v2, v1}, Lcom/instagram/android/model/menu/MenuItem;->createCheckBoxMenuItem(IZ)Lcom/instagram/android/model/menu/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_2
    invoke-static {}, Lcom/instagram/util/IgGateKeeper;->isVesper()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v1

    if-nez v1, :cond_3

    .line 268
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/UserPreferences;->getFeedAutoPlayVideos()Z

    move-result v1

    .line 269
    sget v2, Lcom/facebook/k;->video_feed_auto_play_preference:I

    invoke-static {v2, v1}, Lcom/instagram/android/model/menu/MenuItem;->createCheckBoxMenuItem(IZ)Lcom/instagram/android/model/menu/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_3
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->clear_search_history:I

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/model/menu/MenuItem;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->log_out:I

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/model/menu/MenuItem;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v1, Lcom/instagram/android/model/menu/TextItem;

    sget v2, Lcom/facebook/k;->privacy_settings_moved:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/TextItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_4

    .line 278
    new-instance v1, Lcom/instagram/android/model/menu/HeaderItem;

    sget v2, Lcom/facebook/k;->options:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/HeaderItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->advanced_features:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_4
    new-instance v1, Lcom/instagram/android/model/menu/HeaderItem;

    sget v2, Lcom/facebook/k;->support:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/HeaderItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->instagram_help_center:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->about:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v1, Lcom/instagram/android/model/menu/HeaderItem;

    sget v2, Lcom/facebook/k;->terms:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/HeaderItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->terms_of_service:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->privacy_policy:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->isProdBuild()Z

    move-result v1

    if-nez v1, :cond_5

    .line 293
    new-instance v1, Lcom/instagram/android/model/menu/HeaderItem;

    sget v2, Lcom/facebook/k;->developer:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/HeaderItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->options:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_5
    return-object v0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/instagram/android/fragment/UserOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserOptionsFragment$1;-><init>(Lcom/instagram/android/fragment/UserOptionsFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/UserOptionsFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/UserOptionsFragment$2;-><init>(Lcom/instagram/android/fragment/UserOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/IgListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    invoke-direct {v0, p0, p1}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    .line 96
    new-instance v0, Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    .line 97
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/UserOptionsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    new-instance v0, Lcom/instagram/util/AutoUpdateHelper;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/util/AutoUpdateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    sget v0, Lcom/facebook/h;->layout_listview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    sget v1, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    sget v2, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/instagram/android/fragment/UserOptionsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserOptionsFragment;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->setItems(Ljava/util/Collection;)V

    .line 106
    return-void
.end method
