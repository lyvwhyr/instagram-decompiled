.class Lcom/instagram/android/fragment/CommentThreadFragment$17;
.super Lcom/instagram/api/loaderrequest/MediaFeedRequest;
.source "CommentThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;Landroid/support/v4/app/Fragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 608
    .local p4, x2:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$17;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/api/loaderrequest/MediaFeedRequest;-><init>(Landroid/support/v4/app/Fragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getBaseFeedPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 611
    const-string v0, "media/%s/info/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/CommentThreadFragment$17;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/CommentThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.instagram.android.fragment.CommentThreadFragment.INTENT_EXTRA_MEDIA_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
