.class Lcom/instagram/android/fragment/UserDetailFragment$1;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "UserDetailFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserDetailFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 222
    sget v0, Lcom/facebook/h;->action_bar_overflow:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 223
    sget v0, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/fragment/UserDetailFragment$1$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserDetailFragment$1$1;-><init>(Lcom/instagram/android/fragment/UserDetailFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserDetailFragment$1;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 238
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;->customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    #getter for: Lcom/instagram/android/fragment/UserDetailFragment;->mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->access$900(Lcom/instagram/android/fragment/UserDetailFragment;)Lcom/instagram/api/loaderrequest/UserDetailRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->getRequestedUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    #getter for: Lcom/instagram/android/fragment/UserDetailFragment;->mUserDetailRequest:Lcom/instagram/api/loaderrequest/UserDetailRequest;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->access$900(Lcom/instagram/android/fragment/UserDetailFragment;)Lcom/instagram/api/loaderrequest/UserDetailRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->getRequestedUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/instagram/android/fragment/UserDetailFragment$1;->this$0:Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserDetailFragment;->isLoading()Z

    move-result v0

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method
