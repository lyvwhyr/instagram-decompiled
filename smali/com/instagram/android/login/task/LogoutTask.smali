.class public Lcom/instagram/android/login/task/LogoutTask;
.super Lcom/instagram/android/mediacache/IgAsyncTask;
.source "LogoutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/mediacache/IgAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROGRESS_DIALOG:Ljava/lang/String; = "ProgressDialog"


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/p;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/p;)V
    .locals 0
    .parameter "fragmentManager"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/android/login/task/LogoutTask;->mFragmentManager:Landroid/support/v4/app/p;

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/task/LogoutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 29
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v0

    const-string v1, "accounts/logout/"

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/ApiHttpClient;->post(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpResponse;

    .line 31
    invoke-static {}, Lcom/instagram/android/login/helper/LogoutHelper;->executeClientLogout()V

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/task/LogoutTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "aVoid"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/instagram/android/login/task/LogoutTask;->mFragmentManager:Landroid/support/v4/app/p;

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/ProgressDialogFragment;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/instagram/android/fragment/ProgressDialogFragment;->dismiss()V

    .line 57
    :cond_0
    invoke-static {}, Lcom/instagram/android/login/helper/LogoutHelper;->broadcastLogout()V

    .line 58
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Lcom/instagram/android/mediacache/IgAsyncTask;->onPreExecute()V

    .line 38
    new-instance v0, Lcom/instagram/android/login/task/LogoutTask$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/task/LogoutTask$1;-><init>(Lcom/instagram/android/login/task/LogoutTask;)V

    .line 44
    iget-object v1, p0, Lcom/instagram/android/login/task/LogoutTask;->mFragmentManager:Landroid/support/v4/app/p;

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/ProgressDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 45
    return-void
.end method
