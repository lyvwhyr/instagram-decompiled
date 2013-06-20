.class public Lcom/instagram/android/feed/adapter/MainFeedAdapter;
.super Lcom/instagram/android/feed/adapter/FeedAdapter;
.source "MainFeedAdapter.java"


# static fields
.field private static final NUM_VIEW_TYPES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MainFeedAdapter"

.field private static final VIEW_TYPE_FEED_MESSAGES:I = 0x1

.field private static final VIEW_TYPE_PENDING_MEDIA:I


# instance fields
.field private mFeedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FeedMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/PendingMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 1
    .parameter "context"
    .parameter "listenerDelegate"
    .parameter "viewMode"
    .parameter "feedFragment"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/feed/adapter/FeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mPendingMedia:Ljava/util/List;

    .line 34
    return-void
.end method

.method private getFeedMessagesCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPendingMediaCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mPendingMedia:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mPendingMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected bindFeedMessagesView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .parameter "context"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 148
    const/4 v2, 0x0

    move-object v0, p2

    .line 151
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/FeedMessage;

    move-object v1, p2

    .line 155
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p0}, Lcom/instagram/android/model/FeedMessage;->createView(Landroid/content/Context;Lcom/instagram/android/feed/adapter/MainFeedAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/FeedMessage;

    move-object v1, p2

    .line 160
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/FeedMessage;->bind(Ljava/lang/Object;)V

    .line 161
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    return-void
.end method

.method protected bindView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .parameter "context"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->bindView(Landroid/content/Context;Landroid/view/View;I)V

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getItemViewType(I)I

    move-result v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustChildViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/PendingMedia;

    invoke-static {p1, v0, v1}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter;->bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;Lcom/instagram/android/model/PendingMedia;)V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustChildViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->bindFeedMessagesView(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createFeedMessagesView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    return-object v0
.end method

.method protected createView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->createView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getItemViewType(I)I

    move-result v0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustChildViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 104
    invoke-static {p1}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustChildViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 106
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->createFeedMessagesView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getFeedMessagesCount()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getPendingMediaCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getFeedMessagesCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mPendingMedia:Ljava/util/List;

    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getFeedMessagesCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 81
    invoke-super {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItemViewType(I)I

    move-result v0

    .line 89
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/instagram/android/model/PendingMedia;

    if-eqz v1, :cond_1

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustChildViewType(I)I

    move-result v0

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustChildViewType(I)I

    move-result v0

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled instance type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPendingMedia()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/PendingMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mPendingMedia:Ljava/util/List;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected isValidItemTypeForStickyHeader(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getChildCount()I

    move-result v1

    add-int/2addr v1, p1

    .line 70
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustChildViewType(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 169
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustedItemPosition(I)I

    move-result v0

    invoke-super {p0, p1, v0, p3, p4}, Lcom/instagram/android/feed/adapter/FeedAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->adjustedItemPosition(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->onHeaderScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0
.end method

.method public removeFeedMessage(Lcom/instagram/android/model/FeedMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public removeMapReviewMessage()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/FeedMessage;

    .line 192
    instance-of v2, v0, Lcom/instagram/android/model/MapReviewFeedMessage;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->notifyDataSetChanged()V

    .line 198
    :cond_2
    return-void
.end method

.method public setFeedMessages(Ljava/util/List;)V
    .locals 0
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
    .line 180
    .local p1, feedMessages:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/FeedMessage;>;"
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mFeedMessages:Ljava/util/List;

    .line 181
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method

.method public setPendingMedia(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/PendingMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/PendingMedia;>;"
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->mPendingMedia:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/MainFeedAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method
