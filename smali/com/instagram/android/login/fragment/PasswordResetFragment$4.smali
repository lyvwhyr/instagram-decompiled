.class Lcom/instagram/android/login/fragment/PasswordResetFragment$4;
.super Lcom/instagram/android/login/callback/LoginCallbacks;
.source "PasswordResetFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment$4;->this$0:Lcom/instagram/android/login/fragment/PasswordResetFragment;

    invoke-direct {p0, p2}, Lcom/instagram/android/login/callback/LoginCallbacks;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    sget v0, Lcom/facebook/k;->request_error:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 120
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/login/callback/LoginCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 121
    return-void
.end method
