.class public Lcom/instagram/android/activity/MainTabActivity;
.super Lcom/instagram/android/activity/IgTabActivity;
.source "MainTabActivity.java"


# static fields
.field public static final BROADCAST_BACK_PUSHED:Ljava/lang/String; = "com.instagram.android.activity.BROADCAST_BACK_PUSHED"

.field public static final BROADCAST_LOGOUT:Ljava/lang/String; = "com.instagram.android.activity.BROADCAST_LOGOUT"

.field public static final BROADCAST_POP_TO_ROOT:Ljava/lang/String; = "com.instagram.android.activity.BROADCAST_POP_TO_ROOT"

.field public static final BROADCAST_TOAST:Ljava/lang/String; = "com.instagram.android.activity.MainTabActivity.BROADCAST_TOAST"

.field private static final BUNDLE_BACK_TAB_LIST:Ljava/lang/String; = "backTabList"

.field private static final BUNDLE_TEMP_PHOTO_FILE:Ljava/lang/String; = "tempPhotoFile"

.field private static final BUNDLE_TOOK_SEND_INTENT:Ljava/lang/String; = "MainTabActivity.tookSendIntent"

.field public static final EXTRA_BROADCAST_TOAST_COMMENTS:Ljava/lang/String; = "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_COMMENTS"

.field public static final EXTRA_BROADCAST_TOAST_LIKES:Ljava/lang/String; = "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_LIKES"

.field public static final EXTRA_BROADCAST_TOAST_RELATIONSHIPS:Ljava/lang/String; = "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_RELATIONSHIPS"

.field public static final EXTRA_BROADCAST_TOAST_USERTAGS:Ljava/lang/String; = "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_USERTAGS"

.field public static final EXTRA_RESUME_WITH_BUNDLE:Ljava/lang/String; = "com.instagram.android.activity.MainTabActivity.EXTRA_RESUME_WITH_BUNDLE"

.field public static final EXTRA_TAB_TAG_NAME:Ljava/lang/String; = "com.instagram.android.activity.EXTRA_TAB_TAG_NAME"

.field public static final NOTIFICATION_RECEIVED_BROADCAST_PROXY:Ljava/lang/String; = "com.instagram.android.receiver.C2DMReceiver.NOTIFICATION_RECEIVED_BROADCAST_PROXY"

.field private static final REQUEST_CODE_BUILT_IN_CAMERA:I = 0x4

.field private static final REQUEST_CODE_CAMERA_ACTIVITY:I = 0x1

.field private static final REQUEST_CODE_CAMERA_ACTIVITY_SEND:I = 0x6

.field private static final REQUEST_CODE_CROP_PHOTO:I = 0x3

.field private static final REQUEST_CODE_CROP_PHOTO_SEND:I = 0x5

.field private static final REQUEST_CODE_GALLERY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MainTabActivity"

.field public static final TAG_FEED:Ljava/lang/String; = "feed"

.field public static final TAG_NEWS:Ljava/lang/String; = "news"

.field public static final TAG_POPULAR:Ljava/lang/String; = "popular"

.field public static final TAG_PROFILE:Ljava/lang/String; = "profile"

.field public static final TAG_SHARE:Ljava/lang/String; = "share"

.field private static sNewMediaPosted:Z


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBackTabList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomToastPopupWindow:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSource:I

.field private mOldTabTag:Ljava/lang/String;

.field private mPhotosOfYouCount:I

.field private mTabBarNewsNotification:Landroid/view/View;

.field private mTabBarProfileNotification:Landroid/view/View;

.field private mTabWidgetVisibility:I

.field private mTempPhotoFile:Ljava/io/File;

.field private mTookSendIntent:Z

.field private pushReceiver:Landroid/content/BroadcastReceiver;

