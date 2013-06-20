.class public Lcom/instagram/android/feed/adapter/FeedAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/ListAdapter;


# static fields
.field private static final ITEM_TYPE_GRID_ROW:I = 0x1

.field private static final ITEM_TYPE_LOAD_MORE_ROW:I = 0x2

.field private static final ITEM_TYPE_MEDIA:I = 0x0

.field private static final MESSAGE_DATA_MEDIA_ID:Ljava/lang/String; = "MESSAGE_DATA_MEDIA_ID"

.field private static final MSG_ENABLE_VIDEO_TOUCHES:I = 0x4

.field private static final MSG_PLAY_LOCAL_VIDEO:I = 0x6

.field private static final MSG_PLAY_VIDEO:I = 0x1

.field private static final MSG_SHOW_COVER_PHOTO:I = 0x5

.field private static final MSG_STOP_VIDEO:I = 0x2

.field private static final MSG_TAG_INDICATOR:I = 0x0

.field private static final MSG_TRY_AUTOPLAY:I = 0x3

.field private static final NUM_VIEW_TYPES:I = 0x3

.field public static final READ_AHEAD_COUNT:I = 0x3

.field public static final READ_AHEAD_COUNT_FEED:I = 0x3

.field public static final READ_AHEAD_COUNT_GRID:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FeedAdapter"

.field private static final TAG_HIDE_DELAY_MS:I = 0x7d0

.field private static final VIDEO_AUTOPLAY_DELAY_MS:I = 0xc8


# instance fields
.field private lastQueuedDownPosition:I

.field private lastQueuedUpPosition:I

.field private mAdapterRefreshedListener:Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;

.field protected mContext:Landroid/content/Context;

.field private mCoverPhotoFadeInAnimation:Landroid/view/animation/Animation;

.field private mCoverPhotoFadeOutAnimation:Landroid/view/animation/Animation;

.field private mCurrentItemPositionOfStickyHeader:I

.field private mCurrentMediaOfStickyHeader:Lcom/instagram/android/model/Media;

.field private mCurrentScrollState:I

.field private mEnableVideoTouches:Z

.field protected mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

.field private mFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

.field private mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

.field protected mFragmentManager:Landroid/support/v4/app/p;

.field private mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

.field private mLegacyVideoFadeInAnimation:Landroid/view/animation/Animation;

.field private mLegacyVideoFadeOutAnimation:Landroid/view/animation/Animation;

.field private mLegacyVideoFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

.field private mLegacyVideoOverlayView:Landroid/view/View;

.field protected mLoadManager:Landroid/support/v4/app/af;

.field private mMediaCurrentlyPlayingVideo:Lcom/instagram/android/model/Media;

.field private mMediaDisplayingTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPositionCurrentlyPlayingVideo:I

.field private mMediaSetChangeListener:Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;

.field private mModifyPhotosOfYouHelper:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

.field private mNumberMediaPerRow:I

.field private mPreviousPosition:I

.field private mScrollDirection:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

.field private mStickyScrollingEnabled:Z

.field private mStopLegacyVideoReceiver:Lcom/facebook/b/a/j;

.field private mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

.field private mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

.field private mVideoPositionNoAutoplay:I

.field private mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

.field private mViewTypeChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private previousItem:I

