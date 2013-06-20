.class public Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;
.super Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;
.source "HashtagFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter",
        "<",
        "Lcom/instagram/android/model/Hashtag;",
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
    .locals 2
    .parameter "context"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/HashtagFeedHeaderRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/HashtagFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/Hashtag;

    invoke-static {v0, v1, p1, p0}, Lcom/instagram/android/feed/adapter/row/HashtagFeedHeaderRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/HashtagFeedHeaderRowAdapter$Holder;Lcom/instagram/android/model/Hashtag;Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 27
    return-void
.end method

.method protected createHeaderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-static {p1}, Lcom/instagram/android/feed/adapter/row/HashtagFeedHeaderRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
