.class Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$5;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

.field final synthetic val$media:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$5;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$5;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    const-string v1, "com.instagram.android.fragment.LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID"

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$5;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v2}, Lcom/instagram/android/model/Media;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v2

    iget-object v2, v2, Lcom/instagram/android/location/Venue;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$5;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFragmentManager:Landroid/support/v4/app/p;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$100(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/LocationFeedFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/LocationFeedFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 397
    return-void
.end method
