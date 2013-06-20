.class Lcom/instagram/android/fragment/UserListFragment$7;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$7;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$7;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/adapter/SectionedUserListAdapter;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$7;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/SectionedUserListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getListObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$7;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mClickThrough:Z
    invoke-static {v1}, Lcom/instagram/android/fragment/UserListFragment;->access$2100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/instagram/android/model/User;->isUserObject(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    check-cast v0, Lcom/instagram/android/model/User;

    .line 506
    new-instance v1, Lcom/instagram/util/FragmentNavigator;

    iget-object v2, p0, Lcom/instagram/android/fragment/UserListFragment$7;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/UserListFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/util/FragmentNavigator;->toProfile(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    .line 508
    :cond_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$7;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
