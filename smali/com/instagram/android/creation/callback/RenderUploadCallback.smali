.class public Lcom/instagram/android/creation/callback/RenderUploadCallback;
.super Ljava/lang/Object;
.source "RenderUploadCallback.java"

# interfaces
.implements Lcom/instagram/android/gl/FilterController$RenderCallbacks;


# instance fields
.field private mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/creation/callback/RenderUploadCallback;)Lcom/instagram/android/creation/fragment/FilterFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    return-object v0
.end method


# virtual methods
.method public renderError()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->removeDialogIfPresent()V

    .line 117
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()V

    .line 119
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->unable_to_save_upload_image:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    return-void
.end method

.method public renderFinished(I)V
    .locals 3
    .parameter "bufferIndex"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mediaSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 31
    new-instance v1, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;

    iget-object v2, p0, Lcom/instagram/android/creation/callback/RenderUploadCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/instagram/android/creation/callback/RenderUploadCallback$1;-><init>(Lcom/instagram/android/creation/callback/RenderUploadCallback;Landroid/content/Context;II)V

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/instagram/android/task/UploadImageTask;->execute([Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;

    .line 112
    return-void
.end method
