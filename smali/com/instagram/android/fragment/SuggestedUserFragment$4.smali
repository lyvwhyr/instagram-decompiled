.class Lcom/instagram/android/fragment/SuggestedUserFragment$4;
.super Ljava/lang/Object;
.source "SuggestedUserFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #calls: Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z
    invoke-static {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$700(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget v0, Lcom/facebook/h;->action_bar_suggested_users_signup_flow:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 214
    sget v0, Lcom/facebook/g;->action_bar_suggested_users_signup_flow_button_done:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 215
    new-instance v2, Lcom/instagram/android/fragment/SuggestedUserFragment$4$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/SuggestedUserFragment$4$1;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment$4;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 230
    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    sget v1, Lcom/facebook/k;->find_friends_item_suggested_users:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mIsLoading:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$500(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v0

    return v0
.end method

.method public showBackButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 235
    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #calls: Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z
    invoke-static {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$700(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->f()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #calls: Lcom/instagram/android/fragment/SuggestedUserFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$700(Lcom/instagram/android/fragment/SuggestedUserFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
