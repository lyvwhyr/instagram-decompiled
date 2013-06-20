.class Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "EditSharingSettingsFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/EditSharingSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 386
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 387
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    sget-object v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    #calls: Lcom/instagram/android/fragment/EditSharingSettingsFragment;->configureRow(Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->access$300(Lcom/instagram/android/fragment/EditSharingSettingsFragment;Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;)V

    .line 388
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showOnFirstRun(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/a/a;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/EditSharingSettingsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditSharingSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/a/i;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 394
    return-void
.end method
