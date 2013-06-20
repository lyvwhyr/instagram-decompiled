.class public Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;
.super Landroid/os/AsyncTask;
.source "AddAvatarHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROGRESS_DIALOG:Ljava/lang/String; = "progressDialog"


# instance fields
.field private final mTypeUri:I

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/instagram/api/loaderrequest/AddAvatarHelper;


# direct methods
.method public constructor <init>(Lcom/instagram/api/loaderrequest/AddAvatarHelper;ILandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "typeUri"
    .parameter "uri"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->this$0:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 99
    iput p2, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->mTypeUri:I

    .line 100
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->mUri:Landroid/net/Uri;

    .line 101
    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->this$0:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->access$000(Lcom/instagram/api/loaderrequest/AddAvatarHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->profile_picture_download_failed:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage$1;

    invoke-direct {v2, p0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage$1;-><init>(Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 143
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "params"

    .prologue
    .line 106
    :try_start_0
    iget v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->mTypeUri:I

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/instagram/api/loaderrequest/UpdateAvatarRequest;->getBitmapToSend(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/instagram/util/BitmapHelper;->squarifyIfNeeded(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-eq v1, v0, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v0, "AddAvatarHelper"

    const-string v1, "An error occurred fetching your image"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->this$0:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->access$000(Lcom/instagram/api/loaderrequest/AddAvatarHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->this$0:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    #setter for: Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->access$102(Lcom/instagram/api/loaderrequest/AddAvatarHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->this$0:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->access$000(Lcom/instagram/api/loaderrequest/AddAvatarHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment;->setProfileImage(Landroid/graphics/Bitmap;)V

    .line 130
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 131
    return-void

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->showErrorDialog()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AddAvatarHelper$LoadAvatarImage;->this$0:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    #getter for: Lcom/instagram/api/loaderrequest/AddAvatarHelper;->mFragment:Lcom/instagram/android/login/fragment/RegisterFragment;
    invoke-static {v0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->access$000(Lcom/instagram/api/loaderrequest/AddAvatarHelper;)Lcom/instagram/android/login/fragment/RegisterFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 159
    return-void
.end method
