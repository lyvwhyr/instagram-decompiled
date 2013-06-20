.class Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field private final mGridButton:Landroid/widget/Button;

.field private final mListButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .parameter "adapter"
    .parameter "gridButton"
    .parameter "listButton"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    .line 47
    iput-object p2, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mGridButton:Landroid/widget/Button;

    .line 48
    iput-object p3, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mListButton:Landroid/widget/Button;

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->switchMode()V

    .line 54
    iget-object v3, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mGridButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v0

    sget-object v4, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 55
    iget-object v0, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mListButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$SwitchModeListener;->mAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-virtual {v3}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v1, v2

    .line 55
    goto :goto_1
.end method
