.class Lcom/instagram/android/feed/adapter/FeedAdapter$10;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/facebook/content/b;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$10;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$10;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->hideLegacyVideoView()V
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$3000(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    .line 1669
    return-void
.end method
