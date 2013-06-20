.class Lcom/instagram/android/fragment/HashtagFeedFragment$2;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "HashtagFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/HashtagFeedFragment;Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 59
    .local p4, x2:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$2;->this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/fragment/HashtagFeedFragment$2;->this$0:Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/HashtagFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "feed/tag/%s/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
