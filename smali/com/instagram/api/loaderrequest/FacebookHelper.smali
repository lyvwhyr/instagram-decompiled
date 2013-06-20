.class public Lcom/instagram/api/loaderrequest/FacebookHelper;
.super Ljava/lang/Object;
.source "FacebookHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnlyUpdatingProfilePicture:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

.field private mWasCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "FacebookHelper"

    sput-object v0, Lcom/instagram/api/loaderrequest/FacebookHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

    .line 50
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/instagram/api/loaderrequest/FacebookHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/api/loaderrequest/FacebookHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instagram/api/loaderrequest/FacebookHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/api/loaderrequest/FacebookHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mSignupFragment:Lcom/instagram/android/login/fragment/RegisterFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/api/loaderrequest/FacebookHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mWasCancelled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/instagram/api/loaderrequest/FacebookHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mWasCancelled:Z

    return p1
.end method


# virtual methods
.method public fetchFacebookUserInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iput-boolean v2, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mWasCancelled:Z

    .line 54
    new-instance v0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;-><init>(Lcom/instagram/api/loaderrequest/FacebookHelper;Lcom/instagram/api/loaderrequest/FacebookHelper$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public isOnlyUpdatingProfilePicture()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mOnlyUpdatingProfilePicture:Z

    return v0
.end method

.method public setOnlyUpdatingProfilePicture(Z)V
    .locals 0
    .parameter "onlyUpdatingProfilePicture"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper;->mOnlyUpdatingProfilePicture:Z

    .line 59
    return-void
.end method