.field private removingLink:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/instagram/android/activity/IgTabActivity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    .line 93
    iput v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mPhotosOfYouCount:I

    .line 95
    iput v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabWidgetVisibility:I

    .line 96
    iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTookSendIntent:Z

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;

    .line 157
    iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->removingLink:Z

    .line 159
    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/MainTabActivity$1;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/activity/MainTabActivity$5;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->pushReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/activity/MainTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->removingLink:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/instagram/android/activity/MainTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->showBuiltInCaptureOptionDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/instagram/android/activity/MainTabActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/instagram/android/activity/MainTabActivity;->removingLink:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->isCurrentTab(Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->popToRoot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/instagram/android/activity/MainTabActivity;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/instagram/android/activity/MainTabActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/instagram/android/activity/MainTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->setTabStartupInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/activity/MainTabActivity;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/activity/MainTabActivity;->showToast(IIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabBarNewsNotification:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/activity/MainTabActivity;Landroid/view/View;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/activity/MainTabActivity;->maybeShowNotificationLED(Landroid/view/View;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/news/widget/CustomToastPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCustomToastPopupWindow()Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/activity/MainTabActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mPhotosOfYouCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/instagram/android/activity/MainTabActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/instagram/android/activity/MainTabActivity;->mPhotosOfYouCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabBarProfileNotification:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/activity/MainTabActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->openBuiltinGallery(Landroid/app/Activity;)V

    return-void
.end method

.method private addTab(ILcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;
    .locals 4
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instagram/android/activity/MainTabActivity;->getTabClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    const-string v1, "com.instagram.extra.EXTRA_STARTING_FRAGMENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string v1, "com.instagram.android.activity.EXTRA_TAB_TAG_NAME"

    invoke-virtual {p2}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 416
    sget-object v2, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-virtual {v2, p2}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->isStartFromPushNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const-string v2, "com.instagram.android.activity.NewsActivityInTab.EXTRA_NEWS_LAUNCH_BUNDLE"

    const-string v3, "com.instagram.android.activity.NewsActivityInTab.EXTRA_NEWS_LAUNCH_BUNDLE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 423
    :cond_0
    invoke-direct {p0, p2}, Lcom/instagram/android/activity/MainTabActivity;->createIndicatorView(Lcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;

    move-result-object v1

    .line 425
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {p2}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 428
    return-object v1
.end method

.method private createIndicatorView(Lcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 471
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/SimpleProxyView;

    .line 474
    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->SHARE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-virtual {p1, v1}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SimpleProxyView;->setProxyToOnClickListener(Z)V

    .line 476
    new-instance v1, Lcom/instagram/android/activity/MainTabActivity$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/MainTabActivity$2;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SimpleProxyView;->addAdditionalOnClickListeners(Landroid/view/View$OnClickListener;)V

    .line 511
    :goto_0
    return-object v0

    .line 495
    :cond_0
    new-instance v1, Lcom/instagram/android/activity/MainTabActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/activity/MainTabActivity$3;-><init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/SimpleProxyView;->addAdditionalOnClickListeners(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getCustomToastPopupWindow()Lcom/instagram/android/news/widget/CustomToastPopupWindow;
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mCustomToastPopupWindow:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    sget v1, Lcom/facebook/g;->tab_bar_button_news:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/activity/MainTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mCustomToastPopupWindow:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    .line 791
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mCustomToastPopupWindow:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    new-instance v1, Lcom/instagram/android/activity/MainTabActivity$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/MainTabActivity$7;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mCustomToastPopupWindow:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    return-object v0
.end method

.method private getTabClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/instagram/android/activity/ActivityInTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    const-string v0, "news"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-class v0, Lcom/instagram/android/activity/NewsActivityInTab;

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/instagram/android/activity/ActivityInTab;

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {}, Lcom/instagram/android/receiver/C2DMReceiver;->clearUnreadCount()V

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.NewsActivityInTab.EXTRA_NEWS_LAUNCH_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    invoke-static {}, Lcom/instagram/android/fragment/NewsFragment;->setSwitchToInboxFlag()V

    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.NewsActivityInTab.EXTRA_NEWS_LAUNCH_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/activity/NewsActivityInTab;->setStartingArguments(Landroid/os/Bundle;)V

    .line 229
    const-string v0, "news"

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->popToRoot(Ljava/lang/String;)V

    .line 230
    const-string v0, "news"

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->setTabStartupInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.MainTabActivity.EXTRA_RESUME_WITH_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.MainTabActivity.EXTRA_RESUME_WITH_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/activity/ActivityInTab;->setStartingArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleReturnFromCamera()V
    .locals 1

    .prologue
    .line 700
    invoke-static {}, Lcom/instagram/android/fragment/MainFeedFragment;->flagScrollToTop()V

    .line 701
    const-string v0, "feed"

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->setTabStartupInternal(Ljava/lang/String;)V

    .line 702
    const-string v0, "feed"

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->popToRoot(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method private isCurrentTab(Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z
    .locals 2
    .parameter "tabTag"

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/ActivityInTab;

    .line 755
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->getTabName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSendIntent()Z
    .locals 2

    .prologue
    .line 695
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStartFromPushNotification()Z
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.NewsActivityInTab.EXTRA_NEWS_LAUNCH_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private markSendIntentAsTook()V
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTookSendIntent:Z

    .line 692
    return-void
.end method

.method private maybeShowNotificationLED(Landroid/view/View;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V
    .locals 3
    .parameter "notificationLED"
    .parameter "tabTag"

    .prologue
    const/4 v2, 0x0

    .line 728
    invoke-direct {p0, p2}, Lcom/instagram/android/activity/MainTabActivity;->isCurrentTab(Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Landroid/support/v4/app/p;->f()I

    move-result v1

    if-lez v1, :cond_1

    .line 735
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    if-ne p2, v1, :cond_0

    .line 738
    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/NewsFragment;

    .line 740
    invoke-virtual {v0}, Lcom/instagram/android/fragment/NewsFragment;->getCurrentMode()I

    move-result v0

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_NEWS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 741
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 747
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 748
    invoke-virtual {p2}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->popToRoot(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openBuiltinGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenBuiltinGallery(Z)V

    .line 550
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/FileUtil;->generateTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    .line 551
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-static {p1, v0, v1}, Lcom/instagram/util/GalleryUtil;->show(Landroid/app/Activity;ILjava/io/File;)V

    .line 552
    return-void
.end method

.method private popToRoot(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.activity.BROADCAST_POP_TO_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    const-string v1, "com.instagram.android.activity.EXTRA_TAB_TAG_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 558
    return-void
.end method

.method private processSendIntent(ZLandroid/os/Bundle;)V
    .locals 2
    .parameter "loggedIn"
    .parameter "extras"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTookSendIntent:Z

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->markSendIntentAsTook()V

    .line 385
    if-eqz p1, :cond_1

    .line 386
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenExternalShareIntent()V

    .line 387
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 389
    invoke-static {p0, v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->cropIntentForFilterFragment(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setMediaSource(I)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 397
    :cond_1
    sget v0, Lcom/facebook/k;->must_login_before_share:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private safeDeleteTempPhotoFile()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 722
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 723
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 725
    :cond_0
    return-void
.end method

.method public static setNewMediaPosted()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/activity/MainTabActivity;->sNewMediaPosted:Z

    .line 713
    return-void
.end method

.method private setTabStartupInternal(Ljava/lang/String;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;

    .line 594
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method private showBuiltInCaptureOptionDialog()V
    .locals 3

    .prologue
    .line 516
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    sget v2, Lcom/facebook/k;->camera:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/activity/MainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/facebook/k;->gallery:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/activity/MainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 521
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenBuiltinSourcePicker()V

    .line 523
    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/k;->capture_source:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/activity/MainTabActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/activity/MainTabActivity$4;-><init>(Lcom/instagram/android/activity/MainTabActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 546
    return-void
.end method

.method private showToast(IIII)V
    .locals 7
    .parameter "comments"
    .parameter "likes"
    .parameter "relationships"
    .parameter "peopleTags"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 767
    sget v0, Lcom/facebook/g;->tab_bar_button_news:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCustomToastPopupWindow()Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->show(IIII)V

    .line 782
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v6, p0, Lcom/instagram/android/activity/MainTabActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/MainTabActivity$6;-><init>(Lcom/instagram/android/activity/MainTabActivity;IIII)V

    const-wide/16 v1, 0x64

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static takeNewMediaPosted()Z
    .locals 2

    .prologue
    .line 706
    sget-boolean v0, Lcom/instagram/android/activity/MainTabActivity;->sNewMediaPosted:Z

    .line 707
    const/4 v1, 0x0

    sput-boolean v1, Lcom/instagram/android/activity/MainTabActivity;->sNewMediaPosted:Z

    .line 708
    return v0
.end method


# virtual methods
.method public getPhotosOfYouCount()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mPhotosOfYouCount:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 633
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 634
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->safeDeleteTempPhotoFile()V

    .line 638
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 646
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 649
    :pswitch_0
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->handleReturnFromCamera()V

    goto :goto_0

    .line 653
    :pswitch_1
    iput v2, p0, Lcom/instagram/android/activity/MainTabActivity;->mMediaSource:I

    .line 654
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/instagram/util/BuiltInCameraUtil;->insertIntoMediaStore(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 656
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/util/BuiltInCameraUtil;->getUriFileOrData(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->cropIntentForFilterFragment(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setMediaSource(I)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/instagram/android/activity/MainTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 667
    :pswitch_2
    iput v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mMediaSource:I

    .line 668
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/instagram/util/GalleryUtil;->getImageUriFromResult(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->cropIntentForFilterFragment(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/support/camera/CropIntentBuilder;->setMediaSource(I)Lcom/instagram/android/support/camera/CropIntentBuilder;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lcom/instagram/android/support/camera/CropIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/instagram/android/activity/MainTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 680
    :pswitch_3
    iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mMediaSource:I

    if-nez v0, :cond_1

    .line 681
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->safeDeleteTempPhotoFile()V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/16 v2, 0x8

    .line 444
    invoke-super {p0, p1}, Lcom/instagram/android/activity/IgTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 446
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 449
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCustomToastPopupWindow()Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->setVisibility(I)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabWidgetVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 452
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCustomToastPopupWindow()Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabWidgetVisibility:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 298
    invoke-super {p0, p1}, Lcom/instagram/android/activity/IgTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 300
    const-string v0, "MainTabActivity"

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 308
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "MainTabActivity"

    const-string v1, "Main Activity is not the root.  Finishing Main Activity instead of launching."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    .line 365
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-static {p0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isLoggedIn()Z

    move-result v3

    .line 320
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 322
    if-eqz p1, :cond_2

    const-string v0, "MainTabActivity.tookSendIntent"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTookSendIntent:Z

    .line 324
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->isSendIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-direct {p0, v3, v4}, Lcom/instagram/android/activity/MainTabActivity;->processSendIntent(ZLandroid/os/Bundle;)V

    .line 331
    :cond_1
    if-nez v3, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->redirectToSignedOutState()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 322
    goto :goto_1

    .line 336
    :cond_3
    sget v0, Lcom/facebook/h;->layout_activity_main_tabs:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->setContentView(I)V

    .line 339
    sget-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->FEED:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-direct {p0, v2, v0}, Lcom/instagram/android/activity/MainTabActivity;->addTab(ILcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;

    .line 340
    sget-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->POPULAR:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-direct {p0, v1, v0}, Lcom/instagram/android/activity/MainTabActivity;->addTab(ILcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;

    .line 341
    const/4 v0, 0x2

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->SHARE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->addTab(ILcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;

    move-result-object v0

    .line 342
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    const/4 v0, 0x3

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->addTab(ILcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;

    .line 344
    const/4 v0, 0x4

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->PROFILE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->addTab(ILcom/instagram/android/activity/MainTabActivity$TabTag;)Landroid/view/View;

    .line 347
    const-string v0, "news"

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->setTabStartupInternal(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->isStartFromPushNotification()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 354
    :goto_2
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->handleIntent(Landroid/content/Intent;)V

    .line 357
    invoke-static {p0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->isPushExpired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    invoke-static {p0}, Lcom/instagram/android/receiver/C2DMReceiver;->refreshAppC2DMRegistrationState(Landroid/content/Context;)V

    .line 361
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;-><init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/MainTabActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 363
    sget v0, Lcom/facebook/g;->tab_bar_news_notification:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabBarNewsNotification:Landroid/view/View;

    .line 364
    sget v0, Lcom/facebook/g;->tab_bar_profile_notification:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabBarProfileNotification:Landroid/view/View;

    goto/16 :goto_0

    .line 351
    :cond_5
    const-string v0, "feed"

    invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->setTabStartupInternal(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mCustomToastPopupWindow:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mCustomToastPopupWindow:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    invoke-virtual {v0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->dismiss()V

    .line 373
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/activity/IgTabActivity;->onDestroy()V

    .line 374
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 213
    const-string v0, "MainTabActivity"

    const-string v1, "On new intent"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->handleIntent(Landroid/content/Intent;)V

    .line 215
    invoke-super {p0, p1}, Lcom/instagram/android/activity/IgTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/instagram/android/activity/IgTabActivity;->onPause()V

    .line 264
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 267
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/instagram/android/activity/IgTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 286
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, "backTabList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;

    .line 288
    const-string v0, "tempPhotoFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    .line 293
    :cond_0
    const-string v0, "MainTabActivity.tookSendIntent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTookSendIntent:Z

    .line 294
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Lcom/instagram/android/activity/IgTabActivity;->onResume()V

    .line 241
    const-string v0, "MainTabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/instagram/android/receiver/C2DMReceiver;->clearUnreadCount()V

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    const-string v1, "com.instagram.android.activity.BROADCAST_BACK_PUSHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "com.instagram.android.activity.BROADCAST_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "com.instagram.android.activity.MainTabActivity.BROADCAST_TOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "com.instagram.android.fragment.NewsFragment.BROADCAST_INBOX_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.instagram.android.fragment.SelfFragment.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "com.instagram.android.fragment.SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 257
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/instagram/android/activity/IgTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    const-string v0, "backTabList"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "tempPhotoFile"

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    const-string v0, "MainTabActivity.tookSendIntent"

    iget-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTookSendIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 615
    invoke-super {p0}, Lcom/instagram/android/activity/IgTabActivity;->onStart()V

    .line 617
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->pushReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.receiver.C2DMReceiver.NOTIFICATION_RECEIVED_BROADCAST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 620
    invoke-static {}, Lcom/instagram/android/activity/MainTabActivity;->takeNewMediaPosted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->handleReturnFromCamera()V

    .line 623
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 627
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->pushReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 628
    invoke-super {p0}, Lcom/instagram/android/activity/IgTabActivity;->onStop()V

    .line 629
    return-void
.end method

.method public redirectToSignedOutState()V
    .locals 2

    .prologue
    .line 561
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 564
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    .line 565
    return-void
.end method

.method public setTabWidgetVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 459
    iput p1, p0, Lcom/instagram/android/activity/MainTabActivity;->mTabWidgetVisibility:I

    .line 463
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 465
    invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCustomToastPopupWindow()Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->setVisibility(I)V

    .line 467
    :cond_0
    return-void
.end method
