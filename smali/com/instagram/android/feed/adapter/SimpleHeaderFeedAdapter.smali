.class public abstract Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;
.super Lcom/instagram/android/feed/adapter/FeedAdapter;
.source "SimpleHeaderFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/android/feed/adapter/FeedAdapter;"
    }
.end annotation


# static fields
.field private static final NUM_VIEW_TYPES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UserDetailFeedAdapter"

.field private static final VIEW_TYPE_HEADER_OBJECT:I


# instance fields
.field protected headerObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
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
    .line 22
    .local p0, this:Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;,"Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/feed/adapter/FeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->headerObject:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method protected abstract bindHeaderView(Landroid/content/Context;Landroid/view/View;I)V
.end method

.method protected bindView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .parameter "context"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 78
    .local p0, this:Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;,"Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->bindView(Landroid/content/Context;Landroid/view/View;I)V

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->getItemViewType(I)I

    move-result v0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->adjustChildViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->bindHeaderView(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract createHeaderView(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected createView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 61
    .local p0, this:Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;,"Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->createView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->getItemViewType(I)I

    move-result v0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->adjustChildViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->createHeaderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->headerObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    .local p0, this:Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;,"Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->headerObject:Ljava/lang/Object;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 52
    .local p0, this:Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;,"Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItemViewType(I)I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->adjustChildViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 97
    .local p0, this:Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;,"Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 98
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->adjustedItemPosition(I)I

    move-result v0

    invoke-super {p0, p1, v0, p3, p4}, Lcom/instagram/android/feed/adapter/FeedAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->adjustedItemPosition(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->onHeaderScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0
.end method

.method public setHeaderObject(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;,"Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter<TT;>;"
    .local p1, tag:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->headerObject:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method
