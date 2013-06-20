.class public Lcom/instagram/android/fragment/LocationFeedFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "LocationFeedFragment.java"


# static fields
.field public static final ARGUMENT_LOCATION_VENUE_ID:Ljava/lang/String; = "com.instagram.android.fragment.LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID"

.field private static final SAVED_INSTANCE_STATE_VENUE:Ljava/lang/String; = "com.instagram.android.fragment.LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE"


# instance fields
.field protected mAdapter:Lcom/instagram/android/feed/adapter/LocationFeedAdapter;

.field private mVenue:Lcom/instagram/android/location/Venue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/LocationFeedFragment;)Lcom/instagram/android/location/Venue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mVenue:Lcom/instagram/android/location/Venue;

    return-object v0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/instagram/android/fragment/LocationFeedFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/LocationFeedFragment$2;-><init>(Lcom/instagram/android/fragment/LocationFeedFragment;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LocationFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/LocationFeedAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/feed/adapter/LocationFeedAdapter;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/LocationFeedAdapter;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/instagram/android/feed/adapter/LocationFeedAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LocationFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LocationFeedFragment;->getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p0}, Lcom/instagram/android/feed/adapter/LocationFeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/LocationFeedAdapter;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/LocationFeedAdapter;

    return-object v0
.end method

.method protected getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method protected makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)",
            "Lcom/instagram/api/loaderrequest/MediaFeedRequest;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/LocationFeedFragment$1;

    sget v1, Lcom/facebook/g;->request_id_explore:I

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/LocationFeedFragment$1;-><init>(Lcom/instagram/android/fragment/LocationFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    const-string v0, "com.instagram.android.fragment.LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    iput-object v0, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mVenue:Lcom/instagram/android/location/Venue;

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LocationFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/LocationFeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mVenue:Lcom/instagram/android/location/Venue;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/LocationFeedAdapter;->setHeaderObject(Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/LocationFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 39
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LocationFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/VenueStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/VenueStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LocationFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/VenueStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    iput-object v0, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mVenue:Lcom/instagram/android/location/Venue;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 44
    const-string v0, "com.instagram.android.fragment.LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE"

    iget-object v1, p0, Lcom/instagram/android/fragment/LocationFeedFragment;->mVenue:Lcom/instagram/android/location/Venue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    return-void
.end method

.method public populateConversionTrackingData(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "location"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
