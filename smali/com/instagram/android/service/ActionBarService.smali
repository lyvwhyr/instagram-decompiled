.class public Lcom/instagram/android/service/ActionBarService;
.super Ljava/lang/Object;
.source "ActionBarService.java"


# static fields
.field public static final ACTION_BAR_BACK_CLICK:Ljava/lang/String; = "com.instagram.android.service.action_bar_back_clicked"

.field public static final ACTION_BAR_CLICK:Ljava/lang/String; = "com.instagram.android.service.action_bar_clicked"

.field public static final ACTION_BAR_REFRESH_CLICK:Ljava/lang/String; = "com.instagram.android.service.action_bar_refresh_clicked"

.field public static final ACTION_BAR_SERVICE:Ljava/lang/String; = "com.instagram.android.service.actionBarService"

.field public static final ACTION_BAR_UPDATED:Ljava/lang/String; = "com.instagram.android.service.action_bar_updated"


# instance fields
.field private mConfigurer:Lcom/instagram/android/fragment/ActionBarConfigurer;

.field private mContext:Landroid/content/Context;

.field private mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/instagram/android/service/ActionBarService;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private actionBarChanged()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.service.action_bar_updated"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 37
    const-string v0, "com.instagram.android.service.actionBarService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/service/ActionBarService;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionBarService not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    return-object v0
.end method

.method private updateRefreshButton()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mConfigurer:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/RefreshButton;->setDisplayedChild(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/RefreshButton;->setDisplayedChild(I)V

    goto :goto_0
.end method


# virtual methods
.method public attach(Lcom/instagram/android/fragment/ActionBarConfigurer;)V
    .locals 0
    .parameter "configurer"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/instagram/android/service/ActionBarService;->mConfigurer:Lcom/instagram/android/fragment/ActionBarConfigurer;

    .line 126
    invoke-direct {p0}, Lcom/instagram/android/service/ActionBarService;->actionBarChanged()V

    .line 127
    return-void
.end method

.method public configureActionBar(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 46
    iput-object p1, p0, Lcom/instagram/android/service/ActionBarService;->mView:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/instagram/android/service/ActionBarService$1;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/service/ActionBarService$1;-><init>(Lcom/instagram/android/service/ActionBarService;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lcom/facebook/g;->action_bar_button_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mConfigurer:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->showBackButton()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget v0, Lcom/facebook/g;->action_bar_button_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/service/ActionBarService$2;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/service/ActionBarService$2;-><init>(Lcom/instagram/android/service/ActionBarService;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcom/facebook/g;->action_bar_button_refresh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mConfigurer:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->showRefreshButton()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    new-instance v0, Lcom/instagram/android/service/ActionBarService$3;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/service/ActionBarService$3;-><init>(Lcom/instagram/android/service/ActionBarService;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    sget v0, Lcom/facebook/g;->action_bar_textview_custom_title_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 78
    iget-object v4, p0, Lcom/instagram/android/service/ActionBarService;->mConfigurer:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/instagram/android/fragment/ActionBarConfigurer;->customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 79
    if-nez v4, :cond_3

    .line 80
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/instagram/android/service/ActionBarService;->mConfigurer:Lcom/instagram/android/fragment/ActionBarConfigurer;

    invoke-interface {v3}, Lcom/instagram/android/fragment/ActionBarConfigurer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    move-object v0, v1

    .line 86
    check-cast v0, Lcom/instagram/android/widget/RefreshButton;

    iput-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    .line 87
    invoke-direct {p0}, Lcom/instagram/android/service/ActionBarService;->updateRefreshButton()V

    .line 88
    return-void

    :cond_1
    move v0, v3

    .line 54
    goto :goto_0

    :cond_2
    move v0, v3

    .line 63
    goto :goto_1

    .line 83
    :cond_3
    sget v2, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public forceUpdate()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/instagram/android/service/ActionBarService;->configureActionBar(Landroid/view/View;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setIsLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/instagram/android/service/ActionBarService;->mRefreshButton:Lcom/instagram/android/widget/RefreshButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/RefreshButton;->setDisplayedChild(I)V

    .line 122
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
