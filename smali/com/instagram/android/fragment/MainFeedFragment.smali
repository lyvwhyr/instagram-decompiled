.class public Lcom/instagram/android/fragment/MainFeedFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "MainFeedFragment.java"


# static fields
.field public static final ARGUMENT_REFRESH_FORCE_LOAD:Ljava/lang/String; = "com.instagram.android.activity.ARGUMENT_REFRESH_FORCE_LOAD"

.field public static final BROADCAST_REFRESH_MAIN_FEED:Ljava/lang/String; = "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"

.field private static final CACHED_FILENAME:Ljava/lang/String; = "MainFeed.json"

.field private static final FIVE_MINUTES:I = 0x493e0

.field private static final HANDLER_MESSAGE_PLACE_NEW_MEDIA:I = 0x0

.field private static final ITEMS_TO_LOAD_FROM_CACHE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "MainFeedFragment"

.field private static final MESSAGE_DATA_PENDING_MEDIA_KEY:Ljava/lang/String; = "pending_media_key"

.field private static final PLACE_NEW_MEDIA_DELAY_MILLIS:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "MainFeedFragment"

.field private static sFlagScrollToTop:Z

.field private static sLoadedDefaultContent:Z


# instance fields
.field protected mAdapter:Lcom/instagram/android/feed/adapter/MainFeedAdapter;

.field private mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;

.field private mBroadcastReceiver:Lcom/facebook/b/a/l;

.field private mDelayedNewMedia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/android/model/PendingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacebookAuthListener:Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;

.field private mFirstRequestFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mMapReviewedReceiver:Lcom/facebook/b/a/l;

.field private mRefreshFeedReceiver:Lcom/facebook/b/a/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mFirstRequestFinished:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;Lcom/instagram/android/fragment/MainFeedFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;

    .line 154
    new-instance v0, Lcom/instagram/android/fragment/MainFeedFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/MainFeedFragment$2;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    .line 589
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/MainFeedFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/MainFeedFragment;Lcom/instagram/android/model/PendingMedia;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/MainFeedFragment;->placeNewMedia(Lcom/instagram/android/model/PendingMedia;)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/MainFeedFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->syncPendingMedia()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/MainFeedFragment;Ljava/io/File;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/fragment/MainFeedFragment;->readFromCache(Ljava/io/File;J)V

    return-void
.end method

.method static synthetic access$502(Lcom/instagram/android/fragment/MainFeedFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mFirstRequestFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/MainFeedFragment;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/MainFeedFragment;->addListEmptyView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/fragment/MainFeedFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/MainFeedFragment;->showFacebookList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/fragment/MainFeedFragment;)Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/fragment/MainFeedFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addListEmptyView(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "rootView"

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/MainFeedFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->main_feed_empty:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 474
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 475
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 477
    sget v0, Lcom/facebook/g;->button_find_friends:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/MainFeedFragment$8;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/MainFeedFragment$8;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    return-void
.end method

.method public static flagScrollToTop()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/fragment/MainFeedFragment;->sFlagScrollToTop:Z

    .line 536
    return-void
.end method

.method public static getCachedHomeFeedFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .parameter "cacheDir"

    .prologue
    .line 237
    new-instance v0, Ljava/io/File;

    const-string v1, "MainFeed.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    return-object v0
.end method

.method private placeNewMedia(Lcom/instagram/android/model/PendingMedia;)V
    .locals 3
    .parameter "pendingMedia"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->resetStickyHeader()V

    .line 223
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Lcom/instagram/android/model/Media;Z)V

    .line 225
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->syncPendingMedia()V

    .line 233
    invoke-static {}, Lcom/instagram/android/service/PendingMediaService;->takeNewMediaUploaded()Z

    .line 234
    return-void
.end method

