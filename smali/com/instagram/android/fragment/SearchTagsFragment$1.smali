.class Lcom/instagram/android/fragment/SearchTagsFragment$1;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "SearchTagsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/Hashtag;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SearchTagsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SearchTagsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/instagram/android/fragment/SearchTagsFragment$1;->this$0:Lcom/instagram/android/fragment/SearchTagsFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment$1;->this$0:Lcom/instagram/android/fragment/SearchTagsFragment;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/SearchTagsFragment;->mIsLoading:Z

    .line 51
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 52
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment$1;->this$0:Lcom/instagram/android/fragment/SearchTagsFragment;

    #calls: Lcom/instagram/android/fragment/SearchTagsFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchTagsFragment;->access$100(Lcom/instagram/android/fragment/SearchTagsFragment;)V

    .line 53
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment$1;->this$0:Lcom/instagram/android/fragment/SearchTagsFragment;

    iput-boolean v1, v0, Lcom/instagram/android/fragment/SearchTagsFragment;->mIsLoading:Z

    .line 44
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 45
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment$1;->this$0:Lcom/instagram/android/fragment/SearchTagsFragment;

    #calls: Lcom/instagram/android/fragment/SearchTagsFragment;->updateProgressBarState()V
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchTagsFragment;->access$100(Lcom/instagram/android/fragment/SearchTagsFragment;)V

    .line 46
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/SearchTagsFragment$1;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Hashtag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, responseObject:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/Hashtag;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment$1;->this$0:Lcom/instagram/android/fragment/SearchTagsFragment;

    #getter for: Lcom/instagram/android/fragment/SearchTagsFragment;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchTagsFragment;->access$000(Lcom/instagram/android/fragment/SearchTagsFragment;)Lcom/instagram/android/adapter/HashtagListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/adapter/HashtagListAdapter;->appendItemsWithFilteringOfPreviousItems(Ljava/util/ArrayList;)V

    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchTagsFragment$1;->this$0:Lcom/instagram/android/fragment/SearchTagsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/SearchTagsFragment;->setSelection(I)V

    .line 39
    return-void
.end method
