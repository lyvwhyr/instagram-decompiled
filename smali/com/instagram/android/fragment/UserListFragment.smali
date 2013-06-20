.class public Lcom/instagram/android/fragment/UserListFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "UserListFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENTS_ADDRESSBOOK:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_ADDRESSBOOK"

.field public static final ARGUMENTS_CLICK_THROUGH:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

.field public static final ARGUMENTS_FACEBOOK:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FACEBOOK"

.field public static final ARGUMENTS_FETCH_URL:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FETCH_URL"

.field public static final ARGUMENTS_FOLLOW_ALL_BUTTON:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

.field public static final ARGUMENTS_FOLLOW_BUTTONS:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

.field public static final ARGUMENTS_REFRESH_FEED_ON_EXIT:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_REFRESH_FEED_ON_EXIT"

.field public static final ARGUMENTS_SEARCH_STRING:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_SEARCH_STRING"

.field public static final ARGUMENTS_SEARCH_URL:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_SEARCH_URL"

.field public static final ARGUMENTS_TITLE:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

.field public static final ARGUMENTS_TWITTER:Ljava/lang/String; = "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TWITTER"

.field private static final MAX_USERS_BEFORE_PROMPT:I = 0x32


# instance fields
.field private fetchBulkFollowingStatusCallback:Lcom/instagram/api/AbstractStreamingApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isSectioned:Z

.field private mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

.field private mClickThrough:Z

.field private mFollowAllButton:Landroid/widget/Button;

.field private mFollowAllButtonVisibility:I

.field private mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLastRequestFailed:Z

.field private mShowFollowAllButton:Z

.field private mShowFollowButtons:Z

