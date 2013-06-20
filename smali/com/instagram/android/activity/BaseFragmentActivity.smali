.class public abstract Lcom/instagram/android/activity/BaseFragmentActivity;
.super Lcom/instagram/android/activity/GroupFragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field private mActionBarService:Landroid/content/BroadcastReceiver;

.field private mBackButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHashLinkReceiver:Landroid/content/BroadcastReceiver;

.field private mUserLinkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/activity/GroupFragmentActivity;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/instagram/android/activity/BaseFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/BaseFragmentActivity$1;-><init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    new-instance v0, Lcom/instagram/android/activity/BaseFragmentActivity$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/BaseFragmentActivity$2;-><init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mActionBarService:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance v0, Lcom/instagram/android/activity/BaseFragmentActivity$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/BaseFragmentActivity$3;-><init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mUserLinkReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    new-instance v0, Lcom/instagram/android/activity/BaseFragmentActivity$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/BaseFragmentActivity$4;-><init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mHashLinkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public configureActionBar()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    check-cast v0, Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;->getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;

    invoke-direct {v1, v0}, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;-><init>(Lcom/instagram/android/fragment/ActionBarConfigurer;)V

    .line 151
    invoke-static {p0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->attach(Lcom/instagram/android/fragment/ActionBarConfigurer;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected abstract initializeStartingFragment()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/instagram/android/activity/GroupFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget v0, Lcom/facebook/h;->activity_fragment_host:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/BaseFragmentActivity;->setContentView(I)V

    .line 115
    invoke-static {}, Lcom/instagram/android/video/util/VideoUtil;->needsLegacyVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->initializeStartingFragment()V

    .line 125
    invoke-virtual {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/BaseFragmentActivity$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/BaseFragmentActivity$5;-><init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/q;)V

    .line 134
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lcom/instagram/android/activity/GroupFragmentActivity;->onPause()V

    .line 99
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 100
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mActionBarService:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 101
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mUserLinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 102
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mHashLinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 104
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ClickManager;->setFragmentManager(Landroid/support/v4/app/p;)V

    .line 105
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ClickManager;->setLoaderManager(Landroid/support/v4/app/af;)V

    .line 106
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ClickManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 107
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/service/ClickManager;->setHandler(Landroid/os/Handler;)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/instagram/android/activity/GroupFragmentActivity;->onResume()V

    .line 77
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mBackButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_back_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mActionBarService:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_updated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 82
    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mUserLinkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/instagram/android/model/Comment;->BROADCAST_USER_NAME_LINK_CLICKED:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 84
    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mHashLinkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/instagram/android/model/Comment;->BROADCAST_HASH_TAG_CLICKED:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->configureActionBar()V

    .line 88
    invoke-static {p0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/activity/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->configureActionBar(Landroid/view/View;)V

    .line 90
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setFragmentManager(Landroid/support/v4/app/p;)V

    .line 91
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/activity/BaseFragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setLoaderManager(Landroid/support/v4/app/af;)V

    .line 92
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/android/service/ClickManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 93
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ClickManager;->setHandler(Landroid/os/Handler;)V

    .line 94
    return-void
.end method
