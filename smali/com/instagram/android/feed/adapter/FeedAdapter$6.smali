.class Lcom/instagram/android/feed/adapter/FeedAdapter$6;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/mediacache/IgVideoCache$ProgressListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field final synthetic val$videoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$6;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$6;->val$videoUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$6;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mHandler:Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2100(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$6;->val$videoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendPlayMessage(Landroid/net/Uri;)V

    .line 1302
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1306
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$6;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->stopVideo(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2500(Lcom/instagram/android/feed/adapter/FeedAdapter;ZZ)V

    .line 1307
    return-void
.end method
