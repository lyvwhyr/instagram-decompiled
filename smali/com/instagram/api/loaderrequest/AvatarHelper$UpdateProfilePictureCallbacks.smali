.class public Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "AvatarHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;


# direct methods
.method protected constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v1, v1, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->could_not_update_profile_picture:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$1;

    invoke-direct {v2, p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$1;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 251
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 267
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AvatarHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->access$300(Lcom/instagram/api/loaderrequest/AvatarHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$3;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$3;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 256
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AvatarHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->access$300(Lcom/instagram/api/loaderrequest/AvatarHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$2;

    invoke-direct {v1, p0}, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$2;-><init>(Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/Preferences;->storeUser(Lcom/instagram/android/model/User;)Z

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string v0, "UpdateAvatarHelper"

    const-string v1, "Did not receive user object back"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 229
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;->onSuccess(Lcom/instagram/android/model/User;)V

    return-void
.end method
