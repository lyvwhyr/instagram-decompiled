.class Lcom/instagram/android/fragment/FindFriendsFragment$5$1;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/FindFriendsFragment$5;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$5$1;->this$1:Lcom/instagram/android/fragment/FindFriendsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$5$1;->this$1:Lcom/instagram/android/fragment/FindFriendsFragment$5;

    iget-object v0, v0, Lcom/instagram/android/fragment/FindFriendsFragment$5;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;-><init>()V

    iget-object v2, p0, Lcom/instagram/android/fragment/FindFriendsFragment$5$1;->this$1:Lcom/instagram/android/fragment/FindFriendsFragment$5;

    iget-object v2, v2, Lcom/instagram/android/fragment/FindFriendsFragment$5;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/FindFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 309
    return-void
.end method
