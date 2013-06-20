.class Lcom/instagram/android/login/fragment/ForgotPasswordFragment$4;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$4;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$4;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    sget v1, Lcom/facebook/k;->sign_in_help:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
