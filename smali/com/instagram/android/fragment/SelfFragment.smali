.class public Lcom/instagram/android/fragment/SelfFragment;
.super Lcom/instagram/android/fragment/UserDetailFragment;
.source "SelfFragment.java"


# static fields
.field public static final BROADCAST_NEW_PHOTOS_OF_YOU:Ljava/lang/String; = "com.instagram.android.fragment.SelfFragment.BROADCAST_NEW_PHOTOS_OF_YOU"

.field public static final BROADCAST_SELF_PROFILE_SHOWN:Ljava/lang/String; = "com.instagram.android.fragment.SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

.field public static final EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT:Ljava/lang/String; = "com.instagram.android.fragment.SelfFragment.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"


# instance fields
.field private final mActionReciever:Lcom/facebook/content/b;

.field private mBroadcastManager:Lcom/facebook/b/a/k;

.field private mPhotosOfYouCountReceiver:Lcom/facebook/b/a/j;

.field private mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/instagram/android/fragment/SelfFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SelfFragment$1;-><init>(Lcom/instagram/android/fragment/SelfFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mActionReciever:Lcom/facebook/content/b;

    return-void
.end method


# virtual methods
.method protected configureUser()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mUser:Lcom/instagram/android/model/User;

    .line 83
    return-void
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/instagram/android/fragment/SelfFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SelfFragment$2;-><init>(Lcom/instagram/android/fragment/SelfFragment;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/UserDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    invoke-direct {v0, p0, p1}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SelfFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->getPhotosOfYouCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->setPhotosOfYouCount(I)V

    .line 59
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SelfFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    invoke-virtual {v0}, Lcom/facebook/b/a/k;->a()Lcom/facebook/b/a/i;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.SelfFragment.BROADCAST_NEW_PHOTOS_OF_YOU"

    iget-object v2, p0, Lcom/instagram/android/fragment/SelfFragment;->mActionReciever:Lcom/facebook/content/b;

    invoke-interface {v0, v1, v2}, Lcom/facebook/b/a/i;->a(Ljava/lang/String;Lcom/facebook/content/b;)Lcom/facebook/b/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/a/i;->a()Lcom/facebook/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mPhotosOfYouCountReceiver:Lcom/facebook/b/a/j;

    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mPhotosOfYouCountReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->b()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mPhotosOfYouCountReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->c()V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->onPause()V

    .line 147
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setUpdateAvatarHelper(Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;)V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->onResume()V

    .line 140
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SelfFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setUpdateAvatarHelper(Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;)V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mBroadcastManager:Lcom/facebook/b/a/k;

    const-string v1, "com.instagram.android.fragment.SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

    invoke-virtual {v0, v1}, Lcom/facebook/b/a/k;->a(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method
