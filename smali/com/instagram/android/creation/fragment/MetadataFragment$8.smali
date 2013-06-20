.class Lcom/instagram/android/creation/fragment/MetadataFragment$8;
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
    .line 331
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$8;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 335
    if-nez p2, :cond_0

    .line 336
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$8;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setIsTwitterEnabled(Z)V

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$8;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/twitter/TwitterAccount;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$8;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/model/PendingMedia;->setIsTwitterEnabled(Z)V

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$8;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-static {v0, v2}, Lcom/instagram/android/activity/TwitterAuthActivity;->show(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method
