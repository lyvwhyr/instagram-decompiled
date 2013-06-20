.class Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "UserDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserDetailFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/fragment/UserDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getApiResponseStatus()Lcom/instagram/api/ApiResponseStatus;

    move-result-object v1

    #setter for: Lcom/instagram/android/fragment/UserDetailFragment;->mLastApiResponseStatus:Lcom/instagram/api/ApiResponseStatus;
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserDetailFragment;->access$402(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/api/ApiResponseStatus;)Lcom/instagram/api/ApiResponseStatus;

    .line 190
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->setHeaderObject(Ljava/lang/Object;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    #getter for: Lcom/instagram/android/fragment/UserDetailFragment;->mLastApiResponseStatus:Lcom/instagram/api/ApiResponseStatus;
    invoke-static {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->access$400(Lcom/instagram/android/fragment/UserDetailFragment;)Lcom/instagram/api/ApiResponseStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->setEmptyUser(Lcom/instagram/api/ApiResponseStatus;)V

    goto :goto_0
.end method

.method protected onSuccess(Lcom/instagram/android/model/User;)V
    .locals 5
    .parameter "responseObject"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    iput-object p1, v1, Lcom/instagram/android/fragment/UserDetailFragment;->mUser:Lcom/instagram/android/model/User;

    .line 174
    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    sget-object v2, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusOk:Lcom/instagram/api/ApiResponseStatus;

    #setter for: Lcom/instagram/android/fragment/UserDetailFragment;->mLastApiResponseStatus:Lcom/instagram/api/ApiResponseStatus;
    invoke-static {v1, v2}, Lcom/instagram/android/fragment/UserDetailFragment;->access$402(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/api/ApiResponseStatus;)Lcom/instagram/api/ApiResponseStatus;

    .line 176
    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    iget-object v2, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    #calls: Lcom/instagram/android/fragment/UserDetailFragment;->getUserId()Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/fragment/UserDetailFragment;->access$500(Lcom/instagram/android/fragment/UserDetailFragment;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/instagram/android/fragment/UserDetailFragment;->registerBroadcastReceivers(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/instagram/android/fragment/UserDetailFragment;->access$600(Lcom/instagram/android/fragment/UserDetailFragment;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->setHeaderObject(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    const/4 v1, 0x1

    new-instance v2, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailFeedRequestCallbacks;

    iget-object v3, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailFeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/fragment/UserDetailFragment$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/UserDetailFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->onUserUpdated()V

    .line 184
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;->onSuccess(Lcom/instagram/android/model/User;)V

    return-void
.end method
