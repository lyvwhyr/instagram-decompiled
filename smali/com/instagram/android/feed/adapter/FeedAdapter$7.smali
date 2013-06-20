.class Lcom/instagram/android/feed/adapter/FeedAdapter$7;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$7;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$7;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mMediaPositionCurrentlyPlayingVideo:I
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1600(Lcom/instagram/android/feed/adapter/FeedAdapter;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1621
    :goto_0
    return-void

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$7;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->hideLegacyVideoView()V
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$3000(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    goto :goto_0
.end method