.field private mTitle:Ljava/lang/String;

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private userListCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;
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
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/instagram/android/fragment/UserListFragment;->isSectioned:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mClickThrough:Z

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mHandler:Landroid/os/Handler;

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButtonVisibility:I

    .line 273
    iput-boolean v1, p0, Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z

    .line 275
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserListFragment$5;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->fetchBulkFollowingStatusCallback:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    .line 286
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserListFragment$6;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->userListCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    .line 420
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/UserListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/instagram/android/fragment/UserListFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserListFragment;->followAllFriends(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->gotoNextStepInSignupFlow()V

    return-void
.end method

.method static synthetic access$1400(Lcom/instagram/android/fragment/UserListFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/instagram/android/fragment/UserListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment;->mUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->isSectioned:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mShowFollowButtons:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isContactsList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/instagram/android/fragment/UserListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->updateProgressBarState()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isFacebookList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/instagram/android/fragment/UserListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/instagram/android/fragment/UserListFragment;->mLastRequestFailed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mClickThrough:Z

    return v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->promptIfNecessaryAndGoToNextStepInSignupFlow()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mShowFollowAllButton:Z

    return v0
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/instagram/android/fragment/UserListFragment;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$700(Lcom/instagram/android/fragment/UserListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButtonVisibility:I

    return v0
.end method

.method static synthetic access$702(Lcom/instagram/android/fragment/UserListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButtonVisibility:I

    return p1
.end method

.method static synthetic access$800(Lcom/instagram/android/fragment/UserListFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->getFollowAllOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/fragment/UserListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$902(Lcom/instagram/android/fragment/UserListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z

    return p1
.end method

.method private filterFollowedUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 264
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v3

    sget-object v4, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/model/User;->isSelf(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_1
    return-object v1
.end method

.method private followAllFriends(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/fragment/UserListFragment$FollowAllAsyncRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserListFragment;Lcom/instagram/android/fragment/UserListFragment$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractStreamingApiCallbacks;)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->filterFollowedUsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/FollowAllAsyncRequest;->performForUsers(Ljava/lang/Iterable;)V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Lcom/instagram/api/loaderrequest/FollowAllRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/fragment/UserListFragment$FollowAllRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserListFragment;Lcom/instagram/android/fragment/UserListFragment$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/FollowAllRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractStreamingApiCallbacks;)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->filterFollowedUsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/FollowAllRequest;->performForUsers(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method private getFollowAllOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserListFragment$2;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    return-object v0
.end method

.method private gotoNextStepInSignupFlow()V
    .locals 3

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isFacebookList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private isContactsList()Z
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_ADDRESSBOOK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isFacebookList()Z
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FACEBOOK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSignUpFlow()Z
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private promptIfNecessaryAndGoToNextStepInSignupFlow()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    .line 208
    invoke-static {}, Lcom/instagram/android/login/fragment/RegisterFragment;->getNumberOfUsersFollowed()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 213
    :goto_0
    iget-object v3, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v3}, Lcom/instagram/android/adapter/UserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v3}, Lcom/instagram/android/adapter/UserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/instagram/android/fragment/UserListFragment;->mLastRequestFailed:Z

    if-nez v3, :cond_0

    move v0, v2

    .line 218
    :cond_0
    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/k;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v2, Lcom/facebook/k;->yes_skip_this_step:I

    new-instance v3, Lcom/instagram/android/fragment/UserListFragment$4;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/UserListFragment$4;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/UserListFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserListFragment$3;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 238
    :goto_1
    return-void

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->gotoNextStepInSignupFlow()V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private updateProgressBarState()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 442
    return-void
.end method


# virtual methods
.method public fetchData()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 545
    iput-boolean v4, p0, Lcom/instagram/android/fragment/UserListFragment;->mLastRequestFailed:Z

    .line 547
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FETCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FETCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$8;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    iget-object v5, p0, Lcom/instagram/android/fragment/UserListFragment;->userListCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/UserListFragment$8;-><init>(Lcom/instagram/android/fragment/UserListFragment;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform()V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_SEARCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_SEARCH_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_SEARCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 561
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_SEARCH_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 562
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$9;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    iget-object v5, p0, Lcom/instagram/android/fragment/UserListFragment;->userListCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/UserListFragment$9;-><init>(Lcom/instagram/android/fragment/UserListFragment;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0, v7}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_2
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isContactsList()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$10;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    iget-object v5, p0, Lcom/instagram/android/fragment/UserListFragment;->userListCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/fragment/UserListFragment$10;-><init>(Lcom/instagram/android/fragment/UserListFragment;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 591
    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform()V

    goto :goto_0

    .line 592
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isFacebookList()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 594
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$11;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    iget-object v5, p0, Lcom/instagram/android/fragment/UserListFragment;->userListCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/fragment/UserListFragment$11;-><init>(Lcom/instagram/android/fragment/UserListFragment;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 609
    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform()V

    goto :goto_0

    .line 610
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TWITTER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$12;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    iget-object v5, p0, Lcom/instagram/android/fragment/UserListFragment;->userListCallbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/fragment/UserListFragment$12;-><init>(Lcom/instagram/android/fragment/UserListFragment;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 630
    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserListRequest;->perform()V

    goto/16 :goto_0
.end method

.method public fetchFollowStatusInBulk(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 636
    .local p1, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;"
    const/4 v0, 0x0

    .line 637
    iget-boolean v1, p0, Lcom/instagram/android/fragment/UserListFragment;->isSectioned:Z

    if-eqz v1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->fetchBulkFollowingStatusCallback:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    .line 640
    :cond_0
    new-instance v1, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    .line 642
    invoke-virtual {v1, p1}, Lcom/instagram/api/loaderrequest/FetchBulkFollowingStatusRequest;->performForUsers(Ljava/lang/Iterable;)V

    .line 643
    return-void
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserListFragment$1;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 468
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 470
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mShowFollowAllButton:Z

    .line 471
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mShowFollowButtons:Z

    .line 472
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mClickThrough:Z

    .line 473
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mTitle:Ljava/lang/String;

    .line 475
    iget-boolean v0, p0, Lcom/instagram/android/fragment/UserListFragment;->isSectioned:Z

    if-eqz v0, :cond_3

    .line 476
    new-instance v3, Lcom/instagram/android/adapter/SectionedUserListAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v5

    iget-boolean v6, p0, Lcom/instagram/android/fragment/UserListFragment;->mShowFollowButtons:Z

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isFacebookList()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isContactsList()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    invoke-direct {v3, v4, v5, v6, v0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZ)V

    iput-object v3, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    .line 486
    :goto_2
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/UserListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 488
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->fetchData()V

    .line 489
    return-void

    .line 473
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 476
    goto :goto_1

    .line 481
    :cond_3
    new-instance v0, Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v4

    iget-boolean v5, p0, Lcom/instagram/android/fragment/UserListFragment;->mShowFollowButtons:Z

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isFacebookList()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isContactsList()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-direct {v0, v3, v4, v5, v1}, Lcom/instagram/android/adapter/UserListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZ)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    sget v0, Lcom/facebook/h;->layout_listview_with_sticky_follow_all_footer:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    .line 537
    :cond_0
    sget v0, Lcom/facebook/h;->layout_listview:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->onDestroy()V

    .line 522
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_REFRESH_FEED_ON_EXIT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    const-string v1, "com.instagram.android.activity.ARGUMENT_REFRESH_FORCE_LOAD"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 527
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onDestroy()V

    .line 528
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButtonVisibility:I

    .line 452
    :cond_1
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onPause()V

    .line 453
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 460
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onResume()V

    .line 461
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;

    iget v1, p0, Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButtonVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 464
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 514
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onStart()V

    .line 515
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/ListUtil;->updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V

    .line 516
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 494
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/UserListFragment$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/UserListFragment$7;-><init>(Lcom/instagram/android/fragment/UserListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 510
    return-void
.end method

.method public setSectioned(Z)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/instagram/android/fragment/UserListFragment;->isSectioned:Z

    .line 156
    return-void
.end method
