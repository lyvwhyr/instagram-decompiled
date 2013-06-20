.class public Lcom/instagram/android/maps/fragment/GeoGridFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;
.implements Lcom/instagram/android/fragment/ScrollToTopFragment/ScrollToTopFragment;


# static fields
.field private static final ARGUMENT_GEO_MEDIA_BUCKET:Ljava/lang/String; = "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

.field private static geoMediaBucketKey:Ljava/lang/Integer;

.field public static final geoMediaBuckets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private buttonStateListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

.field protected mAdapter:Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

.field private mBackButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

.field private mEnteredViewOutSideOfEditMode:Z

.field private mGeoMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBuckets:Ljava/util/HashMap;

    .line 43
    const v0, 0x186a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBucketKey:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$1;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    .line 73
    new-instance v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$2;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->configureHardwareBackButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->handleCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/maps/fragment/GeoGridFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getGeoMedia()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/maps/fragment/GeoGridFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->initState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/maps/fragment/GeoGridFragment;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    return-object v0
.end method

.method static synthetic access$402(Lcom/instagram/android/maps/fragment/GeoGridFragment;Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    return-object p1
.end method

.method private declared-synchronized configureHardwareBackButton()V
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 121
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getGeoMedia()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mGeoMediaList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 323
    sget-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBuckets:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 324
    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->e()Z

    .line 328
    :cond_0
    iput-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mGeoMediaList:Ljava/util/List;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mGeoMediaList:Ljava/util/List;

    return-object v0
.end method

.method private handleCancel()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 87
    const-string v0, "GeoGridFragment"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEnteredViewOutSideOfEditMode:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setEditMode(Z)V

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 98
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getGeoMedia()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->addPublishFlag(Ljava/util/Collection;)V

    .line 100
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private initState(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    sget v0, Lcom/facebook/g;->layout_geogrid_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    sget v0, Lcom/facebook/g;->layout_geogrid_button_select_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v4, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mGeoMediaList:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->photosToBePublished(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mGeoMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    sget v0, Lcom/facebook/g;->layout_geogrid_button_unselect_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mGeoMediaList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->photosToBePublished(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    return-void

    .line 191
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    .line 192
    goto :goto_1

    :cond_2
    move v2, v1

    .line 193
    goto :goto_2
.end method

.method public static launchGeoGridFragment(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, value:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    sget-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBucketKey:Ljava/lang/Integer;

    sget-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBucketKey:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBucketKey:Ljava/lang/Integer;

    .line 340
    sget-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBuckets:Ljava/util/HashMap;

    sget-object v1, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBucketKey:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    const-string v1, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    sget-object v2, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBucketKey:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/fragment/GeoGridFragment;

    invoke-direct {v2}, Lcom/instagram/android/maps/fragment/GeoGridFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 345
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$6;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/maps/adapter/GeoMediaAdapter;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mAdapter:Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mAdapter:Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mAdapter:Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getAdapter()Lcom/instagram/android/maps/adapter/GeoMediaAdapter;

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getGeoMedia()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/adapter/GeoMediaAdapter;->setItems(Ljava/util/List;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEnteredViewOutSideOfEditMode:Z

    .line 114
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->addListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 146
    sget v0, Lcom/facebook/h;->layout_geogrid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 147
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 149
    sget v2, Lcom/facebook/g;->layout_geogrid_button_select_all:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/fragment/GeoGridFragment$3;

    invoke-direct {v3, p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$3;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v2, Lcom/facebook/g;->layout_geogrid_button_unselect_all:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/fragment/GeoGridFragment$4;

    invoke-direct {v3, p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment$4;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v2, Lcom/facebook/d;->gray:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 167
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->initState(Landroid/view/View;)V

    .line 169
    new-instance v0, Lcom/instagram/android/maps/fragment/GeoGridFragment$5;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/maps/fragment/GeoGridFragment$5;-><init>(Lcom/instagram/android/maps/fragment/GeoGridFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->buttonStateListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    .line 178
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->buttonStateListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v2}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->addListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 180
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 295
    sget-object v0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->geoMediaBuckets:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mMapsEditManagerChangeListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 297
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroy()V

    .line 298
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->buttonStateListener:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removeListener(Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;)V

    .line 187
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroyView()V

    .line 188
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mEditModePopupWindow:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    invoke-virtual {v0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->dismiss()V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 312
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/fragment/GeoGridFragment;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 318
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onPause()V

    .line 319
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/maps/fragment/GeoGridFragment;->configureHardwareBackButton()V

    .line 140
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onResume()V

    .line 141
    return-void
.end method

.method public scrollToTop()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method
