.class public Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"


# instance fields
.field private final A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    invoke-direct {v0, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    .line 102
    return-void
.end method


# virtual methods
.method public create()Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;
    .locals 1
    .parameter "activity"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #setter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$002(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/app/Activity;)Landroid/app/Activity;

    .line 106
    return-object p0
.end method

.method public setConversionTracker(Lcom/instagram/android/fragment/ConversionTrackable;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;
    .locals 1
    .parameter "source"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #setter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mConversionTrackableSource:Lcom/instagram/android/fragment/ConversionTrackable;
    invoke-static {v0, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$402(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/fragment/ConversionTrackable;)Lcom/instagram/android/fragment/ConversionTrackable;

    .line 132
    return-object p0
.end method

.method public setFeedAdapter(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;
    .locals 1
    .parameter "adapter"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #setter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFeedAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;
    invoke-static {v0, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$502(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter;

    .line 137
    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/p;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;
    .locals 1
    .parameter "manager"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #setter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v0, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$102(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/support/v4/app/p;)Landroid/support/v4/app/p;

    .line 111
    return-object p0
.end method

.method public setLoaderManager(Landroid/support/v4/app/af;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;
    .locals 1
    .parameter "manager"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #setter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mLoaderManager:Landroid/support/v4/app/af;
    invoke-static {v0, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$202(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/support/v4/app/af;)Landroid/support/v4/app/af;

    .line 116
    return-object p0
.end method

.method public setOnTouchListener(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;
    .locals 2
    .parameter "listener"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;->A:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder$1;-><init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;)V

    #setter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$302(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 127
    return-object p0
.end method
