.class public Lcom/instagram/android/feed/adapter/LocationFeedAdapter;
.super Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;
.source "LocationFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter",
        "<",
        "Lcom/instagram/android/location/Venue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter "context"
    .parameter "listenerDelegate"
    .parameter "viewMode"
    .parameter "feedFragment"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .parameter "context"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/LocationFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/location/Venue;

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/LocationFeedAdapter;->mFeedFragment:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/LocationRowAdapter$Holder;Lcom/instagram/android/location/Venue;Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 27
    return-void
.end method

.method protected createHeaderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-static {p1}, Lcom/instagram/android/feed/adapter/row/LocationRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
