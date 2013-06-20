.class public Lcom/instagram/android/fragment/SingleMediaFeedFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "SingleMediaFeedFragment.java"


# static fields
.field public static final ARGUMENTS_KEY_EXTRA_MEDIA_ID:Ljava/lang/String; = "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"

.field public static final ARGUMENTS_KEY_LOAD_FROM_NETWORK:Ljava/lang/String; = "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"

.field private static final TAG:Ljava/lang/String; = "SingleMediaFeedFragment"


# instance fields
.field private mAutoplayOnce:Z

.field private mMediaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mMediaId:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mAutoplayOnce:Z

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/SingleMediaFeedFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mMediaId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public allowAutoplayFirstFeedItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-boolean v1, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mAutoplayOnce:Z

    if-eqz v1, :cond_0

    .line 62
    iput-boolean v0, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mAutoplayOnce:Z

    .line 63
    const/4 v0, 0x1

    .line 65
    :cond_0
    return v0
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
    .line 78
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/SingleMediaFeedFragment$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/SingleMediaFeedFragment$1;-><init>(Lcom/instagram/android/fragment/SingleMediaFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mMediaId:Ljava/lang/String;

    .line 47
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Lcom/instagram/android/model/Media;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    goto :goto_0
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
    .line 69
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "single"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method