.method private placeNewMediaAfterDelay(Lcom/instagram/android/model/PendingMedia;)V
    .locals 4
    .parameter "pendingMedia"

    .prologue
    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    const-string v1, "pending_media_key"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 214
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 216
    invoke-static {}, Lcom/instagram/android/service/PendingMediaStore;->getInstance()Lcom/instagram/android/service/PendingMediaStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/PendingMediaStore;->remove(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method private readFromCache(Ljava/io/File;J)V
    .locals 12
    .parameter "cachedFile"
    .parameter "epochWhenCalled"

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 305
    const/4 v0, 0x0

    .line 307
    :try_start_0
    new-instance v2, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 308
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 310
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 312
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 314
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_4

    .line 354
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 355
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 358
    :cond_2
    if-nez v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/fragment/MainFeedFragment$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/MainFeedFragment$5;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    :cond_3
    return-void

    .line 317
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 318
    const-string v3, "items"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 319
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 320
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    :goto_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 322
    invoke-static {v1}, Lcom/instagram/android/model/Media;->fromJsonParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/instagram/android/model/Media;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_6

    .line 324
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 354
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_5

    .line 355
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v0

    .line 329
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 330
    const/4 v8, 0x1

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 333
    iget-object v9, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/fragment/MainFeedFragment$4;

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/MainFeedFragment$4;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;JJLjava/util/ArrayList;)V

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x1f4

    sub-long v1, v2, p2

    sub-long v1, v10, v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v8

    .line 346
    goto :goto_1

    .line 348
    :cond_7
    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 354
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private showFacebookList(Ljava/lang/String;)V
    .locals 4
    .parameter "fbKey"

    .prologue
    const/4 v3, 0x1

    .line 580
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    .line 581
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 582
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FACEBOOK"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 584
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_REFRESH_FEED_ON_EXIT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 587
    return-void
.end method

.method private syncPendingMedia()V
    .locals 5

    .prologue
    .line 511
    invoke-static {}, Lcom/instagram/android/service/PendingMediaStore;->getInstance()Lcom/instagram/android/service/PendingMediaStore;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->getDisplayableMedia()Ljava/util/List;

    move-result-object v1

    .line 517
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    .line 518
    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    if-ne v3, v4, :cond_0

    .line 519
    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/MainFeedFragment;->placeNewMediaAfterDelay(Lcom/instagram/android/model/PendingMedia;)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    .line 526
    if-eqz v0, :cond_2

    .line 527
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->setPendingMedia(Ljava/util/List;)V

    .line 532
    return-void
.end method

