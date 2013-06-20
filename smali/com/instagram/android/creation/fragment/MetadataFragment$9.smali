.class Lcom/instagram/android/creation/fragment/MetadataFragment$9;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$9;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 357
    if-nez p2, :cond_0

    .line 358
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$9;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/PendingMedia;->setIsFacebookEnabled(Z)V

    .line 378
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$9;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$9;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/widget/IgFacebookOpenGraphDialog;->showOnThirdSharedPhoto(Landroid/content/Context;Landroid/support/v4/app/af;)V

    .line 372
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$9;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setIsFacebookEnabled(Z)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 375
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$9;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    sget-object v2, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$9;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookAuthListener:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;
    invoke-static {v3}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$1100(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    goto :goto_0
.end method
