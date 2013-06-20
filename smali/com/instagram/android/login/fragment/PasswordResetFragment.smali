.class public Lcom/instagram/android/login/fragment/PasswordResetFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "PasswordResetFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENT_RESET_TOKEN:Ljava/lang/String; = "argument_reset_token"

.field public static final ARGUMENT_USER_ID:Ljava/lang/String; = "argument_user_id"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field private mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

.field public final mResetAction:Landroid/view/View$OnClickListener;

.field private mUser:Lcom/instagram/android/model/User;

.field public final mUserLoadCallback:Lcom/instagram/api/AbstractStreamingApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractStreamingApiCallbacks",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment$1;-><init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUserLoadCallback:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    .line 100
    new-instance v0, Lcom/instagram/android/login/fragment/PasswordResetFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment$3;-><init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mResetAction:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/login/fragment/PasswordResetFragment;)Lcom/instagram/android/model/User;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUser:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/login/fragment/PasswordResetFragment;Lcom/instagram/android/model/User;)Lcom/instagram/android/model/User;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUser:Lcom/instagram/android/model/User;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/view/View;Lcom/instagram/android/model/User;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->bindUser(Landroid/view/View;Lcom/instagram/android/model/User;)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/login/fragment/PasswordResetFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/instagram/android/login/fragment/PasswordResetFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->updateLoadingState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->doReset()V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/login/fragment/PasswordResetFragment;)Lcom/instagram/android/login/PasswordValidator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    return-object v0
.end method

.method private bindUser(Landroid/view/View;Lcom/instagram/android/model/User;)V
    .locals 5
    .parameter "view"
    .parameter "user"

    .prologue
    const/4 v4, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 87
    :cond_0
    sget v0, Lcom/facebook/g;->fragment_password_reset_profile_picture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    .line 88
    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v4}, Lcom/instagram/android/mediacache/IgImageView;->setVisibility(I)V

    .line 91
    sget v0, Lcom/facebook/g;->fragment_password_reset_profile_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/k;->welcome_back_enter_twice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iput-boolean v4, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z

    .line 97
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->updateLoadingState(Landroid/view/View;)V

    goto :goto_0
.end method

.method private doReset()V
    .locals 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v0}, Lcom/instagram/android/login/PasswordValidator;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v0}, Lcom/instagram/android/login/PasswordValidator;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/instagram/android/login/request/ResetRequest;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/PasswordResetFragment$4;

    invoke-direct {v3, p0, p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment$4;-><init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/support/v4/app/Fragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/request/ResetRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getNewPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getConfirmNewPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getPasswordResetToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/request/ResetRequest;->perform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getConfirmNewPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_password_reset_edittext_confirm_new_password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 212
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNewPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_password_reset_edittext_new_password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 207
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPasswordResetToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argument_reset_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateLoadingState(Landroid/view/View;)V
    .locals 2
    .parameter "parentView"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/fragment/PasswordResetFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/fragment/PasswordResetFragment$2;-><init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/instagram/android/login/fragment/PasswordResetFragment$7;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment$7;-><init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argument_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/UserStore;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mLoading:Z

    .line 195
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUser:Lcom/instagram/android/model/User;

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Lcom/instagram/api/loaderrequest/UserDetailRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUserLoadCallback:Lcom/instagram/api/AbstractStreamingApiCallbacks;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/UserDetailRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/loaderrequest/UserDetailRequest;->performWithUserId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 133
    sget v0, Lcom/facebook/h;->fragment_password_reset:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 135
    new-instance v3, Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v0, Lcom/facebook/g;->fragment_password_reset_edittext_new_password:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget v1, Lcom/facebook/g;->fragment_password_reset_edittext_confirm_new_password:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {v3, v4, v0, v1}, Lcom/instagram/android/login/PasswordValidator;-><init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iput-object v3, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    .line 140
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    new-instance v1, Lcom/instagram/android/login/fragment/PasswordResetFragment$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment$5;-><init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->setTextChangedListener(Lcom/instagram/android/login/PasswordValidator$TextChangedListener;)V

    .line 149
    sget v0, Lcom/facebook/g;->fragment_password_reset_edittext_confirm_new_password:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/fragment/PasswordResetFragment$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment$6;-><init>(Lcom/instagram/android/login/fragment/PasswordResetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 163
    sget v0, Lcom/facebook/g;->fragment_password_reset_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mResetAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUser:Lcom/instagram/android/model/User;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mUser:Lcom/instagram/android/model/User;

    invoke-direct {p0, v2, v0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->bindUser(Landroid/view/View;Lcom/instagram/android/model/User;)V

    .line 169
    :cond_0
    invoke-direct {p0, v2}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->updateLoadingState(Landroid/view/View;)V

    .line 171
    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 177
    iget-object v0, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/PasswordValidator;->setTextChangedListener(Lcom/instagram/android/login/PasswordValidator$TextChangedListener;)V

    .line 178
    iput-object v1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/PasswordResetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_password_reset_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/instagram/android/login/fragment/PasswordResetFragment;->mPasswordValidator:Lcom/instagram/android/login/PasswordValidator;

    invoke-virtual {v1}, Lcom/instagram/android/login/PasswordValidator;->shouldEnableSaveButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    return-void
.end method
