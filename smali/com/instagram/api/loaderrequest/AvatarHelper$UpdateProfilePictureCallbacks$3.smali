.class Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$3;
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
    .line 267
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$3;->this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$3;->this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/AvatarHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/ProgressDialogFragment;

    .line 271
    invoke-virtual {v0}, Lcom/instagram/android/fragment/ProgressDialogFragment;->dismiss()V

    .line 272
    return-void
.end method
