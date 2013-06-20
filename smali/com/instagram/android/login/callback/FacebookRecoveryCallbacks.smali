.class public Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "FacebookRecoveryCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/p;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/support/v4/app/p;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "fragmentManager"
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p2, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mFragmentManager:Landroid/support/v4/app/p;

    .line 30
    iput-object p3, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;)Landroid/support/v4/app/p;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mFragmentManager:Landroid/support/v4/app/p;

    return-object v0
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;>;"
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    sget v0, Lcom/facebook/k;->request_error:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 51
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$1;-><init>(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 49
    :cond_2
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    goto :goto_0
.end method

.method protected onSuccess(Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks$2;-><init>(Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->onSuccess(Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;)V

    return-void
.end method
