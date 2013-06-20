.class public Lcom/instagram/android/fragment/ActionBarConfigurerProxy;
.super Ljava/lang/Object;
.source "ActionBarConfigurerProxy.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field protected mProxy:Lcom/instagram/android/fragment/ActionBarConfigurer;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/ActionBarConfigurer;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;->mProxy:Lcom/instagram/android/fragment/ActionBarConfigurer;

    .line 15
    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;->mProxy:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0, p1, p2}, Lcom/instagram/android/fragment/ActionBarConfigurer;->customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;->mProxy:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;->mProxy:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;->mProxy:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->showBackButton()Z

    move-result v0

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/fragment/ActionBarConfigurerProxy;->mProxy:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->showRefreshButton()Z

    move-result v0

    return v0
.end method
