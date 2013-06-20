.class Lcom/instagram/android/fragment/SelfFragment$2;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "SelfFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SelfFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SelfFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/android/fragment/SelfFragment$2;->this$0:Lcom/instagram/android/fragment/SelfFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    .line 98
    sget v0, Lcom/facebook/h;->action_bar_overflow:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 99
    sget v0, Lcom/facebook/g;->action_bar_overflow_imageview_search:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    sget v0, Lcom/facebook/g;->action_bar_overflow_imageview_search:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/fragment/SelfFragment$2$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/SelfFragment$2$1;-><init>(Lcom/instagram/android/fragment/SelfFragment$2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/fragment/SelfFragment$2$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/SelfFragment$2$2;-><init>(Lcom/instagram/android/fragment/SelfFragment$2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SelfFragment$2;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment$2;->this$0:Lcom/instagram/android/fragment/SelfFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SelfFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/android/fragment/SelfFragment$2;->this$0:Lcom/instagram/android/fragment/SelfFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SelfFragment;->isLoading()Z

    move-result v0

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
