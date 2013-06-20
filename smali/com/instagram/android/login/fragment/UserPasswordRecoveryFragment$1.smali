.class Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "UserPasswordRecoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    sget v0, Lcom/facebook/k;->request_error:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_user_password_recovery_button_email_reset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    sget v1, Lcom/facebook/k;->email_reset_link:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 91
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_user_password_recovery_button_email_reset:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    sget v1, Lcom/facebook/k;->sending_email:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 79
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "responseObject"

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_user_password_recovery_button_email_reset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 56
    sget v1, Lcom/facebook/k;->email_sent_short:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    sget v1, Lcom/facebook/k;->instagram_help_center:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/k;->email_sent:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 61
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/facebook/g;->fragment_user_password_recovery_textview_email_sent:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    const-string v3, "http://help.instagram.com/customer/portal/articles/245842-login-troubleshooting"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$1;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-virtual {v4}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/instagram/util/ViewUtil;->annotateTextWithLink(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 66
    new-instance v2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 67
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
