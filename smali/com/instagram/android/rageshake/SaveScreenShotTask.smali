.class public Lcom/instagram/android/rageshake/SaveScreenShotTask;
.super Landroid/os/AsyncTask;
.source "SaveScreenShotTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

.field private mScreenShot:Landroid/graphics/Bitmap;

.field private mScreenShotUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/app/Activity;)V
    .locals 1
    .parameter "screenshot"
    .parameter "activity"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mActivity:Landroid/app/Activity;

    .line 31
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mScreenShot:Landroid/graphics/Bitmap;

    .line 33
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mActivity:Landroid/app/Activity;

    .line 46
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/rageshake/SaveScreenShotTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mScreenShot:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/rageshake/RageShakeUtil;->saveScreenShot(Landroid/graphics/Bitmap;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mScreenShotUri:Landroid/net/Uri;

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/rageshake/SaveScreenShotTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "aVoid"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/SaveScreenShotTask;->detach()V

    .line 60
    iget-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mScreenShotUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/instagram/android/rageshake/RageShakeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    const-string v1, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_MEDIA_FILE_PATH"

    iget-object v2, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mScreenShotUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget v0, Lcom/facebook/k;->rageshake_error_save_failed:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v1, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 51
    iget-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v1, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/facebook/k;->rageshake_wait:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/instagram/android/rageshake/SaveScreenShotTask;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    .line 53
    return-void
.end method
