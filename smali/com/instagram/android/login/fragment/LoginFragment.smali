.class public Lcom/instagram/android/login/fragment/LoginFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "LoginFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENT_USER_ID:Ljava/lang/String; = "com.instagram.android.login.fragment.LoginFragment.ARGUMENT_USER_ID"

.field public static final SEPT_2012_BUILD_DATE:J = 0x139b37cbc60L

.field public static final TAG:Ljava/lang/String; = "LoginFragment"


# instance fields
.field private mLoginRequest:Lcom/instagram/android/login/request/LoginRequest;

.field private mUser:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/login/fragment/LoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->doLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/login/fragment/LoginFragment;)Lcom/instagram/android/model/User;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/login/fragment/LoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->validate()V

    return-void
.end method

.method private doLogin()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x139b37cbc60L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 147
    sget v0, Lcom/facebook/k;->wrong_datetime:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mLoginRequest:Lcom/instagram/android/login/request/LoginRequest;

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/request/LoginRequest;->perform(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 172
    return-void
.end method

.method private showKeyboard()V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 177
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 178
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_fragment_login_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_fragment_login_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/instagram/android/login/fragment/LoginFragment$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/LoginFragment$6;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstance"

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/instagram/android/login/request/LoginRequest;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/login/callback/LoginCallbacks;

    invoke-direct {v4, p0}, Lcom/instagram/android/login/callback/LoginCallbacks;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/instagram/android/login/request/LoginRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mLoginRequest:Lcom/instagram/android/login/request/LoginRequest;

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.LoginFragment.ARGUMENT_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 56
    :goto_0
    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    .line 58
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    if-nez v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getUsersThatHaveSignedIn()Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 61
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    iput-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 55
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    if-nez v0, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()V

    .line 142
    :goto_2
    return-void

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_fragment_login_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LoginFragment$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/LoginFragment$1;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->forgot_password_link:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LoginFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/LoginFragment$2;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LoginFragment$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/LoginFragment$3;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->forget_account:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->forget_account:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/LoginFragment$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/LoginFragment$4;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_static_username_group:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_username_input_group:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/f;->input_single_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 127
    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/LoginFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->profile_button:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IgProfileButton;

    .line 128
    iget-object v1, p0, Lcom/instagram/android/login/fragment/LoginFragment;->mUser:Lcom/instagram/android/model/User;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProfileButton;->setUser(Lcom/instagram/android/model/User;)V

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/g;->login_static_username_group:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    :goto_3
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/e;->edittext_glyph_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->edittext_glyph_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2

    .line 132
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->forget_account:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_static_username_group:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->login_username_input_group:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->input_bottom_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 183
    sget v0, Lcom/facebook/h;->fragment_login:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    new-instance v2, Lcom/instagram/android/login/fragment/LoginFragment$FormValidator;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/instagram/android/login/fragment/LoginFragment$FormValidator;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;Lcom/instagram/android/login/fragment/LoginFragment$1;)V

    .line 186
    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/LoginFragment$5;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/LoginFragment$5;-><init>(Lcom/instagram/android/login/fragment/LoginFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 203
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 160
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->validate()V

    .line 161
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LoginFragment;->hideKeyboard()V

    .line 166
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 167
    return-void
.end method
