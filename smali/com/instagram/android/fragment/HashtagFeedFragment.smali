.class public Lcom/instagram/android/fragment/HashtagFeedFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "HashtagFeedFragment.java"


# static fields
.field public static final ARGUMENT_TAG_NAME:Ljava/lang/String; = "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"


# instance fields
.field private mAdapter:Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;

.field private updatedHashtag:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/instagram/android/fragment/HashtagFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/HashtagFeedFragment$1;-><init>(Lcom/instagram/android/fragment/HashtagFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/HashtagFeedFragment;->updatedHashtag:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/support/v4/app/p;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/instagram/android/fragment/HashtagFeedFragment;->showFeed(Ljava/lang/String;Landroid/support/v4/app/p;)V

    return-void
.end method

.method private static showContentAdvisory(Landroid/app/Activity;Landroid/support/v4/app/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "fragmentManager"
    .parameter "warning"
    .parameter "hashtagName"

    .prologue
    .line 107
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->content_advisory:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->show_posts:I

    new-instance v2, Lcom/instagram/android/fragment/HashtagFeedFragment$5;

    invoke-direct {v2, p3, p1}, Lcom/instagram/android/fragment/HashtagFeedFragment$5;-><init>(Ljava/lang/String;Landroid/support/v4/app/p;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/HashtagFeedFragment$4;

    invoke-direct {v2}, Lcom/instagram/android/fragment/HashtagFeedFragment$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    return-void
.end method

.method private static showFeed(Ljava/lang/String;Landroid/support/v4/app/p;)V
    .locals 3
    .parameter "hashtagName"
    .parameter "fragmentManager"

    .prologue
    .line 127
    new-instance v0, Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/HashtagFeedFragment;-><init>()V

    .line 128
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v2, "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p1, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public static startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/support/v4/app/p;)V
    .locals 1
    .parameter "activity"
    .parameter "hashtagName"
    .parameter "fragmentManager"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/instagram/android/model/Hashtag;->getContentAdvisoryWarning(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    invoke-static {p1, p2}, Lcom/instagram/android/fragment/HashtagFeedFragment;->showFeed(Ljava/lang/String;Landroid/support/v4/app/p;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p0, p2, v0, p1}, Lcom/instagram/android/fragment/HashtagFeedFragment;->showContentAdvisory(Landroid/app/Activity;Landroid/support/v4/app/p;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/instagram/android/fragment/HashtagFeedFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/HashtagFeedFragment$3;-><init>(Lcom/instagram/android/fragment/HashtagFeedFragment;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/fragment/HashtagFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p0}, Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/HashtagFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/HashtagFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;

    return-object v0
.end method

.method protected getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 80
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
    .line 59
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/HashtagFeedFragment$2;

    sget v1, Lcom/facebook/g;->request_id_explore:I

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/HashtagFeedFragment$2;-><init>(Lcom/instagram/android/fragment/HashtagFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Lcom/instagram/android/model/Hashtag;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/Hashtag;-><init>(Ljava/lang/String;Landroid/support/v4/app/af;)V

    .line 45
    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/HashtagFeedFragment;->updatedHashtag:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Lcom/instagram/android/model/Hashtag;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/android/model/Hashtag;->getHashtagBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 46
    iget-object v1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;->setHeaderObject(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0}, Lcom/instagram/android/model/Hashtag;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/AutoCompleteHashtagService;->addTag(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/HashtagFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment;->updatedHashtag:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 54
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onDestroy()V

    .line 55
    return-void
.end method

.method public populateConversionTrackingData(Ljava/util/Map;)V
    .locals 3
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
    .line 134
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "hashtag"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "q"

    invoke-virtual {p0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method
