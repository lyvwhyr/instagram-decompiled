.class public Lcom/instagram/android/fragment/UserDetailFragment;
.super Lcom/instagram/android/fragment/AbstractFeedFragment;
.source "UserDetailFragment.java"


# static fields
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

.field public static final EXTRA_USER_NAME:Ljava/lang/String; = "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"


# instance fields
.field private itemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mAdapter:Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

.field private mLastApiResponseStatus:Lcom/instagram/api/ApiResponseStatus;

.field private mNeedsReload:Z

.field protected mUser:Lcom/instagram/android/model/User;

.field private mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;

.field private mUserId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private receiver:Lcom/instagram/android/fragment/UserDetailFragment$Receiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/instagram/android/fragment/UserDetailFragment$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/UserDetailFragment$Receiver;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/fragment/UserDetailFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->receiver:Lcom/instagram/android/fragment/UserDetailFragment$Receiver;

    .line 266
    new-instance v0, Lcom/instagram/android/fragment/UserDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserDetailFragment$2;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->itemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 348
    return-void
.end method

.method static synthetic access$002(Lcom/instagram/android/fragment/UserDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mNeedsReload:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/instagram/android/fragment/UserDetailFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment;->showBlockDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/UserDetailFragment;)Lcom/instagram/api/ApiResponseStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mLastApiResponseStatus:Lcom/instagram/api/ApiResponseStatus;

    return-object v0
.end method

.method static synthetic access$402(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/api/ApiResponseStatus;)Lcom/instagram/api/ApiResponseStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mLastApiResponseStatus:Lcom/instagram/api/ApiResponseStatus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/UserDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/UserDetailFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment;->registerBroadcastReceivers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/model/User;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/UserDetailFragment;->isCurrentUser(Lcom/instagram/android/model/User;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/instagram/android/fragment/UserDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->showUserOptionsDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/instagram/android/fragment/UserDetailFragment;)Lcom/instagram/api/loaderrequest/UserDetailRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;

    return-object v0
.end method

.method private blockOrUnblock()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->menu_label_unblock_user:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->menu_label_block_user:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method private isCurrentUser(Lcom/instagram/android/model/User;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 200
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Lcom/instagram/android/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerBroadcastReceivers(Ljava/lang/String;)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 85
    if-eqz p1, :cond_1

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    invoke-static {p1}, Lcom/instagram/android/model/User;->getUserBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/instagram/android/model/User;->getUserFollowUpdateBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instagram/android/fragment/UserDetailFragment;->isCurrentUser(Lcom/instagram/android/model/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "com.instagram.android.PendingMediaService.BROADCAST_INTENT_NEW_MEDIA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/UserDetailFragment;->receiver:Lcom/instagram/android/fragment/UserDetailFragment$Receiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 96
    :cond_1
    return-void
.end method

.method private showBlockDialog(I)V
    .locals 3
    .parameter "blockResId"

    .prologue
    .line 296
    new-instance v0, Lcom/instagram/android/fragment/UserDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserDetailFragment$4;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;)V

    .line 306
    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->yes_im_sure:I

    invoke-virtual {v1, v2, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->cancel:I

    invoke-virtual {v1, v2, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 312
    return-void
.end method

.method private showUserOptionsDialog()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getMenuOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/UserDetailFragment;->itemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCanceledOnTouchOutside(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/UserDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserDetailFragment$3;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 293
    return-void
.end method


# virtual methods
.method protected configureUser()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    const-string v1, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserId:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    iput-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUser:Lcom/instagram/android/model/User;

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v1, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string v1, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserName:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->findByUserName(Ljava/lang/String;)Lcom/instagram/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUser:Lcom/instagram/android/model/User;

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User Detail Fragment started with user id or username"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeRequest()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    new-instance v0, Lcom/instagram/api/loaderrequest/UserDetailRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/fragment/UserDetailFragment$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/UserDetailRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;

    .line 140
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->setHeaderObject(Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->performWithUserId(Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailFeedRequestCallbacks;

    invoke-direct {v1, p0, v5}, Lcom/instagram/android/fragment/UserDetailFragment$UserDetailFeedRequestCallbacks;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;Lcom/instagram/android/fragment/UserDetailFragment$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/UserDetailFragment;->constructAndPerformFeedRequest(ZLcom/instagram/android/fragment/AbstractFeedFragment$FeedRequestCallbacks;)V

    .line 151
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->performWithUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->performWithUserName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/instagram/android/fragment/UserDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/UserDetailFragment$1;-><init>(Lcom/instagram/android/fragment/UserDetailFragment;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mAdapter:Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p0}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/adapter/FeedAdapter$ListenerDelegate;Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mAdapter:Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mAdapter:Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    return-object v0
.end method

.method protected getDefaultFeedViewMode()Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method public getMenuOptions()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->blockOrUnblock()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/k;->report_as_spam:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getUser()Lcom/instagram/android/model/User;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 372
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/a/c;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/af;->b(I)Landroid/support/v4/a/c;

    move-result-object v1

    goto :goto_1
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUser:Lcom/instagram/android/model/User;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->canView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->isPrivate()Z

    move-result v0

    goto :goto_0
.end method

.method protected makeRequest(Lcom/instagram/api/AbstractStreamingApiCallbacks;)Lcom/instagram/api/loaderrequest/MediaFeedRequest;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/MediaFeedResponse;",
            ">;)",
            "Lcom/instagram/api/loaderrequest/MediaFeedRequest;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, callbacks:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Lcom/instagram/android/model/MediaFeedResponse;>;"
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    new-instance v0, Lcom/instagram/api/loaderrequest/UserMediaFeedRequest;

    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/instagram/api/loaderrequest/UserMediaFeedRequest;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;ILcom/instagram/api/AbstractStreamingApiCallbacks;Lcom/instagram/android/model/User;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->configureUser()V

    .line 73
    invoke-direct {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/UserDetailFragment;->registerBroadcastReceivers(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->executeRequest()V

    .line 75
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/UserDetailFragment;->receiver:Lcom/instagram/android/fragment/UserDetailFragment$Receiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 110
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onDestroy()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/instagram/android/fragment/AbstractFeedFragment;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mLastApiResponseStatus:Lcom/instagram/api/ApiResponseStatus;

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusError:Lcom/instagram/api/ApiResponseStatus;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mNeedsReload:Z

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/UserDetailFragment;->mNeedsReload:Z

    .line 119
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->executeRequest()V

    .line 121
    :cond_1
    return-void
.end method

.method protected onUserUpdated()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getAdapter()Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/UserDetailFeedAdapter;->notifyDataSetChanged()V

    .line 335
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 338
    :cond_0
    return-void
.end method

.method public populateConversionTrackingData(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    const-string v1, "profile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method
