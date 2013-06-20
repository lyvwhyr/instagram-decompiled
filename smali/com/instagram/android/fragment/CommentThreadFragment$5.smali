.class Lcom/instagram/android/fragment/CommentThreadFragment$5;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "CommentThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Lcom/instagram/android/model/MediaFeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$5;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFinished()V

    .line 140
    return-void
.end method

.method public onRequestStart()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestStart()V

    .line 135
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V
    .locals 3
    .parameter "responseObject"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$5;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-virtual {p1}, Lcom/instagram/android/model/MediaFeedResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    #setter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1, v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$002(Lcom/instagram/android/fragment/CommentThreadFragment;Lcom/instagram/android/model/Media;)Lcom/instagram/android/model/Media;

    .line 127
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$5;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #getter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mAdapter:Lcom/instagram/android/adapter/CommentThreadAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$100(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/adapter/CommentThreadAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$5;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #getter for: Lcom/instagram/android/fragment/CommentThreadFragment;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$000(Lcom/instagram/android/fragment/CommentThreadFragment;)Lcom/instagram/android/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/CommentThreadAdapter;->setMedia(Lcom/instagram/android/model/Media;)V

    .line 128
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$5;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->configureAutoComplete()V
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$300(Lcom/instagram/android/fragment/CommentThreadFragment;)V

    .line 129
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$5;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->validate()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$200(Lcom/instagram/android/fragment/CommentThreadFragment;)Z

    .line 130
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    check-cast p1, Lcom/instagram/android/model/MediaFeedResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/CommentThreadFragment$5;->onSuccess(Lcom/instagram/android/model/MediaFeedResponse;)V

    return-void
.end method
