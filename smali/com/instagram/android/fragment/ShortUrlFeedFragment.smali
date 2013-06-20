.class public Lcom/instagram/android/fragment/ShortUrlFeedFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "ShortUrlFeedFragment.java"


# static fields
.field public static final ARGUMENTS_KEY_SHORT_URL:Ljava/lang/String; = "com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL"


# instance fields
.field private mAutoplayOnce:Z

.field private mMediaId:Ljava/lang/String;

.field private mResolveShortUrlTask:Lcom/instagram/android/feed/task/ResolveShortUrlTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mAutoplayOnce:Z

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/ShortUrlFeedFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mMediaId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public allowAutoplayFirstFeedItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-boolean v1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mAutoplayOnce:Z

    if-eqz v1, :cond_0

    .line 90
    iput-boolean v0, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mAutoplayOnce:Z

    .line 91
    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/instagram/android/fragment/ShortUrlFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ShortUrlFeedFragment$1;-><init>(Lcom/instagram/android/fragment/ShortUrlFeedFragment;)V

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
    .line 102
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/ShortUrlFeedFragment$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/ShortUrlFeedFragment$2;-><init>(Lcom/instagram/android/fragment/ShortUrlFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/instagram/android/feed/task/ResolveShortUrlTask;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/task/ResolveShortUrlTask;-><init>(Lcom/instagram/android/fragment/ShortUrlFeedFragment;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mResolveShortUrlTask:Lcom/instagram/android/feed/task/ResolveShortUrlTask;

    .line 46
    iget-object v1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mResolveShortUrlTask:Lcom/instagram/android/feed/task/ResolveShortUrlTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mResolveShortUrlTask:Lcom/instagram/android/feed/task/ResolveShortUrlTask;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/task/ResolveShortUrlTask;->setFragment(Lcom/instagram/android/fragment/ShortUrlFeedFragment;)V

    .line 56
    iput-object v1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mResolveShortUrlTask:Lcom/instagram/android/feed/task/ResolveShortUrlTask;

    .line 57
    return-void
.end method

.method public performWithMediaId(Ljava/lang/String;)V
    .locals 2
    .parameter "mediaId"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->mMediaId:Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/ShortUrlFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 118
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
    .line 60
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "shortURL"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
