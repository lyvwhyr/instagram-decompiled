.class public Lcom/instagram/android/fragment/ChangePasswordFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "ChangePasswordFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# instance fields
.field private mCurrentPasswordField:Landroid/widget/EditText;

.field private mNewPasswordConfirmationField:Landroid/widget/EditText;

.field private mNewPasswordField:Landroid/widget/EditText;

.field private mOldOrientation:I

.field private mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/ChangePasswordFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->saveEdits()V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/ChangePasswordFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->maybeEnableSaveButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/ChangePasswordFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ChangePasswordFragment;->setTextFieldsEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/ChangePasswordFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordField:Landroid/widget/EditText;

    return-object v0
.end method

.method private maybeEnableSaveButton()V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v0}, Lcom/instagram/android/login/PasswordValidator;->shouldEnableSaveButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mCurrentPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveEdits()V
    .locals 7

    .prologue
    .line 142
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v0}, Lcom/instagram/android/login/PasswordValidator;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v0}, Lcom/instagram/android/login/PasswordValidator;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mCurrentPasswordField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordConfirmationField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/instagram/android/fragment/ChangePasswordFragment$5;

    invoke-direct {v6, p0}, Lcom/instagram/android/fragment/ChangePasswordFragment$5;-><init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/ChangePasswordRequest;->perform()V

    goto :goto_0
.end method

.method private setStickyTabVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 221
    return-void
.end method

.method private setTextFieldsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mCurrentPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordConfirmationField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 217
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/instagram/android/fragment/ChangePasswordFragment$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ChangePasswordFragment$6;-><init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    sget v0, Lcom/facebook/h;->fragment_change_password:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    sget v0, Lcom/facebook/g;->current_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mCurrentPasswordField:Landroid/widget/EditText;

    .line 48
    sget v0, Lcom/facebook/g;->new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordField:Landroid/widget/EditText;

    .line 49
    sget v0, Lcom/facebook/g;->confirm_new_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordConfirmationField:Landroid/widget/EditText;

    .line 50
    sget v0, Lcom/facebook/g;->save_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/instagram/android/fragment/ChangePasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ChangePasswordFragment$1;-><init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v0, Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordField:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordConfirmationField:Landroid/widget/EditText;

    invoke-direct {v0, v2, v3, v4}, Lcom/instagram/android/login/PasswordValidator;-><init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    .line 61
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    new-instance v2, Lcom/instagram/android/fragment/ChangePasswordFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ChangePasswordFragment$2;-><init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    invoke-virtual {v0, v2}, Lcom/instagram/android/login/PasswordValidator;->setTextChangedListener(Lcom/instagram/android/login/PasswordValidator$TextChangedListener;)V

    .line 68
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mCurrentPasswordField:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/ChangePasswordFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ChangePasswordFragment$3;-><init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordConfirmationField:Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/fragment/ChangePasswordFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ChangePasswordFragment$4;-><init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 96
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 103
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->setTextChangedListener(Lcom/instagram/android/login/PasswordValidator$TextChangedListener;)V

    .line 104
    iput-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    .line 105
    iput-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mCurrentPasswordField:Landroid/widget/EditText;

    .line 106
    iput-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordField:Landroid/widget/EditText;

    .line 107
    iput-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mNewPasswordConfirmationField:Landroid/widget/EditText;

    .line 108
    iput-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 130
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 133
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->setStickyTabVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v1}, Lcom/instagram/android/login/PasswordValidator;->shouldEnableSaveButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment;->mOldOrientation:I

    .line 118
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 121
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 123
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->setStickyTabVisibility(I)V

    .line 124
    return-void
.end method
