.class public Lcom/instagram/android/creation/callback/RenderFullCallback;
.super Ljava/lang/Object;
.source "RenderFullCallback.java"

# interfaces
.implements Lcom/instagram/android/gl/FilterController$RenderCallbacks;


# instance fields
.field private mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method public constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/instagram/android/creation/callback/RenderFullCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    .line 26
    return-void
.end method


# virtual methods
.method public renderError()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->unable_to_save_full_image:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderFullCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->renderUploadBitmap()V

    .line 50
    return-void
.end method

.method public renderFinished(I)V
    .locals 4
    .parameter "bufferIndex"

    .prologue
    .line 36
    new-instance v0, Lcom/instagram/android/task/SaveImageTask;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/task/SaveImageTask;-><init>(Landroid/content/ContentResolver;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/instagram/android/task/SaveImageTask;->execute([Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;

    .line 39
    iget-object v0, p0, Lcom/instagram/android/creation/callback/RenderFullCallback;->mFragment:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->renderUploadBitmap()V

    .line 40
    return-void
.end method
