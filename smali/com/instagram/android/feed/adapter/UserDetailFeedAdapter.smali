.class public Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;
.super Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;
.source "UserDetailFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field private mPhotosOfYouCount:I

.field private mResponseStatus:Lcom/instagram/api/ApiResponseStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 1
    .parameter "context"
    .parameter "listenerDelegate"
    .parameter "viewMode"
    .parameter "feedFragment"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/feed/adapter/SimpleHeaderFeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mPhotosOfYouCount:I

    .line 21
    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 7
    .parameter "context"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/User;

    iget v2, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mPhotosOfYouCount:I

    iget-object v4, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mLoadManager:Landroid/support/v4/app/af;

    iget-object v5, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    move-object v3, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;Lcom/instagram/android/model/User;ILandroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;)V

    .line 38
    return-void
.end method

.method protected createHeaderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public failedToFetchUser()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mResponseStatus:Lcom/instagram/api/ApiResponseStatus;

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusError:Lcom/instagram/api/ApiResponseStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public failedToFindUser()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mResponseStatus:Lcom/instagram/api/ApiResponseStatus;

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusObjectNotFound:Lcom/instagram/api/ApiResponseStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotosOfYouCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mPhotosOfYouCount:I

    return v0
.end method

.method public setEmptyUser(Lcom/instagram/api/ApiResponseStatus;)V
    .locals 1
    .parameter "responseStatus"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mResponseStatus:Lcom/instagram/api/ApiResponseStatus;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->setHeaderObject(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public setPhotosOfYouCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 46
    iput p1, p0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->mPhotosOfYouCount:I

    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method
