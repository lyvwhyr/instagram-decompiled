.class Lcom/instagram/android/creation/fragment/MetadataFragment$4;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$400(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/widget/CaptionAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/PendingMedia;->setCaption(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;
    invoke-static {v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/service/PendingMediaService;->configure(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 189
    invoke-static {}, Lcom/instagram/android/activity/MainTabActivity;->setNewMediaPosted()V

    .line 191
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getSaveOriginalPhotos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$4$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$4$1;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 201
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 202
    return-void
.end method
