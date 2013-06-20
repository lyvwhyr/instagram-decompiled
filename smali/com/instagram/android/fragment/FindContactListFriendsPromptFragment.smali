.class public Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.instagram.android.fragment.FindContactListFriendsPromptFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->confirmAddressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->promptBeforeGoingToNextStep()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->gotoNextStep()V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->showContactList()V

    return-void
.end method

.method private confirmAddressDialog()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 106
    sget v1, Lcom/facebook/k;->confirm_find_friends:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->allow:I

    new-instance v2, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$6;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$6;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$5;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$5;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    return-void
.end method

.method private gotoNextStep()V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/SuggestedUserFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method private promptBeforeGoingToNextStep()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/android/login/fragment/RegisterFragment;->getNumberOfUsersFollowed()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->gotoNextStep()V

    .line 96
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->find_friends:I

    new-instance v2, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$4;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$3;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showContactList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_ADDRESSBOOK"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/k;->find_friends_item_from_my_contact_list:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 135
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$7;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->configureActionBar()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_find_friends:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$1;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_skip:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment$2;-><init>(Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_skip:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->skip:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 28
    sget v0, Lcom/facebook/h;->fragment_find_contact_list_friends_prompt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 35
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 41
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 42
    return-void
.end method
