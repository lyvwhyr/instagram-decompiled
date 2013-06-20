.class Lcom/instagram/android/fragment/AbstractFeedFragment$8;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/adapter/FeedAdapter$MediaSetChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$8;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaAdded(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/Media;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    .line 347
    iget-object v2, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$8;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$8;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #getter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mediaUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$200(Lcom/instagram/android/fragment/AbstractFeedFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/model/Media;->getMediaBroadcastString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method public onMediaCleared()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$8;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$8;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    #getter for: Lcom/instagram/android/fragment/AbstractFeedFragment;->mediaUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->access$200(Lcom/instagram/android/fragment/AbstractFeedFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 342
    return-void
.end method
