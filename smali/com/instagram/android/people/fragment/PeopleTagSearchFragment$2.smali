.class Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "PeopleTagSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mServerSearchResultsVisible:Z
    invoke-static {v0, v1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$202(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Z)Z

    .line 240
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mIsLoading:Z

    .line 241
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->hideSearchFooter()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$700(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    .line 242
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mIsLoading:Z

    .line 234
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->animateSearchFooter()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$1000(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    .line 235
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 214
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, userList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 223
    iget-object v2, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;
    invoke-static {v2}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$800(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/android/people/model/PeopleTagCollection;->containsUser(Lcom/instagram/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$300(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->appendItemsWithFilteringOfPreviousItems(Ljava/util/ArrayList;)V

    .line 228
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$2;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$900(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 229
    return-void
.end method
