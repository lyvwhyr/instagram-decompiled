.class Lcom/instagram/android/fragment/UserListFragment$1;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isFacebookList()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$200(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget v0, Lcom/facebook/h;->action_bar_sign_up_next:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    sget v0, Lcom/facebook/g;->action_bar_sign_up_button_next:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    new-instance v2, Lcom/instagram/android/fragment/UserListFragment$1$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserListFragment$1$1;-><init>(Lcom/instagram/android/fragment/UserListFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$1;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 110
    :cond_0
    sget v0, Lcom/facebook/h;->action_bar_sign_up_next:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    sget v0, Lcom/facebook/g;->action_bar_sign_up_button_next:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    new-instance v2, Lcom/instagram/android/fragment/UserListFragment$1$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/UserListFragment$1$2;-><init>(Lcom/instagram/android/fragment/UserListFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$1;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 121
    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mShowFollowAllButton:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$400(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$500(Lcom/instagram/android/fragment/UserListFragment;)Lcom/instagram/android/adapter/UserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    sget v0, Lcom/facebook/h;->action_bar_follow_all:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    sget v0, Lcom/facebook/g;->action_bar_follow_all_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v2, v0}, Lcom/instagram/android/fragment/UserListFragment;->access$602(Lcom/instagram/android/fragment/UserListFragment;Landroid/widget/Button;)Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButtonVisibility:I
    invoke-static {v2}, Lcom/instagram/android/fragment/UserListFragment;->access$700(Lcom/instagram/android/fragment/UserListFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mFollowAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$600(Lcom/instagram/android/fragment/UserListFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->getFollowAllOnClickListener()Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/instagram/android/fragment/UserListFragment;->access$800(Lcom/instagram/android/fragment/UserListFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/UserListFragment$1;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 133
    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$000(Lcom/instagram/android/fragment/UserListFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #getter for: Lcom/instagram/android/fragment/UserListFragment;->mIsLoading:Z
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$900(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v0

    return v0
.end method

.method public showBackButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isSignUpFlow()Z
    invoke-static {v1}, Lcom/instagram/android/fragment/UserListFragment;->access$100(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserListFragment;->getFragmentManager()Landroid/support/v4/app/p;

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
    .line 86
    const/4 v0, 0x0

    return v0
.end method
