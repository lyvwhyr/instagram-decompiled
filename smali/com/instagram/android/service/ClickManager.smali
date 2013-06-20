.class public Lcom/instagram/android/service/ClickManager;
.super Ljava/lang/Object;
.source "ClickManager.java"


# static fields
.field private static mInstance:Lcom/instagram/android/service/ClickManager;


# instance fields
.field private mCurrentActivity:Landroid/app/Activity;

.field private mFragmentManager:Landroid/support/v4/app/p;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/af;

.field private mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

.field private mUserLinkClickListener:Lcom/instagram/android/listener/UserLinkClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/service/ClickManager;)Lcom/instagram/android/listener/UserLinkClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager;->mUserLinkClickListener:Lcom/instagram/android/listener/UserLinkClickListener;

    return-object v0
.end method

.method public static getInstance()Lcom/instagram/android/service/ClickManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/instagram/android/service/ClickManager;->mInstance:Lcom/instagram/android/service/ClickManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/instagram/android/service/ClickManager;

    invoke-direct {v0}, Lcom/instagram/android/service/ClickManager;-><init>()V

    sput-object v0, Lcom/instagram/android/service/ClickManager;->mInstance:Lcom/instagram/android/service/ClickManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/instagram/android/service/ClickManager;->mInstance:Lcom/instagram/android/service/ClickManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentFragmentManager()Landroid/support/v4/app/p;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager;->mFragmentManager:Landroid/support/v4/app/p;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/af;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager;->mLoaderManager:Landroid/support/v4/app/af;

    return-object v0
.end method

.method public getUpdateAvatarHelper()Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    return-object v0
.end method

.method public getUserLinkClickListener()Lcom/instagram/android/listener/UserLinkClickListener;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/android/service/ClickManager$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/service/ClickManager$1;-><init>(Lcom/instagram/android/service/ClickManager;)V

    return-object v0
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "currentActivity"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/instagram/android/service/ClickManager;->mCurrentActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public setFragmentManager(Landroid/support/v4/app/p;)V
    .locals 0
    .parameter "fragmentManager"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/service/ClickManager;->mFragmentManager:Landroid/support/v4/app/p;

    .line 72
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/android/service/ClickManager;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public setLoaderManager(Landroid/support/v4/app/af;)V
    .locals 0
    .parameter "loaderManager"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/android/service/ClickManager;->mLoaderManager:Landroid/support/v4/app/af;

    .line 92
    return-void
.end method

.method public setUpdateAvatarHelper(Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;)V
    .locals 0
    .parameter "updateAvatarHelper"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/instagram/android/service/ClickManager;->mUpdateAvatarHelper:Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    .line 80
    return-void
.end method

.method public setUserLinkClickListener(Lcom/instagram/android/listener/UserLinkClickListener;)V
    .locals 0
    .parameter "userLinkClickListener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/instagram/android/service/ClickManager;->mUserLinkClickListener:Lcom/instagram/android/listener/UserLinkClickListener;

    .line 56
    return-void
.end method
