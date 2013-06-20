.class Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$2;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$2;->this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Lcom/instagram/android/fragment/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/ProgressDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$2;->this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;

    iget-object v1, v1, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v1, v1, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/ProgressDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 260
    return-void
.end method
