.class Lcom/instagram/android/fragment/FindFriendsFragment$1;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindFriendsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$1;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/menu/MenuItem;

    .line 120
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->find_friends_item_from_my_contact_list:I

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$1;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    #calls: Lcom/instagram/android/fragment/FindFriendsFragment;->confirmAddressDialog()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$100(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->find_friends_item_search_names_and_usernames:I

    if-ne v1, v2, :cond_2

    .line 124
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$1;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/CompositeSearchFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/CompositeSearchFragment;-><init>()V

    invoke-static {v0, v1, v3}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->find_friends_item_suggested_users:I

    if-ne v1, v2, :cond_3

    .line 127
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$1;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;-><init>()V

    invoke-static {v0, v1, v3}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v1

    sget v2, Lcom/facebook/k;->find_friends_item_facebook_friends:I

    if-ne v1, v2, :cond_5

    .line 130
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$1;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/instagram/android/fragment/FindFriendsFragment;->showFacebookList(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$200(Lcom/instagram/android/fragment/FindFriendsFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$1;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    sget-object v2, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/fragment/FindFriendsFragment$1;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    #getter for: Lcom/instagram/android/fragment/FindFriendsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;
    invoke-static {v3}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$300(Lcom/instagram/android/fragment/FindFriendsFragment;)Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    goto :goto_0

    .line 142
    :cond_5
    invoke-virtual {v0}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v0

    sget v1, Lcom/facebook/k;->find_friends_item_twitter_friends:I

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
