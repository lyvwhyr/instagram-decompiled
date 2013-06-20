.class Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$5;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$5;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment$5;->this$0:Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;

    sget v1, Lcom/facebook/k;->reset_password:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/UserPasswordRecoveryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method
