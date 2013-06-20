.class final Lcom/instagram/android/widget/IgFacebookOpenGraphDialog$1;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "IgFacebookOpenGraphDialog.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 39
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->x_problems:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/facebook/k;->facebook:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 40
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "responseObject"

    .prologue
    .line 34
    return-void
.end method
