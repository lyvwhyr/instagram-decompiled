.class public Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;
.super Lcom/instagram/android/feed/adapter/FeedAdapter;
.source "PhotosOfYouFeedAdapter.java"


# instance fields
.field private mIsCurrentUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter "context"
    .parameter "listenerDelegate"
    .parameter "viewMode"
    .parameter "feedFragment"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/feed/adapter/FeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    .line 20
    return-void
.end method


# virtual methods
.method public setIsCurrentUser(Z)V
    .locals 0
    .parameter "isCurrentUser"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;->mIsCurrentUser:Z

    .line 24
    return-void
.end method

.method protected shouldRemainInFeed(Lcom/instagram/android/model/Media;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/instagram/android/people/adapter/PhotosOfYouFeedAdapter;->mIsCurrentUser:Z

    if-eqz v0, :cond_1

    .line 31
    invoke-super {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->shouldRemainInFeed(Lcom/instagram/android/model/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->isPhotoOfCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->shouldRemainInFeed(Lcom/instagram/android/model/Media;)Z

    move-result v0

    goto :goto_0
.end method
