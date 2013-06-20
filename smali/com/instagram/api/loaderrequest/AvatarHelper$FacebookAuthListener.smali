.class Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;


# direct methods
.method private constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper;Lcom/instagram/api/loaderrequest/AvatarHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 305
    const-string v0, "UpdateAvatarHelper"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 283
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 284
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AvatarHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->access$300(Lcom/instagram/api/loaderrequest/AvatarHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener$1;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener$1;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v1, v1, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showOnFirstRun(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 300
    const-string v0, "UpdateAvatarHelper"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 295
    const-string v0, "UpdateAvatarHelper"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method
