.class Lcom/instagram/android/creation/fragment/MetadataFragment$12;
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
    .line 416
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$12;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 420
    if-nez p2, :cond_0

    .line 421
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$12;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setIsTumblrEnabled(Z)V

    .line 433
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$12;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/tumblr/TumblrAccount;->get(Landroid/content/Context;)Lcom/instagram/tumblr/TumblrAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$12;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setIsTumblrEnabled(Z)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 431
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$12;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->show(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method
