.class Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;->this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 153
    sget v0, Lcom/facebook/h;->action_bar_find_friends_signup_flow:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 154
    sget v0, Lcom/facebook/g;->action_bar_find_friends_signup_flow_button_next:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7$1;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;->this$0:Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    sget v1, Lcom/facebook/k;->find_friends_menu_label:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method
