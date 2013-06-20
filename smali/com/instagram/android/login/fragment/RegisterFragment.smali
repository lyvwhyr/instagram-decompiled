.class public Lcom/instagram/android/login/fragment/RegisterFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "RegisterFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENT_IS_SIGN_UP_FLOW:Ljava/lang/String; = "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

.field private static final MESSAGE_FINISHED_EDITING_USERNAME:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "RegisterFragment"

.field private static final USERNAME_CHECK_DELAY:J = 0x3e8L

.field private static sHasFinishRegistrationFlow:Z

.field private static sNumberOfUsersFollowed:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

.field private mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

.field private mCreateAccountRequest:Lcom/instagram/android/login/request/CreateAccountRequest;

.field private mEditTextPassword:Landroid/widget/EditText;

.field private mEmailHasError:Z

.field private final mFacebookAuthListener:Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;

.field private mFacebookHelper:Lcom/instagram/api/loaderrequest/FacebookHelper;

.field private mHandler:Landroid/os/Handler;

.field private mInitialCheckusernameRequestRan:Z

.field private mPasswordHasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/login/fragment/RegisterFragment;->sHasFinishRegistrationFlow:Z

    .line 804
    const/4 v0, 0x0

    sput v0, Lcom/instagram/android/login/fragment/RegisterFragment;->sNumberOfUsersFollowed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->handler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mInitialCheckusernameRequestRan:Z

    .line 637
    new-instance v0, Lcom/instagram/android/login/fragment/RegisterFragment$15;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$15;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mHandler:Landroid/os/Handler;

    .line 833
    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->setUsernameHasAvailable()V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment;->setUsernameHasError(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/instagram/android/login/fragment/RegisterFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/instagram/android/login/fragment/RegisterFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mInitialCheckusernameRequestRan:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/instagram/android/login/fragment/RegisterFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mInitialCheckusernameRequestRan:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->performUsernameCheck()V

    return-void
.end method

.method static synthetic access$1500(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment;->setPasswordHasError(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/instagram/android/login/fragment/RegisterFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mPasswordHasError:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment;->setEmailHasError(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/instagram/android/login/fragment/RegisterFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment;->showEmailSuggestionDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/instagram/android/login/fragment/RegisterFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mEmailHasError:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->onFacebookAuthorizationCompleted()V

    return-void
.end method

.method static synthetic access$2100(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->navigateToNextFragmentAfterSignUpWasSuccessful()V

    return-void
.end method

.method static synthetic access$2200(Lcom/instagram/android/login/fragment/RegisterFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->validate()V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/login/fragment/RegisterFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/login/fragment/RegisterFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->submitRegistrationForm()V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/login/fragment/RegisterFragment;)Lcom/instagram/api/loaderrequest/AddAvatarHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment;->setFillOutWithFacebookEnabled(Z)V

    return-void
.end method

.method private getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFullname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->full_name:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHasFinishedRegistrationFlow()Z
    .locals 1

    .prologue
    .line 526
    sget-boolean v0, Lcom/instagram/android/login/fragment/RegisterFragment;->sHasFinishRegistrationFlow:Z

    return v0
.end method

.method public static getNumberOfUsersFollowed()I
    .locals 1

    .prologue
    .line 811
    sget v0, Lcom/instagram/android/login/fragment/RegisterFragment;->sNumberOfUsersFollowed:I

    return v0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->phone:I

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
    .line 581
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 572
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 573
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 574
    return-void
.end method

.method public static incrementNumberOfUsersFollowed()V
    .locals 1

    .prologue
    .line 807
    sget v0, Lcom/instagram/android/login/fragment/RegisterFragment;->sNumberOfUsersFollowed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/instagram/android/login/fragment/RegisterFragment;->sNumberOfUsersFollowed:I

    .line 808
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 248
    invoke-static {}, Lcom/instagram/util/ApplicationUuidHelper;->seedUUID()V

    .line 250
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->signUpButton:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$4;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    new-instance v0, Lcom/instagram/android/login/fragment/RegisterFragment$5;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$5;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    .line 294
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/g;->fragment_sign_up_profile_picture_button:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/g;->fragment_sign_up_profile_picture_wrap:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_facebook_connect:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$6;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    new-instance v0, Lcom/instagram/android/login/request/CheckUsernameRequest;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/instagram/android/login/fragment/RegisterFragment$7;

    invoke-direct {v4, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$7;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/request/CheckUsernameRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

    .line 349
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$8;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$8;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 358
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$9;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$9;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$10;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$10;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 381
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$11;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$11;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 395
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$12;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$12;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/login/fragment/RegisterFragment$13;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$13;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 427
    return-void
.end method

.method private loadFacebookInfo()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookHelper:Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->fetchFacebookUserInfo()V

    .line 444
    return-void
.end method

.method private navigateToNextFragmentAfterSignUpWasSuccessful()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 701
    invoke-static {v5}, Lcom/instagram/android/login/fragment/RegisterFragment;->setHasFinishedRegistrationFlow(Z)V

    .line 703
    invoke-static {}, Lcom/instagram/android/login/fragment/RegisterFragment;->resetHasFollowedUsers()V

    .line 705
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/receiver/C2DMReceiver;->refreshAppC2DMRegistrationState(Landroid/content/Context;)V

    .line 707
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->hasQueuedStoreTokenRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->performStoreTokenRequest()V

    .line 711
    :cond_0
    invoke-static {}, Lcom/instagram/twitter/TwitterAccount;->hasQueuedStoreTokenRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-static {}, Lcom/instagram/twitter/TwitterAccount;->performStoreTokenRequest()V

    .line 715
    :cond_1
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 718
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 719
    const-string v2, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FACEBOOK"

    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/k;->find_friends_item_facebook_friends:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v0, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_ALL_BUTTON"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 722
    const-string v0, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 723
    const-string v0, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_CLICK_THROUGH"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 724
    const-string v0, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 725
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 732
    :goto_0
    return-void

    .line 727
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    const-string v1, "noBackStack"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 729
    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/FindFacebookFriendsPromptFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onFacebookAuthorizationCompleted()V
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 517
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->loadFacebookProfilePictureAfterAuthorization()V

    .line 518
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->loadFacebookInfo()V

    .line 519
    return-void
.end method

.method private performUsernameCheck()V
    .locals 3

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->setUsernameHasError(Z)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

    invoke-virtual {v2}, Lcom/instagram/android/login/request/CheckUsernameRequest;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/request/CheckUsernameRequest;->perform(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resetHasFollowedUsers()V
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    sput v0, Lcom/instagram/android/login/fragment/RegisterFragment;->sNumberOfUsersFollowed:I

    .line 816
    return-void
.end method

.method private setEmailHasError(Z)V
    .locals 3
    .parameter "hasError"

    .prologue
    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mEmailHasError:Z

    .line 801
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email_glyph:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lcom/facebook/f;->accounts_glyph_email_error:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    return-void

    .line 801
    :cond_0
    sget v1, Lcom/facebook/f;->accounts_glyph_email_default:I

    goto :goto_0
.end method

.method private setFillOutWithFacebookEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_facebook_connect:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 557
    return-void
.end method

.method public static setHasFinishedRegistrationFlow(Z)V
    .locals 0
    .parameter "hasFinishRegistrationFlow"

    .prologue
    .line 522
    sput-boolean p0, Lcom/instagram/android/login/fragment/RegisterFragment;->sHasFinishRegistrationFlow:Z

    .line 523
    return-void
.end method

.method private setPasswordHasError(Z)V
    .locals 3
    .parameter "hasError"

    .prologue
    .line 795
    iput-boolean p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mPasswordHasError:Z

    .line 796
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->password_glyph:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lcom/facebook/f;->accounts_glyph_password_error:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 797
    return-void

    .line 796
    :cond_0
    sget v1, Lcom/facebook/f;->accounts_glyph_password_default:I

    goto :goto_0
.end method

.method private setUsernameHasAvailable()V
    .locals 3

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username_glyph:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->accounts_glyph_username_positive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    return-void
.end method

.method private setUsernameHasError(Z)V
    .locals 3
    .parameter "hasError"

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username_glyph:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lcom/facebook/f;->accounts_glyph_username_error:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    return-void

    .line 787
    :cond_0
    sget v1, Lcom/facebook/f;->accounts_glyph_username_default:I

    goto :goto_0
.end method

.method private showEmailSuggestionDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "emailSuggestion"

    .prologue
    .line 134
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 135
    sget v1, Lcom/facebook/k;->email_suggestion_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 136
    invoke-virtual {v0, p1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 137
    sget v1, Lcom/facebook/k;->yes:I

    new-instance v2, Lcom/instagram/android/login/fragment/RegisterFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$1;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 145
    sget v1, Lcom/facebook/k;->no:I

    new-instance v2, Lcom/instagram/android/login/fragment/RegisterFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$2;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 151
    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 152
    return-void
.end method

.method private submitRegistrationForm()V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->phone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 233
    new-instance v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;

    invoke-direct {v0}, Lcom/instagram/android/login/request/CreateAccountRequest$Params;-><init>()V

    .line 235
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->email:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->username:Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->password:Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getPhone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->phone:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    invoke-virtual {v1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->profilePic:Landroid/graphics/Bitmap;

    .line 240
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/ApplicationUuidHelper;->generateOldStyleUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->guid:Ljava/lang/String;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/util/ApplicationUuidHelper;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->deviceId:Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getFullname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/login/request/CreateAccountRequest$Params;->fullName:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mCreateAccountRequest:Lcom/instagram/android/login/request/CreateAccountRequest;

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/request/CreateAccountRequest;->perform(Lcom/instagram/android/login/request/CreateAccountRequest$Params;)V

    .line 245
    return-void
.end method

.method private updateFieldsWithFacebookUserInfo(Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V
    .locals 6
    .parameter "userInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 447
    if-eqz p1, :cond_3

    .line 450
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 451
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/g;->full_name:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 452
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v5, Lcom/facebook/g;->password:I

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 453
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v5, Lcom/facebook/g;->username:I

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 455
    iget-object v2, p1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->Email:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 456
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->Email:Ljava/lang/String;

    const-string v5, "@proxymail.facebook.com"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    iget-object v2, p1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->Email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move v0, v3

    .line 465
    :goto_0
    iget-object v2, p1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->FullName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 466
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p1, Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;->FullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookHelper:Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->isOnlyUpdatingProfilePicture()Z

    move-result v0

    if-nez v0, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->disclosure_facebook:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->disclosure_facebook_done:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 475
    invoke-direct {p0, v4}, Lcom/instagram/android/login/fragment/RegisterFragment;->setFillOutWithFacebookEnabled(Z)V

    .line 478
    :cond_2
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 483
    :cond_3
    return-void

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->signUpButton:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->signUpButton:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public facebookUserInfoRequestCancelled()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookHelper:Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->isOnlyUpdatingProfilePicture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->setFillOutWithFacebookEnabled(Z)V

    .line 498
    :cond_0
    return-void
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 609
    new-instance v0, Lcom/instagram/android/login/fragment/RegisterFragment$14;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$14;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->initViews()V

    .line 130
    new-instance v0, Lcom/instagram/android/login/request/CreateAccountRequest;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/login/fragment/RegisterFragment$CreateAccountCallbacks;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/request/CreateAccountRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mCreateAccountRequest:Lcom/instagram/android/login/request/CreateAccountRequest;

    .line 131
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 117
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 121
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 122
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->onActivityResult(IILandroid/content/Intent;Z)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance v0, Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    invoke-direct {v0, p0, p1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    .line 102
    new-instance v0, Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-direct {v0, p0}, Lcom/instagram/api/loaderrequest/FacebookHelper;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookHelper:Lcom/instagram/api/loaderrequest/FacebookHelper;

    .line 105
    invoke-static {v1}, Lcom/instagram/facebook/FacebookAccount;->deleteCredentials(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/instagram/twitter/TwitterAccount;->remove(Landroid/content/Context;Z)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    sget v0, Lcom/facebook/h;->fragment_register:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 159
    sget v0, Lcom/facebook/g;->password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mEditTextPassword:Landroid/widget/EditText;

    .line 176
    new-instance v2, Lcom/instagram/android/login/fragment/RegisterFragment$FormValidator;

    invoke-direct {v2, p0, v8}, Lcom/instagram/android/login/fragment/RegisterFragment$FormValidator;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V

    .line 177
    sget v0, Lcom/facebook/g;->email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    sget v0, Lcom/facebook/g;->password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    sget v0, Lcom/facebook/g;->username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    sget v0, Lcom/facebook/g;->username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Lcom/instagram/android/login/UsernameFilter;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/instagram/android/login/UsernameFilter;-><init>(Landroid/content/res/Resources;)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 185
    sget v0, Lcom/facebook/g;->username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/text/method/UpperToLowerReplacement;

    invoke-direct {v2}, Lcom/instagram/android/text/method/UpperToLowerReplacement;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 187
    sget v0, Lcom/facebook/g;->email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Lcom/instagram/android/login/fragment/RegisterFragment$SpacesFilter;

    invoke-direct {v3, v8}, Lcom/instagram/android/login/fragment/RegisterFragment$SpacesFilter;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment$1;)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 189
    sget v0, Lcom/facebook/g;->phone:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/RegisterFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$3;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    sget v0, Lcom/facebook/g;->tos_warning:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    new-instance v2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 202
    sget v2, Lcom/facebook/k;->tos_warning_with_privacy_policy:I

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&lt;a href=&quot;http://instagram.com/about/legal/terms/&quot;&gt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/facebook/k;->terms_of_service:I

    invoke-virtual {p0, v5}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&lt;/a&gt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&lt;a href=&quot;http://instagram.com/about/legal/privacy/&quot;&gt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/facebook/k;->privacy_policy:I

    invoke-virtual {p0, v5}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&lt;/a&gt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->onDestroy()V

    .line 112
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 736
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 737
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->validate()V

    .line 738
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 562
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 563
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->hideKeyboard()V

    .line 568
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 569
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/IgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 221
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mAddAvatarHelper:Lcom/instagram/api/loaderrequest/AddAvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AddAvatarHelper;->onViewCreated()V

    .line 222
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_profile_picture_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/g;->fragment_sign_up_profile_picture_button:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 223
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_profile_picture_image_view:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/g;->fragment_sign_up_profile_picture_button:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 224
    return-void
.end method

.method public performFacebookAuthorization(Z)V
    .locals 3
    .parameter "onlyUpdateProfilePicture"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookHelper:Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-virtual {v0, p1}, Lcom/instagram/api/loaderrequest/FacebookHelper;->setOnlyUpdatingProfilePicture(Z)V

    .line 502
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Lcom/facebook/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->onFacebookAuthorizationCompleted()V

    .line 513
    :goto_0
    return-void

    .line 506
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS:[Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookAuthListener:Lcom/instagram/android/login/fragment/RegisterFragment$FacebookAuthListener;

    invoke-virtual {v1, p0, v0, v2}, Lcom/facebook/a/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/a/e;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/instagram/facebook/FacebookConstants;->FACEBOOK_PERMISSIONS_WITH_EMAIL:[Ljava/lang/String;

    goto :goto_1
.end method

.method public setFacebookUserInfoResult(Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V
    .locals 1
    .parameter "userInfo"

    .prologue
    .line 486
    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment;->mFacebookHelper:Lcom/instagram/api/loaderrequest/FacebookHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FacebookHelper;->isOnlyUpdatingProfilePicture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment;->updateFieldsWithFacebookUserInfo(Lcom/instagram/api/loaderrequest/FacebookHelper$FacebookUserInfo;)V

    .line 492
    :cond_0
    return-void
.end method

.method public setProfileImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 597
    if-eqz p1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_profile_picture_image_view:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 599
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_profile_picture_image_view:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 600
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_profile_picture_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_profile_picture_image_view:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 603
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_sign_up_profile_picture_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
