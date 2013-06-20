.class public Lcom/instagram/android/activity/ActivityInTab;
.super Lcom/instagram/android/activity/BaseFragmentActivity;
.source "ActivityInTab.java"


# static fields
.field public static final EXTRA_STARTING_FRAGMENT:Ljava/lang/String; = "com.instagram.extra.EXTRA_STARTING_FRAGMENT"

.field public static final NEW_FRAGMENT_ARGUMENT_ID:Ljava/lang/String; = "id"

.field public static final NEW_FRAGMENT_SCREEN_ARGUMENT:Ljava/lang/String; = "screen"

.field public static final STARTING_ARGUMENT_USERID:Ljava/lang/String; = "userid"

.field public static final STARTING_FRAGMENT_FEED:I = 0x0

.field public static final STARTING_FRAGMENT_NEWS:I = 0x3

.field public static final STARTING_FRAGMENT_POPULAR:I = 0x1

.field public static final STARTING_FRAGMENT_PROFILE:I = 0x4

.field public static final STARTING_FRAGMENT_SHARE:I = 0x2

.field private static sStartingArgumentsBundle:Landroid/os/Bundle;


# instance fields
.field private mPopToRootOnResume:Z

.field private mPopToRootReceiver:Lcom/facebook/b/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/activity/ActivityInTab;->sStartingArgumentsBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->mPopToRootOnResume:Z

    .line 176
    return-void
.end method

.method static synthetic access$102(Lcom/instagram/android/activity/ActivityInTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/instagram/android/activity/ActivityInTab;->mPopToRootOnResume:Z

    return p1
.end method

.method private getStartingFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "startingFragment"

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 142
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 134
    :pswitch_1
    new-instance v0, Lcom/instagram/android/fragment/ExploreFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/ExploreFragment;-><init>()V

    goto :goto_0

    .line 136
    :pswitch_2
    new-instance v0, Lcom/instagram/android/fragment/NewsFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/NewsFragment;-><init>()V

    goto :goto_0

    .line 138
    :pswitch_3
    new-instance v0, Lcom/instagram/android/fragment/SelfFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/SelfFragment;-><init>()V

    goto :goto_0

    .line 140
    :pswitch_4
    new-instance v0, Lcom/instagram/android/fragment/MainFeedFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/MainFeedFragment;-><init>()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static handleStartingArgumentsBundle(Landroid/support/v4/app/p;Landroid/os/Bundle;)V
    .locals 4
    .parameter "manager"
    .parameter "bundle"

    .prologue
    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/instagram/android/fragment/SingleMediaFeedFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;-><init>()V

    .line 67
    const-string v2, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"

    const-string v3, "id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 86
    return-void

    .line 72
    :cond_0
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserDetailFragment;-><init>()V

    .line 74
    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"

    const-string v3, "id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "userid"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserDetailFragment;-><init>()V

    .line 77
    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

    const-string v3, "id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "hashtag"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    new-instance v0, Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/HashtagFeedFragment;-><init>()V

    .line 80
    const-string v2, "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"

    const-string v3, "id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Received unknown starting bundle type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setStartingArguments(Landroid/os/Bundle;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 173
    sput-object p0, Lcom/instagram/android/activity/ActivityInTab;->sStartingArgumentsBundle:Landroid/os/Bundle;

    .line 174
    return-void
.end method


# virtual methods
.method protected getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.EXTRA_TAB_TAG_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeStartingFragment()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.extra.EXTRA_STARTING_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 123
    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v1

    .line 125
    invoke-direct {p0, v0}, Lcom/instagram/android/activity/ActivityInTab;->getStartingFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 126
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 127
    invoke-virtual {v1}, Landroid/support/v4/app/ac;->a()I

    .line 129
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 148
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v2, "broadcastStopLegacyVideo"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->f()I

    move-result v1

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.activity.BROADCAST_BACK_PUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v2, "com.instagram.android.activity.EXTRA_TAB_TAG_NAME"

    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 162
    :cond_1
    invoke-super {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/instagram/android/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/facebook/b/a/k;

    invoke-direct {v0, p0}, Lcom/facebook/b/a/k;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Lcom/facebook/b/a/k;->a()Lcom/facebook/b/a/i;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.BROADCAST_POP_TO_ROOT"

    new-instance v2, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;-><init>(Lcom/instagram/android/activity/ActivityInTab;Lcom/instagram/android/activity/ActivityInTab$1;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/b/a/i;->a(Ljava/lang/String;Lcom/facebook/content/b;)Lcom/facebook/b/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/a/i;->a()Lcom/facebook/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->mPopToRootReceiver:Lcom/facebook/b/a/j;

    .line 58
    iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->mPopToRootReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->b()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->mPopToRootReceiver:Lcom/facebook/b/a/j;

    invoke-interface {v0}, Lcom/facebook/b/a/j;->c()V

    .line 112
    invoke-super {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->onDestroy()V

    .line 113
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->onPostResume()V

    .line 91
    iget-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->mPopToRootOnResume:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->popToRoot()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->mPopToRootOnResume:Z

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->takeStartingArgumentsBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/android/activity/ActivityInTab;->handleStartingArgumentsBundle(Landroid/support/v4/app/p;Landroid/os/Bundle;)V

    .line 103
    :cond_1
    return-void
.end method

.method public popToRoot()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->b(II)Z

    .line 117
    return-void
.end method

.method protected takeStartingArgumentsBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/instagram/android/activity/ActivityInTab;->sStartingArgumentsBundle:Landroid/os/Bundle;

    .line 168
    const/4 v1, 0x0

    sput-object v1, Lcom/instagram/android/activity/ActivityInTab;->sStartingArgumentsBundle:Landroid/os/Bundle;

    .line 169
    return-object v0
.end method
