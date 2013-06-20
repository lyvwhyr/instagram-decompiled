.class public Lcom/instagram/android/widget/ViewSwitchWidgetHelper;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper;->bindViewInternal(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    return-void
.end method

.method private static bindViewInternal(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 4
    .parameter "viewType"
    .parameter "gridButton"
    .parameter "listButton"
    .parameter "adapter"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne p0, v0, :cond_0

    .line 27
    new-instance v0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;

    invoke-direct {v0, p3, p1, p2}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :goto_0
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne p0, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 35
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne p0, v0, :cond_2

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 36
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;

    invoke-direct {v0, p3, p1, p2}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 34
    goto :goto_1

    :cond_2
    move v1, v2

    .line 35
    goto :goto_2
.end method

.method public static bindViews(Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 1
    .parameter "gridButton"
    .parameter "listButton"
    .parameter "adapter"

    .prologue
    .line 14
    invoke-virtual {p2}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper;->bindViewInternal(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 15
    new-instance v0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;-><init>(Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    invoke-virtual {p2, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->addViewTypeChangeListener(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;)V

    .line 22
    return-void
.end method
