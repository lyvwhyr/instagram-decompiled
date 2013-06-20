.class Lcom/instagram/android/fragment/EditProfileFragment$7$2;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/EditProfileFragment$7;

.field final synthetic val$willBePrivate:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment$7;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$7$2;->this$1:Lcom/instagram/android/fragment/EditProfileFragment$7;

    iput-boolean p2, p0, Lcom/instagram/android/fragment/EditProfileFragment$7$2;->val$willBePrivate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    new-instance v0, Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment$7$2;->this$1:Lcom/instagram/android/fragment/EditProfileFragment$7;

    iget-object v1, v1, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment$7$2;->this$1:Lcom/instagram/android/fragment/EditProfileFragment$7;

    iget-object v2, v2, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/EditProfileFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;

    iget-object v4, p0, Lcom/instagram/android/fragment/EditProfileFragment$7$2;->this$1:Lcom/instagram/android/fragment/EditProfileFragment$7;

    iget-object v4, v4, Lcom/instagram/android/fragment/EditProfileFragment$7;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/fragment/EditProfileFragment$ChangePhotoPrivacyCallbacks;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;Lcom/instagram/android/fragment/EditProfileFragment$1;)V

    iget-boolean v4, p0, Lcom/instagram/android/fragment/EditProfileFragment$7$2;->val$willBePrivate:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;Z)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/ChangePrivacyRequest;->perform()V

    .line 247
    return-void
.end method
