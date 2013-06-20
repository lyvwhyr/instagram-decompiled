.class public Lcom/instagram/android/fragment/FindFriendsFragment;
.super Lcom/instagram/android/fragment/IgListFragment;
.source "FindFriendsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.instagram.android.fragment.FindFriendsFragment"

.field private static final REQUEST_TWITTER_AUTH:I = 0x1


# instance fields
.field private mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

.field private mFacebookAccount:Lcom/instagram/facebook/FacebookAccount;

.field private final mFacebookAuthListener:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgListFragment;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment;Lcom/instagram/android/fragment/FindFriendsFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    .line 156
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/FindFriendsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->confirmAddressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/FindFriendsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/FindFriendsFragment;->showFacebookList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/FindFriendsFragment;)Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/FindFriendsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/FindFriendsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/FindFriendsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->showContactList()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/fragment/FindFriendsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->showTwitterList()V

    return-void
.end method

.method private confirmAddressDialog()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 196
    sget v1, Lcom/facebook/k;->confirm_find_friends:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->allow:I

    new-instance v2, Lcom/instagram/android/fragment/FindFriendsFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindFriendsFragment$3;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/fragment/FindFriendsFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/FindFriendsFragment$2;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 214
    return-void
.end method

.method private handleResultForTwitterRequest()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/fragment/FindFriendsFragment$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FindFriendsFragment$4;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method private isSignUpFlow()Z
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showContactList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    .line 271
    invoke-virtual {v0, v3}, Lcom/instagram/android/fragment/UserListFragment;->setSectioned(Z)V

    .line 272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_ADDRESSBOOK"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 280
    return-void
.end method

.method private showFacebookList(Ljava/lang/String;)V
    .locals 4
    .parameter "fbKey"

    .prologue
    const/4 v3, 0x1

    .line 245
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    .line 246
    invoke-virtual {v0, v3}, Lcom/instagram/android/fragment/UserListFragment;->setSectioned(Z)V

    .line 247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FACEBOOK"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method private showTwitterList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 258
    new-instance v0, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    .line 259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 260
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TWITTER"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 267
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/instagram/android/fragment/FindFriendsFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FindFriendsFragment$5;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->configureActionBar()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindFriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FindFriendsFragment$1;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    return-void

    .line 111
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
    .line 218
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 224
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mFacebookAuthListener:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 228
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 232
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/IgListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 233
    return-void

    .line 221
    :pswitch_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->handleResultForTwitterRequest()V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->find_friends_item_from_my_contact_list:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->find_friends_item_facebook_friends:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/instagram/android/model/menu/SeparatorItem;

    invoke-direct {v1}, Lcom/instagram/android/model/menu/SeparatorItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->find_friends_item_suggested_users:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/instagram/android/model/menu/MenuItem;

    sget v2, Lcom/facebook/k;->find_friends_item_search_names_and_usernames:I

    invoke-direct {v1, v2}, Lcom/instagram/android/model/menu/MenuItem;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    new-instance v1, Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    .line 72
    iget-object v1, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->setItems(Ljava/util/Collection;)V

    .line 73
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment;->mAdapter:Lcom/instagram/android/adapter/SimplePreferenceAdapter;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    sget v0, Lcom/facebook/h;->layout_listview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    sget v1, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onPause()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->isSignUpFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;->overrideBack:Z

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgListFragment;->onResume()V

    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FindFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method
