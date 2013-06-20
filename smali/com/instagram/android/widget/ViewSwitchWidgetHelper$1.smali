.class final Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"

# interfaces
.implements Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;


# instance fields
.field final synthetic val$adapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field final synthetic val$gridButton:Landroid/widget/Button;

.field final synthetic val$listButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;->val$gridButton:Landroid/widget/Button;

    iput-object p2, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;->val$listButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;->val$adapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V
    .locals 3
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;->val$gridButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;->val$listButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/instagram/android/widget/ViewSwitchWidgetHelper$1;->val$adapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/widget/ViewSwitchWidgetHelper;->bindViewInternal(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    invoke-static {p2, v0, v1, v2}, Lcom/instagram/android/widget/ViewSwitchWidgetHelper;->access$000(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Landroid/widget/Button;Landroid/widget/Button;Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 20
    return-void
.end method
