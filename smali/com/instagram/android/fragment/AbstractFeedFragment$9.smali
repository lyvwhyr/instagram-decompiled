.class Lcom/instagram/android/fragment/AbstractFeedFragment$9;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/adapter/FeedAdapter$ViewTypeChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$9;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V
    .locals 1
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$9;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #calls: Lcom/instagram/android/fragment/AbstractFeedFragment;->configureForViewMode(Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V
    invoke-static {v0, p2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$300(Lcom/instagram/android/fragment/AbstractFeedFragment;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;)V

    .line 358
    return-void
.end method