.method private takeFlagScrollToTop()Z
    .locals 2

    .prologue
    .line 539
    sget-boolean v0, Lcom/instagram/android/fragment/MainFeedFragment;->sFlagScrollToTop:Z

    .line 540
    const/4 v1, 0x0

    sput-boolean v1, Lcom/instagram/android/fragment/MainFeedFragment;->sFlagScrollToTop:Z

    .line 541
    return v0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/instagram/android/fragment/MainFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/MainFeedFragment$1;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;)V

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/MainFeedAdapter;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/MainFeedAdapter;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mAdapter:Lcom/instagram/android/feed/adapter/MainFeedAdapter;

    return-object v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    sget v1, Lcom/facebook/g;->request_id_main_feed_media_request:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/af;->b(I)Landroid/support/v4/a/c;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/a/c;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDefaultContent()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 280
    sget-boolean v0, Lcom/instagram/android/fragment/MainFeedFragment;->sLoadedDefaultContent:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 283
    :cond_0
    sput-boolean v1, Lcom/instagram/android/fragment/MainFeedFragment;->sLoadedDefaultContent:Z

    .line 285
    iput-boolean v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mLoadingDefaultContent:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 287
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/instagram/android/fragment/MainFeedFragment$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/fragment/MainFeedFragment$3;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public loadMore()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->takeFlagScrollToTop()Z

    .line 549
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->loadMore()V

    .line 550
    return-void
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
    .line 373
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    new-instance v0, Lcom/instagram/android/fragment/MainFeedFragment$6;

    sget v1, Lcom/facebook/g;->request_id_main_feed_media_request:I

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/instagram/android/fragment/MainFeedFragment$6;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 269
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 270
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/MainFeedFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 274
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 276
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onAttach(Landroid/content/Context;)V

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;

    invoke-direct {v1, p0, p1, v0}, Lcom/instagram/android/fragment/MainFeedFragment$RefreshFeedBroadcastReceiver;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mRefreshFeedReceiver:Lcom/facebook/b/a/l;

    .line 247
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mRefreshFeedReceiver:Lcom/facebook/b/a/l;

    invoke-virtual {v0}, Lcom/facebook/b/a/l;->register()V

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    const-string v1, "com.instagram.android.PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.instagram.android.PendingMediaService.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    new-instance v1, Lcom/instagram/android/fragment/MainFeedFragment$MainFeedBroadcastReceiver;

    invoke-direct {v1, p0, p1, v0}, Lcom/instagram/android/fragment/MainFeedFragment$MainFeedBroadcastReceiver;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mBroadcastReceiver:Lcom/facebook/b/a/l;

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.instagram.android.maps.manager.MapReviewed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    new-instance v1, Lcom/instagram/android/fragment/MainFeedFragment$MapReviewedBroadcastReceiver;

    invoke-direct {v1, p0, p1, v0}, Lcom/instagram/android/fragment/MainFeedFragment$MapReviewedBroadcastReceiver;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mMapReviewedReceiver:Lcom/facebook/b/a/l;

    .line 259
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 406
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mBroadcastReceiver:Lcom/facebook/b/a/l;

    invoke-virtual {v0}, Lcom/facebook/b/a/l;->register()V

    .line 407
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mMapReviewedReceiver:Lcom/facebook/b/a/l;

    invoke-virtual {v0}, Lcom/facebook/b/a/l;->register()V

    .line 409
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->loadDefaultContent()V

    .line 410
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/MainFeedFragment$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/MainFeedFragment$7;-><init>(Lcom/instagram/android/fragment/MainFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/MainFeedFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 423
    new-instance v0, Lcom/instagram/util/AutoUpdateHelper;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/util/AutoUpdateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;

    .line 424
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 462
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 465
    iget-boolean v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mFirstRequestFinished:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 466
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/MainFeedFragment;->addListEmptyView(Landroid/view/ViewGroup;)V

    .line 469
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 428
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onDestroy()V

    .line 430
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mBroadcastReceiver:Lcom/facebook/b/a/l;

    invoke-virtual {v0}, Lcom/facebook/b/a/l;->unregister()V

    .line 431
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mMapReviewedReceiver:Lcom/facebook/b/a/l;

    invoke-virtual {v0}, Lcom/facebook/b/a/l;->unregister()V

    .line 433
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onDetach()V

    .line 264
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mRefreshFeedReceiver:Lcom/facebook/b/a/l;

    invoke-virtual {v0}, Lcom/facebook/b/a/l;->unregister()V

    .line 265
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 445
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onPause()V

    .line 448
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 450
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 451
    iget-object v1, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mDelayedNewMedia:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 453
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 454
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/MainFeedFragment;->placeNewMedia(Lcom/instagram/android/model/PendingMedia;)V

    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 438
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onResume()V

    .line 439
    invoke-direct {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->syncPendingMedia()V

    .line 440
    iget-object v0, p0, Lcom/instagram/android/fragment/MainFeedFragment;->mAutoUpdateHelper:Lcom/instagram/util/AutoUpdateHelper;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/util/AutoUpdateHelper;->checkForNewVersionIfNeeded(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/af;)V

    .line 441
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 394
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onStart()V

    .line 395
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onStop()V

    .line 400
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
    .line 576
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "timeline"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method protected prepareStickyHeaderOnResume()V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->takeFlagScrollToTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->scrollToTop()V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->prepareStickyHeaderOnResume()V

    goto :goto_0
.end method

.method public setFeedMessages(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FeedMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, feedMessages:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/FeedMessage;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/instagram/android/fragment/MainFeedFragment;->getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;

    invoke-virtual {v0, p1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->setFeedMessages(Ljava/util/List;)V

    .line 567
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->setFeedMessages(Ljava/util/List;)V

    .line 568
    return-void
.end method

.method public supportsGridView()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method
