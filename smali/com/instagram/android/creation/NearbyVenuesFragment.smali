.class public Lcom/instagram/android/creation/NearbyVenuesFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "NearbyVenuesFragment.java"


# static fields
.field private static final BUNDLE_KEY_CURRENT_SEARCH:Ljava/lang/String; = "currentSearch"

.field private static final INTENT_EXTRA_PHOTO_LOCATION:Ljava/lang/String; = "INTENT_EXTRA_PHOTO_LOCATION"

.field private static final INTENT_EXTRA_SEARCH_STRING:Ljava/lang/String; = "searchString"

.field public static final TRANSACTION_NAME:Ljava/lang/String; = "NearbyVenuesFragment"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNearbyVenuesLocationObserver:Ljava/util/Observer;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPresetSearchString:Ljava/lang/String;

.field private mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

.field private mRequestID:Ljava/lang/String;

.field private mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

.field private mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

.field private mVenuesFetchedReciever:Lcom/facebook/b/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 45
    const-string v0, "NearbyVenuesFragment"

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/instagram/android/creation/NearbyVenuesFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/NearbyVenuesFragment$1;-><init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mNearbyVenuesLocationObserver:Ljava/util/Observer;

    .line 93
    new-instance v0, Lcom/instagram/android/creation/NearbyVenuesFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/NearbyVenuesFragment$2;-><init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/creation/NearbyVenuesFragment;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->locationUpdated(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/creation/NearbyVenuesFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->startUpdatingLocation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/creation/NearbyVenuesFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->onVenuesFetched(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/adapter/NearbyVenuesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/widget/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/creation/NearbyVenuesFragment;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getPhotoLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/creation/NearbyVenuesFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRequestID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/creation/NearbyVenuesFragment;)Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/instagram/android/creation/NearbyVenuesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->handleClearEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/creation/NearbyVenuesFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/creation/NearbyVenuesFragment;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/NearbyVenuesFragment;->fetchVenues(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method private addSearchBar(Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter "inflater"

    .prologue
    .line 295
    sget v0, Lcom/facebook/h;->row_search_venue_edit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 297
    sget v0, Lcom/facebook/g;->row_search_edit_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/SearchEditText;

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    .line 298
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    new-instance v2, Lcom/instagram/android/creation/NearbyVenuesFragment$7;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/NearbyVenuesFragment$7;-><init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/SearchEditText;->setOnFilterTextListener(Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;)V

    .line 314
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 315
    return-void
.end method

.method private fetchVenues(Landroid/location/Location;Ljava/lang/String;)V
    .locals 3
    .parameter "location"
    .parameter "searchString"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/RefreshButton;->setDisplayedChild(I)V

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/instagram/foursquare/NearbyVenuesService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    const-string v1, "searchString"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    return-void
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    invoke-virtual {v0}, Lcom/instagram/android/InstagramApplication;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhotoLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleClearEvent()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

    invoke-interface {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;->onVenueCleared()V

    .line 221
    :cond_0
    return-void
.end method

.method private hideKeyboard()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->layout_listview_parent_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 388
    return-void
.end method

.method private locationUpdated(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->stopUpdatingLocation()V

    .line 376
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    invoke-virtual {v0, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->setLocation(Landroid/location/Location;)V

    .line 377
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->fetchVenues(Landroid/location/Location;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private onVenuesFetched(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/RefreshButton;->setDisplayedChild(I)V

    .line 351
    :cond_0
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRequestID:Ljava/lang/String;

    .line 355
    :cond_1
    const-string v0, "venues"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    const-string v0, "venues"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->setNearbyVenues(Ljava/util/List;)V

    .line 360
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->notifyDataSetChanged()V

    .line 362
    :cond_2
    return-void
.end method

.method public static show(Landroid/support/v4/app/p;Ljava/lang/String;Landroid/location/Location;)V
    .locals 3
    .parameter "manager"
    .parameter "searchString"
    .parameter "location"

    .prologue
    .line 127
    new-instance v0, Lcom/instagram/android/creation/NearbyVenuesFragment;

    invoke-direct {v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;-><init>()V

    .line 128
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v2, "searchString"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p2, :cond_0

    .line 131
    const-string v2, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 139
    if-nez p1, :cond_1

    .line 140
    const-string v1, "NearbyVenuesFragment"

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 145
    :goto_0
    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 146
    invoke-virtual {v2}, Landroid/support/v4/app/ac;->a()I

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/app/p;->b()Z

    .line 148
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;)Landroid/support/v4/app/ac;

    goto :goto_0
.end method

.method private startUpdatingLocation()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/RefreshButton;->setDisplayedChild(I)V

    .line 371
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mNearbyVenuesLocationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->requestLocationUpdates(Ljava/util/Observer;)Lcom/instagram/android/location/BestLocationListener;

    .line 372
    return-void
.end method

.method private stopUpdatingLocation()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/RefreshButton;->setDisplayedChild(I)V

    .line 366
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mNearbyVenuesLocationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->removeLocationUpdates(Ljava/util/Observer;)V

    .line 367
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onAttach(Landroid/content/Context;)V

    .line 68
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement NearbyVenuesResultListener"

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
    .line 235
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "searchString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    .line 240
    new-instance v1, Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    .line 242
    invoke-virtual {v0}, Lcom/facebook/b/a/k;->a()Lcom/facebook/b/a/i;

    move-result-object v0

    const-string v1, "com.instagram.android.creation.NearbyVenuesFragment.venuesFetched"

    new-instance v2, Lcom/instagram/android/creation/NearbyVenuesFragment$6;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/NearbyVenuesFragment$6;-><init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/b/a/i;->a(Ljava/lang/String;Lcom/facebook/content/b;)Lcom/facebook/b/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/a/i;->a()Lcom/facebook/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mVenuesFetchedReciever:Lcom/facebook/b/a/j;

    .line 251
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mVenuesFetchedReciever:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->b()V

    .line 252
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 154
    sget v0, Lcom/facebook/h;->activity_nearby_venues:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    .line 157
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    sget v2, Lcom/facebook/h;->row_powered_by_foursquare:I

    iget-object v3, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/d;->people_tagging_cell_background_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 163
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/NearbyVenuesFragment;->addSearchBar(Landroid/view/LayoutInflater;)V

    .line 171
    :goto_0
    sget v0, Lcom/facebook/g;->action_bar_button_back:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/creation/NearbyVenuesFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/NearbyVenuesFragment$3;-><init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    sget v0, Lcom/facebook/g;->action_bar_button_refresh:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/RefreshButton;

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    .line 182
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    new-instance v2, Lcom/instagram/android/creation/NearbyVenuesFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/NearbyVenuesFragment$4;-><init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "currentSearch"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    const-string v2, "currentSearch"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    new-instance v0, Lcom/instagram/android/creation/NearbyVenuesFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/NearbyVenuesFragment$5;-><init>(Lcom/instagram/android/creation/NearbyVenuesFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    return-object v1

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u201d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mVenuesFetchedReciever:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->c()V

    .line 258
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 227
    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mListView:Landroid/widget/ListView;

    .line 228
    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    .line 230
    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    .line 231
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDetach()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mResultListener:Lcom/instagram/android/creation/NearbyVenuesFragment$NearbyVenuesResultListener;

    .line 79
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "currentSearch"

    iget-object v1, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v1}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 273
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    .line 278
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mAdapter:Lcom/instagram/android/adapter/NearbyVenuesAdapter;

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->setLocation(Landroid/location/Location;)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/creation/NearbyVenuesFragment;->mPresetSearchString:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->fetchVenues(Landroid/location/Location;Ljava/lang/String;)V

    .line 285
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->startUpdatingLocation()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 290
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->stopUpdatingLocation()V

    .line 291
    invoke-direct {p0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->hideKeyboard()V

    .line 292
    return-void
.end method
