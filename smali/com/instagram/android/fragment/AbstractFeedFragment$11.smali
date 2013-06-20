.class Lcom/instagram/android/fragment/AbstractFeedFragment$11;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/listener/DoubleTapMediaListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$11;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/instagram/android/model/Media;)V
    .locals 7
    .parameter "media"

    .prologue
    const/4 v4, 0x1

    .line 418
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->isHasLiked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p1, v4}, Lcom/instagram/android/model/Media;->updatedHasLiked(Z)V

    .line 421
    new-instance v0, Lcom/instagram/api/loaderrequest/LikeRequest;

    iget-object v1, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$11;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$11;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/AbstractFeedFragment$11;->this$0:Lcom/instagram/android/fragment/AbstractFeedFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/AbstractFeedFragment;->getConversionTrackingData()Ljava/util/Map;

    move-result-object v6

    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/instagram/api/loaderrequest/LikeRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/Media;ZZLjava/util/Map;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/LikeRequest;->perform()V

    .line 424
    :cond_0
    return-void
.end method
