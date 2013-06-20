.class public Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.instagram.android.fragment.FindFacebookFriendsPromptFragment"


# instance fields
.field private final mFacebookAuthListener:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$FacebookAuthListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$FacebookAuthListener;

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->performFacebookAuthorization()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->promptBeforeGoingToNextStep()V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->gotoNextStep()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->showFacebookList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private gotoNextStep()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/FindContactListFriendsPromptFragment;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method private performFacebookAuthorization()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->showFacebookList(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v1, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$FacebookAuthListener;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    goto :goto_0
.end method

.method private promptBeforeGoingToNextStep()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->find_friends:I

    new-instance v2, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$4;-><init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$3;-><init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 119
    return-void
.end method

.method private showFacebookList(Ljava/lang/String;)V
    .locals 6
    .parameter "fbKey"

    .prologue
    const/4 v5, 0x1

    .line 174
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FACEBOOK"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/k;->find_friends_item_facebook_friends:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$5;-><init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->configureActionBar()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_find_friends:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$1;-><init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_skip:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$2;-><init>(Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0, v2}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->getString(I)Ljava/lang/String;

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

    .line 87
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 163
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 164
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 168
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/IgFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 42
    sget v0, Lcom/facebook/h;->fragment_find_facebook_friends_prompt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 49
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 55
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 56
    return-void
.end method
