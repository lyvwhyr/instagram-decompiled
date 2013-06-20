.class Lcom/instagram/android/creation/callback/RenderUploadCallback$1;
.super Lcom/instagram/android/task/UploadImageTask;
.source "RenderUploadCallback.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/callback/RenderUploadCallback;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/task/UploadImageTask;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private launchMetadataFragment(Lcom/instagram/android/model/PendingMedia;)V
    .locals 4
    .parameter "media"

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v1, "com.instagram.android.MetadataFragment.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {p1}, Lcom/instagram/android/model/PendingMedia;->getDeviceTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v1}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v1}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v2}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 85
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v2}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v1}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v1}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "originalWidth"

    iget-object v2, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v2}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "originalWidth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v1, "originalHeight"

    iget-object v2, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v2}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "originalHeight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v1}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {v2}, Lcom/instagram/android/creation/fragment/MetadataFragment;-><init>()V

    const-string v3, "METADATA_FRAGMENT"

    invoke-static {v1, v2, v3, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->unable_to_save_upload_image:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    return-void
.end method

.method protected onPostExecute(Lcom/instagram/android/model/PendingMedia;)V
    .locals 2
    .parameter "media"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v0}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v0}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v0}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_accept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->this$0:Lcom/instagram/android/creation/callback/RenderUploadCallback;

    #getter for: Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;
    invoke-static {v0}, Lcom/instagram/android/creation/callback/RenderUploadCallback;->access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->removeDialogIfPresent()V

    .line 54
    invoke-super {p0, p1}, Lcom/instagram/android/task/UploadImageTask;->onPostExecute(Lcom/instagram/android/model/PendingMedia;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/instagram/android/model/PendingMedia;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->onPostExecute(Lcom/instagram/android/model/PendingMedia;)V

    return-void
.end method

.method public onSuccess(Lcom/instagram/android/model/PendingMedia;)V
    .locals 0
    .parameter "pendingMedia"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;->launchMetadataFragment(Lcom/instagram/android/model/PendingMedia;)V

    .line 68
    return-void
.end method
