.class final Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;
.super Ljava/lang/Object;
.source "UserHeaderRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragmentManager:Landroid/support/v4/app/p;

.field final synthetic val$user:Lcom/instagram/android/model/User;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/User;Landroid/content/Context;Landroid/support/v4/app/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;->val$user:Lcom/instagram/android/model/User;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 96
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FETCH_URL"

    const-string v3, "friendships/%s/followers/"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;->val$user:Lcom/instagram/android/model/User;

    invoke-virtual {v6}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;->val$context:Landroid/content/Context;

    sget v4, Lcom/facebook/k;->followers_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$3;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 104
    return-void
.end method
