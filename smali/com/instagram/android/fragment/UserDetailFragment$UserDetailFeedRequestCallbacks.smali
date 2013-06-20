.class Lcom/instagram/android/fragment/UserDetailFragment$UserDetailFeedRequestCallbacks;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;
.source "UserDetailFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserDetailFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailFeedRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/fragment/UserDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailFeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected showRequestFailedFeedback(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    const-string v1, "Not authorized to view user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;->showRequestFailedFeedback(Lcom/instagram/api/ApiResponse;)V

    goto :goto_0
.end method
