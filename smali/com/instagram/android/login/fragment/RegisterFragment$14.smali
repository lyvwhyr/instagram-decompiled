.class Lcom/instagram/android/login/fragment/RegisterFragment$14;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$14;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 622
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$14;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    sget v1, Lcom/facebook/k;->register:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$14;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->f()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method