.field private screenRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 5
    .parameter "context"
    .parameter "listenerDelegate"
    .parameter "viewMode"
    .parameter "feedFragment"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 258
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewTypeChangeListeners:Ljava/util/Set;

    .line 95
    iput v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mPreviousPosition:I

    .line 96
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->DOWN:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mScrollDirection:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaDisplayingTags:Ljava/util/Set;

    .line 100
    iput v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    .line 101
    iput-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaCurrentlyPlayingVideo:Lcom/instagram/android/model/Media;

    .line 102
    iput v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    .line 103
    iput-boolean v4, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mEnableVideoTouches:Z

    .line 148
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-direct {v0, p0, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/feed/adapter/FeedAdapter$1;)V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    .line 154
    iput v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->previousItem:I

    .line 156
    iput v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedDownPosition:I

    .line 157
    iput v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedUpPosition:I

    .line 163
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    .line 170
    const/4 v0, 0x3

    iput v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I

    .line 172
    iput v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentScrollState:I

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->screenRect:Landroid/graphics/Rect;

    .line 176
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    invoke-direct {v0, p0, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/feed/adapter/FeedAdapter$1;)V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    .line 259
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {p4}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLoadManager:Landroid/support/v4/app/af;

    .line 261
    iput-object p4, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    .line 262
    invoke-virtual {p4}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    .line 263
    iput-object p3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    .line 264
    iput-boolean v4, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mStickyScrollingEnabled:Z

    .line 265
    new-instance v0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLoadManager:Landroid/support/v4/app/af;

    invoke-direct {v0, p1, v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;)V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mModifyPhotosOfYouHelper:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    .line 267
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;

    invoke-interface {p2}, Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;->getDoubleTapMediaListener()Lcom/instagram/android/listener/DoubleTapMediaListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/listener/DoubleTapMediaListener;)V

    .line 270
    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    invoke-direct {v1, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->setActivity(Landroid/app/Activity;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->setFragmentManager(Landroid/support/v4/app/p;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->setLoaderManager(Landroid/support/v4/app/af;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->setOnTouchListener(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->setConversionTracker(Lcom/instagram/android/fragment/ConversionTrackable;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->setFeedAdapter(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->create()Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    .line 279
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->setOnTouchListener(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->create()Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/b;->cover_photo_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCoverPhotoFadeInAnimation:Landroid/view/animation/Animation;

    .line 287
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/b;->cover_photo_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCoverPhotoFadeOutAnimation:Landroid/view/animation/Animation;

    .line 289
    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->togglePeopleTags(Lcom/instagram/android/model/Media;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    return v0
.end method

.method static synthetic access$1800(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;I)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->showLegacyVideoView(Lcom/instagram/android/model/Media;I)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->prepareVideo(Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCoverPhotoFadeOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/instagram/android/feed/adapter/FeedAdapter;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I

    return v0
.end method

.method static synthetic access$2700(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaSetChangeListener:Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mAdapterRefreshedListener:Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mModifyPhotosOfYouHelper:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/feed/adapter/FeedAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->findRowForMediaId(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->hideLegacyVideoView()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->screenRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->fadeOutView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->tryAutoplay()V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/feed/adapter/FeedAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mEnableVideoTouches:Z

    return v0
.end method

.method static synthetic access$802(Lcom/instagram/android/feed/adapter/FeedAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mEnableVideoTouches:Z

    return p1
.end method

.method static synthetic access$900(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCoverPhotoFadeInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private canAutoplayView(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .parameter "listView"
    .parameter "rowView"

    .prologue
    const/4 v0, 0x0

    .line 602
    sget v1, Lcom/facebook/g;->media_group:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 604
    if-nez v1, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 609
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 611
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    sub-int v1, v3, v1

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearMediaDisplayingTags(Landroid/widget/AbsListView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 452
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 453
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 454
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 456
    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaDisplayingTags:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 461
    :cond_1
    iput-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaDisplayingTags:Ljava/util/Set;

    .line 462
    return-void
.end method

.method private fadeInView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 791
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 792
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 793
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 794
    new-instance v1, Lcom/instagram/android/feed/adapter/FeedAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter$2;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 800
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    :cond_0
    return-void
.end method

.method private fadeOutView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 774
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 775
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 776
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 777
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 778
    new-instance v1, Lcom/instagram/android/feed/adapter/FeedAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter$1;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 784
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 786
    :cond_0
    return-void
.end method

.method private findRowForMediaId(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "mediaId"

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 346
    if-nez v2, :cond_0

    move-object v0, v1

    .line 358
    :goto_0
    return-object v0

    .line 350
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 351
    invoke-direct {p0, v2, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getImageViewAt(Landroid/widget/AbsListView;I)Lcom/instagram/android/widget/ConstrainedProgressImageView;

    move-result-object v3

    .line 352
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getMediaIdFromImage(Lcom/instagram/android/widget/ConstrainedProgressImageView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 358
    goto :goto_0
.end method

.method private findRowForPosition(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 363
    if-nez v3, :cond_0

    move-object v0, v2

    .line 375
    :goto_0
    return-object v0

    .line 367
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 368
    invoke-direct {p0, v3, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getImageViewAt(Landroid/widget/AbsListView;I)Lcom/instagram/android/widget/ConstrainedProgressImageView;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_1

    sget v4, Lcom/facebook/g;->key_list_position:I

    invoke-virtual {v0, v4}, Lcom/instagram/android/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 370
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 375
    goto :goto_0
.end method

.method private findView(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 393
    :cond_0
    return-object v0
.end method

.method private getImageViewAt(Landroid/widget/AbsListView;I)Lcom/instagram/android/widget/ConstrainedProgressImageView;
    .locals 2
    .parameter "listView"
    .parameter "index"

    .prologue
    .line 384
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->row_feed_photo_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ConstrainedProgressImageView;

    return-object v0
.end method

.method private getLegacyVideoOverlayView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1603
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1605
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1606
    sget v2, Lcom/facebook/h;->dialog_video_legacy:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    .line 1607
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    sget v2, Lcom/facebook/g;->media_group:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1609
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->getMediaHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v2

    .line 1610
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1612
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    new-instance v3, Lcom/instagram/android/feed/adapter/FeedAdapter$7;

    invoke-direct {v3, p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$7;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1624
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/facebook/b;->legacy_video_fade_in:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeInAnimation:Landroid/view/animation/Animation;

    .line 1626
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/facebook/b;->legacy_video_fade_out:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeOutAnimation:Landroid/view/animation/Animation;

    .line 1629
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1630
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/instagram/android/feed/adapter/FeedAdapter$8;

    invoke-direct {v3, p0, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$8;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1653
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1654
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/instagram/android/feed/adapter/FeedAdapter$9;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$9;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1662
    new-instance v0, Lcom/facebook/b/a/k;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    .line 1663
    invoke-virtual {v0}, Lcom/facebook/b/a/k;->a()Lcom/facebook/b/a/i;

    move-result-object v0

    const-string v1, "broadcastStopLegacyVideo"

    new-instance v2, Lcom/instagram/android/feed/adapter/FeedAdapter$10;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$10;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/b/a/i;->a(Ljava/lang/String;Lcom/facebook/content/b;)Lcom/facebook/b/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/a/i;->a()Lcom/facebook/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mStopLegacyVideoReceiver:Lcom/facebook/b/a/j;

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    return-object v0
.end method

.method private getLegacyVideoOverlayViewParent()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getMediaIdFromImage(Lcom/instagram/android/widget/ConstrainedProgressImageView;)Ljava/lang/String;
    .locals 1
    .parameter "imageView"

    .prologue
    .line 380
    sget v0, Lcom/facebook/g;->key_media_id:I

    invoke-virtual {p1, v0}, Lcom/instagram/android/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getMediaList(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getMediaList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getStickyHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 337
    sget v0, Lcom/facebook/g;->row_feed_photo_sticky_header_group:I

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->findView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getVideoIconState(ILcom/instagram/android/model/Media;)Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;
    .locals 2
    .parameter "position"
    .parameter "media"

    .prologue
    .line 1121
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-eq v0, v1, :cond_0

    .line 1122
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 1142
    :goto_0
    return-object v0

    .line 1123
    :cond_0
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 1128
    :cond_1
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    if-ne v0, p1, :cond_5

    .line 1129
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    .line 1130
    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->canPlay()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1131
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 1132
    :cond_2
    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1133
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 1134
    :cond_3
    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->isPlaybackCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1135
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 1137
    :cond_4
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PAUSE:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 1139
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isIsVideoAutoplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    if-eq p1, v0, :cond_6

    .line 1140
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->AUTOPLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0

    .line 1142
    :cond_6
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_0
.end method

.method private getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    if-nez v0, :cond_0

    .line 1228
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    new-instance v0, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;

    invoke-direct {v0}, Lcom/instagram/android/video/player/SurfaceViewVideoPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    .line 1234
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    new-instance v1, Lcom/instagram/android/feed/adapter/FeedAdapter$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$3;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    invoke-interface {v0, v1}, Lcom/instagram/android/video/player/VideoPlayer;->setOnErrorListener(Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;)V

    .line 1242
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    new-instance v1, Lcom/instagram/android/feed/adapter/FeedAdapter$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$4;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    invoke-interface {v0, v1}, Lcom/instagram/android/video/player/VideoPlayer;->setOnPreparedListener(Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;)V

    .line 1264
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    new-instance v1, Lcom/instagram/android/feed/adapter/FeedAdapter$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$5;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    invoke-interface {v0, v1}, Lcom/instagram/android/video/player/VideoPlayer;->setOnCompletionListener(Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;)V

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    return-object v0

    .line 1231
    :cond_1
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer;

    invoke-direct {v0}, Lcom/instagram/android/video/player/TextureViewVideoPlayer;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    goto :goto_0
.end method

.method private hideLegacyVideoView()V
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mStopLegacyVideoReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->c()V

    .line 1587
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo()V

    .line 1588
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1589
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1590
    return-void
.end method

.method private performLoadMoreCheck(III)V
    .locals 3
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 617
    add-int v0, p1, p2

    .line 620
    if-lez p3, :cond_0

    if-lez p2, :cond_0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mScrollDirection:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    sget-object v2, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->DOWN:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getReadAheadCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 624
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->autoLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->loadMore()V

    .line 628
    :cond_0
    return-void
.end method

.method private performStickyHeader(Landroid/widget/AbsListView;I)V
    .locals 13
    .parameter "view"
    .parameter "firstVisibleItem"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getStickyHeader()Landroid/view/View;

    move-result-object v10

    .line 652
    if-eqz v10, :cond_0

    invoke-static {}, Lcom/instagram/android/InstagramApplication;->getStickyHeaderSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iput p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentItemPositionOfStickyHeader:I

    .line 658
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v0

    add-int/2addr v0, p2

    .line 660
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->isValidItemTypeForStickyHeader(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 662
    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/instagram/android/model/Media;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    if-eqz v1, :cond_7

    .line 666
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 668
    sget v2, Lcom/facebook/g;->row_feed_profile_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 670
    if-eqz v11, :cond_2

    move-object v9, v0

    .line 672
    check-cast v9, Lcom/instagram/android/model/Media;

    .line 673
    invoke-static {v10}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->getHeaderHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;

    move-result-object v12

    .line 675
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 677
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 678
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 679
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 680
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v6, v0

    .line 681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 682
    invoke-virtual {v10, v6}, Landroid/view/View;->setY(F)V

    .line 692
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :goto_2
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentMediaOfStickyHeader:Lcom/instagram/android/model/Media;

    if-eq v0, v9, :cond_2

    .line 709
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    invoke-virtual {v0, v12, v9}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->bindProfileHeader(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;Lcom/instagram/android/model/Media;)V

    .line 710
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 711
    iput-object v9, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentMediaOfStickyHeader:Lcom/instagram/android/model/Media;

    .line 721
    :cond_2
    :goto_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setVisibilityOfProfileHeaderAtIndex(ILandroid/widget/AbsListView;I)V

    goto :goto_0

    .line 684
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 685
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 686
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 687
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 688
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 689
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 690
    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 694
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_5

    .line 695
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setY(F)V

    .line 699
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_6

    .line 700
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 701
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 697
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    goto :goto_4

    .line 703
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 704
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 715
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 717
    :cond_8
    if-eqz v10, :cond_2

    .line 718
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private preDecodeImage(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 296
    const/4 v0, 0x0

    .line 297
    if-le p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 300
    :cond_0
    if-le p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/instagram/android/model/Media;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/instagram/android/mediacache/IgBitmapCache;->getInstance(Landroid/content/Context;)Lcom/instagram/android/mediacache/IgBitmapCache;

    move-result-object v1

    check-cast v0, Lcom/instagram/android/model/Media;

    check-cast v0, Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getSizedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->warm(Ljava/lang/String;)V

    .line 303
    :cond_1
    return-void
.end method

.method private prepareVideo(Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V
    .locals 5
    .parameter "media"
    .parameter "holder"
    .parameter "mediaIndex"

    .prologue
    const/4 v2, 0x0

    .line 1279
    invoke-direct {p0, v2, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo(ZZ)V

    .line 1281
    iput-object p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 1282
    iput p3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    .line 1283
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaCurrentlyPlayingVideo:Lcom/instagram/android/model/Media;

    .line 1285
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-interface {v1, v0, v2}, Lcom/instagram/android/video/player/VideoPlayer;->bindView(Landroid/widget/FrameLayout;I)V

    .line 1287
    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->getInstance()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v2

    .line 1289
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->hasLocalVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1313
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isIsVideoAutoplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    add-int/lit8 v0, p3, 0x1

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, p3, 0x15

    if-ge v1, v0, :cond_0

    .line 1315
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 1316
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 1317
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v3, v4, :cond_3

    .line 1318
    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getSizedVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/android/mediacache/IgVideoCache;->prefetch(Landroid/net/Uri;)V

    .line 1324
    :cond_0
    return-void

    .line 1292
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getSizedVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1294
    invoke-virtual {v2, v0}, Lcom/instagram/android/mediacache/IgVideoCache;->hasVideo(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1295
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendPlayMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 1297
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v1

    sget-object v3, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v1, v3}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 1298
    const/4 v1, 0x1

    new-instance v3, Lcom/instagram/android/feed/adapter/FeedAdapter$6;

    invoke-direct {v3, p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$6;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/net/Uri;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/instagram/android/mediacache/IgVideoCache;->queueDownload(Landroid/net/Uri;ZLcom/instagram/android/mediacache/IgVideoCache$ProgressListener;)V

    goto :goto_0

    .line 1314
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private recordScrollDirection(I)Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;
    .locals 1
    .parameter "position"

    .prologue
    .line 631
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mPreviousPosition:I

    if-le v0, p1, :cond_1

    .line 632
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->UP:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mScrollDirection:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    .line 636
    :cond_0
    :goto_0
    iput p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mPreviousPosition:I

    .line 637
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mScrollDirection:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    return-object v0

    .line 633
    :cond_1
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mPreviousPosition:I

    if-ge v0, p1, :cond_0

    .line 634
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->DOWN:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mScrollDirection:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    goto :goto_0
.end method

.method private setVisibilityOfProfileHeaderAtIndex(ILandroid/widget/AbsListView;I)V
    .locals 2
    .parameter "indexOfRowInChildViewHierarchy"
    .parameter "parentView"
    .parameter "visibility"

    .prologue
    .line 327
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 328
    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    sget v1, Lcom/facebook/g;->row_feed_profile_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_0
    return-void
.end method

.method private showLegacyVideoView(Lcom/instagram/android/model/Media;I)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    .locals 8
    .parameter "media"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1560
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->media_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1561
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 1563
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->hasLocalVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->getInstance()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getSizedVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/android/mediacache/IgVideoCache;->hasVideo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 1566
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    if-eqz v2, :cond_1

    sget-object v5, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    :goto_1
    move-object v2, p1

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->bindMediaGroup(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;Lcom/instagram/android/model/Media;IZLcom/instagram/android/video/ui/MediaActionsView$VideoIconState;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 1576
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mStopLegacyVideoReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->b()V

    .line 1578
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1579
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    return-object v1

    :cond_0
    move v2, v4

    .line 1563
    goto :goto_0

    .line 1566
    :cond_1
    sget-object v5, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    goto :goto_1
.end method

.method private stopVideo()V
    .locals 2

    .prologue
    .line 1327
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo(ZZ)V

    .line 1328
    return-void
.end method

.method private stopVideo(ZZ)V
    .locals 5
    .parameter "useHandler"
    .parameter "isError"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1331
    const-string v0, "FeedAdapter"

    const-string v1, "Stopping video"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    invoke-virtual {v0, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->removeMessages(I)V

    .line 1334
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->removeMessages(I)V

    .line 1335
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->removeMessages(I)V

    .line 1336
    iput-boolean v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mEnableVideoTouches:Z

    .line 1338
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    if-eq v0, v2, :cond_1

    .line 1339
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->removeView()V

    .line 1341
    if-eqz p1, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendEmptyMessage(I)Z

    .line 1347
    :goto_0
    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->getInstance()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaCurrentlyPlayingVideo:Lcom/instagram/android/model/Media;

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getSizedVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgVideoCache;->removeListeners(Landroid/net/Uri;)V

    .line 1351
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    sget v1, Lcom/facebook/g;->key_list_position:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    if-ne v0, v1, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    .line 1354
    if-eqz p2, :cond_3

    .line 1355
    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->RETRY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 1361
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->clearAnimation()V

    .line 1362
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setVisibility(I)V

    .line 1364
    :cond_0
    iput-object v4, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 1365
    iput v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    .line 1366
    iput-object v4, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaCurrentlyPlayingVideo:Lcom/instagram/android/model/Media;

    .line 1368
    :cond_1
    return-void

    .line 1344
    :cond_2
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->reset()V

    goto :goto_0

    .line 1356
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isIsVideoAutoplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1357
    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->AUTOPLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    goto :goto_1

    .line 1359
    :cond_4
    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    goto :goto_1
.end method

.method private testDecode(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 725
    iget v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->previousItem:I

    if-le p2, v1, :cond_2

    .line 727
    iput v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedUpPosition:I

    .line 728
    :goto_0
    if-ge v0, v3, :cond_0

    .line 729
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->testIfShouldDecodeDown(II)V

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedDownPosition:I

    .line 740
    :cond_1
    :goto_1
    iput p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->previousItem:I

    .line 741
    return-void

    .line 732
    :cond_2
    iget v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->previousItem:I

    if-ge p2, v1, :cond_1

    .line 734
    iput v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedDownPosition:I

    .line 735
    :goto_2
    if-ge v0, v3, :cond_3

    .line 736
    invoke-direct {p0, p2, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->testIfShouldDecodeUp(II)V

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 738
    :cond_3
    add-int/lit8 v0, p2, -0x2

    iput v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedUpPosition:I

    goto :goto_1
.end method

.method private testIfShouldDecodeDown(II)V
    .locals 2
    .parameter "lastVisiblePosition"
    .parameter "i"

    .prologue
    .line 750
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int v0, p1, p2

    iget v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedDownPosition:I

    if-le v0, v1, :cond_1

    .line 751
    :cond_0
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->preDecodeImage(I)V

    .line 753
    :cond_1
    return-void
.end method

.method private testIfShouldDecodeUp(II)V
    .locals 2
    .parameter "firstVisibleItem"
    .parameter "i"

    .prologue
    .line 744
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedUpPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int v0, p1, p2

    iget v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->lastQueuedUpPosition:I

    if-ge v0, v1, :cond_1

    .line 745
    :cond_0
    sub-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->preDecodeImage(I)V

    .line 747
    :cond_1
    return-void
.end method

.method private togglePeopleTags(Lcom/instagram/android/model/Media;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
    .locals 3
    .parameter "touchedMedia"
    .parameter "tagsLayout"
    .parameter "tagsIndicator"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaDisplayingTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaDisplayingTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->animateOutAllViews()V

    .line 762
    invoke-direct {p0, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->fadeOutView(Landroid/view/View;)V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getInTagsCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaDisplayingTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeAllViews()V

    .line 767
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/FeedAdapter$1;)V

    invoke-virtual {p2, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;Landroid/view/View$OnClickListener;)V

    .line 768
    invoke-direct {p0, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->fadeInView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private tryAutoplay()V
    .locals 8

    .prologue
    .line 570
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isIsVideoAutoplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 576
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 577
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 578
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    .line 579
    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 580
    invoke-direct {p0, v3, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getImageViewAt(Landroid/widget/AbsListView;I)Lcom/instagram/android/widget/ConstrainedProgressImageView;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/instagram/android/widget/ConstrainedProgressImageView;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    sget v1, Lcom/facebook/g;->key_list_position:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 583
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/Media;

    .line 585
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v6

    sget-object v7, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v6, v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    if-eq v6, v7, :cond_2

    invoke-direct {p0, v3, v5}, Lcom/instagram/android/feed/adapter/FeedAdapter;->canAutoplayView(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 590
    sget v2, Lcom/facebook/g;->media_group:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 593
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->prepareVideo(Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;I)V

    goto :goto_0

    .line 578
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public addMedia(Lcom/instagram/android/model/Media;)V
    .locals 1
    .parameter "media"

    .prologue
    .line 1190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Lcom/instagram/android/model/Media;Z)V

    .line 1191
    return-void
.end method

.method public addMedia(Lcom/instagram/android/model/Media;Z)V
    .locals 2
    .parameter "media"
    .parameter "prepend"

    .prologue
    .line 1194
    if-nez p1, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1198
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_1

    .line 1200
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    .line 1203
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1204
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    invoke-virtual {p0, v0, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public addMedia(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1210
    .local p1, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/Media;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Ljava/util/ArrayList;Z)V

    .line 1211
    return-void
.end method

.method public addMedia(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "prepend"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p1, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/Media;>;"
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->addMedia(Ljava/util/ArrayList;Z)V

    .line 1215
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->notifyDataSetChanged()V

    .line 1216
    return-void
.end method

.method public addViewTypeChangeListener(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewTypeChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1152
    return-void
.end method

.method protected adjustChildViewType(I)I
    .locals 1
    .parameter "viewType"

    .prologue
    .line 1066
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method protected adjustedItemPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1165
    const/4 v0, 0x0

    return v0
.end method

.method protected bindView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 7
    .parameter "context"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1084
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type unhandled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/model/Media;

    .line 1090
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaCurrentlyPlayingVideo:Lcom/instagram/android/model/Media;

    invoke-virtual {v2, v0}, Lcom/instagram/android/model/Media;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo()V

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaDisplayingTags:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, p3, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoIconState(ILcom/instagram/android/model/Media;)Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    move-result-object v5

    new-instance v6, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;

    const/4 v3, 0x0

    invoke-direct {v6, p0, v2, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/FeedAdapter$1;)V

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;Lcom/instagram/android/model/Media;IZLcom/instagram/android/video/ui/MediaActionsView$VideoIconState;Landroid/view/View$OnClickListener;)V

    .line 1118
    :goto_0
    return-void

    .line 1104
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;

    invoke-direct {p0, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getMediaList(I)Ljava/util/ArrayList;

    move-result-object v4

    if-nez p3, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne p3, v5, :cond_2

    :goto_2
    invoke-static {v0, v4, v1, v2}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 1112
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)V

    goto :goto_0

    .line 1084
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public blacklistAutoplay()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 527
    iput v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    .line 530
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->allowAutoplayFirstFeedItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 536
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 537
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 539
    if-ne v1, v3, :cond_2

    .line 541
    iput v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 544
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 545
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 546
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->canAutoplayView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    invoke-direct {p0, v2, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getImageViewAt(Landroid/widget/AbsListView;I)Lcom/instagram/android/widget/ConstrainedProgressImageView;

    move-result-object v4

    .line 548
    if-eqz v4, :cond_3

    .line 549
    sget v0, Lcom/facebook/g;->key_list_position:I

    invoke-virtual {v4, v0}, Lcom/instagram/android/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 550
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    .line 553
    invoke-virtual {v4}, Lcom/instagram/android/widget/ConstrainedProgressImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 554
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 556
    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    sget-object v4, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v4}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 544
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected createView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 1070
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1078
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedMediaRowAdapter:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->newView()Landroid/view/View;

    move-result-object v0

    .line 1076
    :goto_0
    return-object v0

    .line 1074
    :pswitch_1
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mNumberMediaPerRow:I

    invoke-static {p1, v0}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter;->newView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1076
    :pswitch_2
    invoke-static {p1, p3}, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1070
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 981
    add-int/lit8 v0, v0, 0x1

    .line 982
    return v0
.end method

.method public getCurrentScrollState()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentScrollState:I

    return v0
.end method

.method public getFeedFragment()Lcom/instagram/android/fragment/AbstractFeedFragment;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    return-object v0
.end method

.method public getFeedObjectsMediaCount()I
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getMediaCount()I
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->access$2400(Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 996
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getMedia(I)Lcom/instagram/android/model/Media;

    move-result-object v0

    .line 999
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1009
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 1045
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1046
    const/4 v0, 0x2

    .line 1050
    :goto_0
    return v0

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_1

    .line 1048
    const/4 v0, 0x0

    goto :goto_0

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_2

    .line 1050
    const/4 v0, 0x1

    goto :goto_0

    .line 1052
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View mode not handled (for item view type)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 341
    const v0, 0x102000a

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getReadAheadCount()I
    .locals 2

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_0

    .line 987
    const/4 v0, 0x3

    .line 989
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1014
    if-nez p2, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->createView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->bindView(Landroid/content/Context;Landroid/view/View;I)V

    .line 1020
    return-object p2
.end method

.method public getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x3

    return v0
.end method

.method public hasMedia()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->hasMedia()Z

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1038
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1170
    const/4 v0, 0x0

    return v0
.end method

.method protected isValidItemTypeForStickyHeader(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getChildCount()I

    move-result v0

    add-int/2addr v0, p1

    .line 642
    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->filterMedia()V

    .line 964
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->resetStickyHeader()V

    .line 965
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 966
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->refreshStickyHeaderDelayed()V

    .line 967
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->filterMedia()V

    .line 972
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->resetStickyHeader()V

    .line 973
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 974
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->refreshStickyHeaderDelayed()V

    .line 975
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->removeMessages(I)V

    .line 408
    return-void
.end method

.method public onHeaderScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-direct {p0, v1, p1, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setVisibilityOfProfileHeaderAtIndex(ILandroid/widget/AbsListView;I)V

    .line 467
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->setVisibilityOfProfileHeaderAtIndex(ILandroid/widget/AbsListView;I)V

    .line 468
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getStickyHeader()Landroid/view/View;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 485
    invoke-direct {p0, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->recordScrollDirection(I)Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    .line 487
    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/feed/adapter/FeedAdapter;->performLoadMoreCheck(III)V

    .line 490
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getCurrentScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->removeMessages(I)V

    .line 495
    :cond_0
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-lez p3, :cond_1

    .line 497
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->findRowForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 498
    if-nez v0, :cond_4

    .line 499
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->hideLegacyVideoView()V

    .line 519
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mStickyScrollingEnabled:Z

    if-nez v0, :cond_5

    .line 524
    :cond_2
    :goto_1
    return-void

    .line 503
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo()V

    goto :goto_0

    .line 506
    :cond_4
    sget v1, Lcom/facebook/g;->media_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 510
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v4

    sub-int v0, v3, v0

    .line 511
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 512
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 513
    if-ge v0, v1, :cond_1

    .line 514
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo()V

    goto :goto_0

    .line 523
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->performStickyHeader(Landroid/widget/AbsListView;I)V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->updateTagIndicatorOnScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 434
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->testDecode(Landroid/widget/AbsListView;I)V

    .line 435
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->clearMediaDisplayingTags(Landroid/widget/AbsListView;)V

    .line 437
    if-nez p2, :cond_2

    .line 438
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v4, v1, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 444
    :goto_0
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 447
    :cond_0
    iput v3, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPositionNoAutoplay:I

    .line 449
    :cond_1
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    invoke-virtual {v0, v4}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public redrawStickyHeader(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 646
    iget v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentItemPositionOfStickyHeader:I

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->performStickyHeader(Landroid/widget/AbsListView;I)V

    .line 647
    return-void
.end method

.method public releaseVideoOnPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1374
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    if-eqz v0, :cond_0

    .line 1375
    invoke-direct {p0, v1, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo(ZZ)V

    .line 1376
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->release()V

    .line 1377
    iput-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoPlayer:Lcom/instagram/android/video/player/VideoPlayer;

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1382
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getLegacyVideoOverlayViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1384
    :cond_1
    iput-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mLegacyVideoOverlayView:Landroid/view/View;

    .line 1386
    :cond_2
    return-void
.end method

.method public resetStickyHeader()V
    .locals 2

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentMediaOfStickyHeader:Lcom/instagram/android/model/Media;

    .line 476
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getStickyHeader()Landroid/view/View;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_0

    .line 478
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_0
    return-void
.end method

.method public setAdapterRefreshedListener(Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;)V
    .locals 0
    .parameter "adapterRefreshedListener"

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mAdapterRefreshedListener:Lcom/instagram/android/feed/adapter/FeedAdapter$AdapterRefreshedListener;

    .line 1161
    return-void
.end method

.method public setMedia(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p1, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/Media;>;"
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->clearMedia()V

    .line 1186
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addMedia(Ljava/util/ArrayList;)V

    .line 1187
    return-void
.end method

.method public setMediaSetChangeListener(Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;)V
    .locals 0
    .parameter "mediaSetChangeListener"

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaSetChangeListener:Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;

    .line 1182
    return-void
.end method

.method public setStickyScrollingEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mStickyScrollingEnabled:Z

    .line 398
    if-nez p1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getStickyHeader()Landroid/view/View;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_0
    return-void
.end method

.method protected shouldRemainInFeed(Lcom/instagram/android/model/Media;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 1396
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getDeletedStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startHideTagsTimerForMedia(Ljava/lang/String;)V
    .locals 4
    .parameter "mediaId"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 412
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 413
    const-string v2, "MESSAGE_DATA_MEDIA_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 415
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 416
    return-void
.end method

.method public switchMode()V
    .locals 4

    .prologue
    .line 307
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    .line 308
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v2, v0, :cond_2

    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-object v1, v0

    .line 309
    :goto_0
    iput-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    .line 310
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v1, v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getStickyHeader()Landroid/view/View;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo()V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewTypeChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;

    .line 319
    invoke-interface {v0, v2, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;->onChange(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V

    goto :goto_1

    .line 308
    :cond_2
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-object v1, v0

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFeedObjects:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->preloadBitmaps()V
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;->access$1100(Lcom/instagram/android/feed/adapter/FeedAdapter$FeedObjects;)V

    .line 322
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->notifyDataSetChanged()V

    .line 323
    return-void
.end method

.method public tryAutoplayDelayed()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendEmptyMessage(I)Z

    .line 567
    return-void
.end method

.method protected updateTagIndicatorOnScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 420
    iput p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mCurrentScrollState:I

    .line 421
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v1, :cond_1

    .line 422
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 423
    invoke-direct {p0, p1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getImageViewAt(Landroid/widget/AbsListView;I)Lcom/instagram/android/widget/ConstrainedProgressImageView;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/instagram/android/widget/ConstrainedProgressImageView;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-direct {p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getMediaIdFromImage(Lcom/instagram/android/widget/ConstrainedProgressImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->startHideTagsTimerForMedia(Ljava/lang/String;)V

    .line 422
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    return-void
.end method
