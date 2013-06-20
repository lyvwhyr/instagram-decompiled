.class public Lcom/instagram/android/fragment/EditProfileFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "EditProfileFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final MESSAGE_FINISHED_EDITING_USERNAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EditProfileFragment"

.field private static final USERNAME_CHECK_DELAY:J = 0x3e8L


# instance fields
.field private mBioField:Landroid/widget/EditText;

.field private mChangePasswordButton:Landroid/widget/Button;

.field private mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

.field private mCheckUsernameResponse:Lcom/instagram/android/model/CheckUsernameResponse;

.field private mEmailField:Landroid/widget/EditText;

.field private mEnableSaveButton:Z

.field private mGenderField:Landroid/widget/Spinner;

.field private mHandler:Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

.field private mIsLoading:Z

.field private mNameField:Landroid/widget/EditText;

.field private mOldOrientation:I

.field private mPhoneField:Landroid/widget/EditText;

.field private mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mSaveButton:Landroid/widget/Button;

.field private mUser:Lcom/instagram/android/model/UserForEditing;

.field private mUsernameField:Landroid/widget/EditText;

.field private final mUsernameOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;

.field private final mUsernameTextWatcher:Landroid/text/TextWatcher;

.field private mWebsiteField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z

    .line 96
    new-instance v0, Lcom/instagram/android/fragment/EditProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditProfileFragment$1;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 107
    new-instance v0, Lcom/instagram/android/fragment/EditProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditProfileFragment$2;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameTextWatcher:Landroid/text/TextWatcher;

    .line 675
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mHandler:Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->performUsernameCheck()V

    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/fragment/EditProfileFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getTurningPrivacyOffConfirmationMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/instagram/android/fragment/EditProfileFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/model/UserForEditing;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/instagram/android/fragment/EditProfileFragment;Lcom/instagram/android/model/UserForEditing;)Lcom/instagram/android/model/UserForEditing;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/instagram/android/fragment/EditProfileFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment;->setFieldsVisibility(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->maybePopulateFields()V

    return-void
.end method

.method static synthetic access$1502(Lcom/instagram/android/fragment/EditProfileFragment;Lcom/instagram/android/model/CheckUsernameResponse;)Lcom/instagram/android/model/CheckUsernameResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameResponse:Lcom/instagram/android/model/CheckUsernameResponse;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasAvailable()V

    return-void
.end method

.method static synthetic access$1700(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasError()V

    return-void
.end method

.method static synthetic access$1800(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IgSmallLoadingSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/EditProfileFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z

    return v0
.end method

.method static synthetic access$302(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEnableSaveButton:Z

    return p1
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/EditProfileFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->loadUserForEditing()V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->saveEdits()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/fragment/EditProfileFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getTurningPrivacyOnConfirmationMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createCheckUsernameRequest()V
    .locals 5

    .prologue
    .line 444
    new-instance v0, Lcom/instagram/android/login/request/CheckUsernameRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    invoke-static {}, Lcom/instagram/util/LoaderUtil;->getUniqueId()I

    move-result v3

    new-instance v4, Lcom/instagram/android/fragment/EditProfileFragment$10;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/EditProfileFragment$10;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/request/CheckUsernameRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

    .line 488
    return-void
.end method

.method private getTurningPrivacyOffConfirmationMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/k;->toggle_privacy_confirm_turning_off_title:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->toggle_privacy_confirm_turning_off_body:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTurningPrivacyOnConfirmationMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/k;->toggle_privacy_confirm_turning_on_title:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->toggle_privacy_confirm_turning_on_body:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadUserForEditing()V
    .locals 4

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v0, Lcom/instagram/api/loaderrequest/UserForEditingRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/EditProfileFragment$8;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/EditProfileFragment$8;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/api/loaderrequest/UserForEditingRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserForEditingRequest;->perform()V

    goto :goto_0
.end method

.method private maybePopulateFields()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v0}, Lcom/instagram/android/model/UserForEditing;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v0}, Lcom/instagram/android/model/UserForEditing;->getFullName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mWebsiteField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getExternalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mBioField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getBiography()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEmailField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPhoneField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mGenderField:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getGender()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->genderToPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performUsernameCheck()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasError()V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1}, Lcom/instagram/android/model/UserForEditing;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasCurrent()V

    goto :goto_0

    .line 507
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

    invoke-virtual {v1}, Lcom/instagram/android/login/request/CheckUsernameRequest;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameResponse:Lcom/instagram/android/model/CheckUsernameResponse;

    if-eqz v1, :cond_4

    .line 509
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameResponse:Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-virtual {v0}, Lcom/instagram/android/model/CheckUsernameResponse;->isIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasAvailable()V

    goto :goto_0

    .line 512
    :cond_3
    sget v0, Lcom/facebook/k;->username_x_is_not_available:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameResponse:Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-virtual {v3}, Lcom/instagram/android/model/CheckUsernameResponse;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(Ljava/lang/CharSequence;)V

    .line 515
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->setUsernameHasError()V

    goto :goto_0

    .line 520
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mCheckUsernameRequest:Lcom/instagram/android/login/request/CheckUsernameRequest;

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/request/CheckUsernameRequest;->perform(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveEdits()V
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/UserForEditing;->setFullName(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/UserForEditing;->setUsername(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mBioField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/UserForEditing;->setBiography(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEmailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/UserForEditing;->setEmailAddress(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPhoneField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/UserForEditing;->setPhoneNumber(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mGenderField:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;->positionToGender(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/model/UserForEditing;->setGender(I)V

    .line 407
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mWebsiteField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "^https?://.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    invoke-virtual {v1, v0}, Lcom/instagram/android/model/UserForEditing;->setExternalUrl(Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    new-instance v4, Lcom/instagram/android/fragment/EditProfileFragment$9;

    invoke-direct {v4, p0}, Lcom/instagram/android/fragment/EditProfileFragment$9;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/UserForEditing;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UserProfileSaveRequest;->perform()V

    .line 441
    return-void
.end method

.method private setFieldsVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->edit_profile_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    return-void
.end method

.method private setStickyTabVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->setTabWidgetVisibility(I)V

    .line 543
    return-void
.end method

.method private setUsernameHasAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    sget v1, Lcom/facebook/f;->accounts_glyph_username_positive:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 533
    return-void
.end method

.method private setUsernameHasCurrent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    sget v1, Lcom/facebook/f;->accounts_glyph_username_default:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 539
    return-void
.end method

.method private setUsernameHasError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    sget v1, Lcom/facebook/f;->accounts_glyph_username_error:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 527
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 561
    new-instance v0, Lcom/instagram/android/fragment/EditProfileFragment$11;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditProfileFragment$11;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->createCheckUsernameRequest()V

    .line 152
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 156
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditProfileFragment;->setStickyTabVisibility(I)V

    .line 157
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/EditProfileFragment;->setRetainInstance(Z)V

    .line 136
    new-instance v0, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mHandler:Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

    .line 138
    new-instance v0, Lcom/instagram/android/fragment/EditProfileFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditProfileFragment$3;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    sget v0, Lcom/facebook/h;->fragment_edit_profile:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->full_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mNameField:Landroid/widget/EditText;

    .line 166
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    .line 167
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->website:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mWebsiteField:Landroid/widget/EditText;

    .line 168
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->bio:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mBioField:Landroid/widget/EditText;

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEmailField:Landroid/widget/EditText;

    .line 170
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->phone:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPhoneField:Landroid/widget/EditText;

    .line 171
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->gender:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mGenderField:Landroid/widget/Spinner;

    .line 172
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->save_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->change_password_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mChangePasswordButton:Landroid/widget/Button;

    .line 174
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->username_spinner:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    .line 175
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/facebook/g;->privacy_check_box:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 177
    new-instance v0, Lcom/instagram/android/fragment/EditProfileFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/EditProfileFragment$4;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    .line 188
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mWebsiteField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mBioField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEmailField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPhoneField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mGenderField:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mGenderField:Landroid/widget/Spinner;

    new-instance v3, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/instagram/android/fragment/EditProfileFragment$GenderSpinnerAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Lcom/instagram/android/login/UsernameFilter;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/instagram/android/login/UsernameFilter;-><init>(Landroid/content/res/Resources;)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 204
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/text/method/UpperToLowerReplacement;

    invoke-direct {v3}, Lcom/instagram/android/text/method/UpperToLowerReplacement;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 206
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPhoneField:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/listener/TrimmingTextWatcher;

    iget-object v4, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPhoneField:Landroid/widget/EditText;

    sget-object v5, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_BEGINNING:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/listener/TrimmingTextWatcher;-><init>(Landroid/widget/EditText;Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEmailField:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/listener/TrimmingTextWatcher;

    iget-object v4, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEmailField:Landroid/widget/EditText;

    invoke-direct {v3, v4}, Lcom/instagram/android/listener/TrimmingTextWatcher;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mWebsiteField:Landroid/widget/EditText;

    new-instance v3, Lcom/instagram/android/listener/TrimmingTextWatcher;

    iget-object v4, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mWebsiteField:Landroid/widget/EditText;

    sget-object v5, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_BEGINNING:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/listener/TrimmingTextWatcher;-><init>(Landroid/widget/EditText;Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/instagram/android/fragment/EditProfileFragment$5;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/EditProfileFragment$5;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mChangePasswordButton:Landroid/widget/Button;

    new-instance v3, Lcom/instagram/android/fragment/EditProfileFragment$6;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/EditProfileFragment$6;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v3, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getPrivacyStatus()Lcom/instagram/android/model/User$PrivacyStatus;

    move-result-object v0

    sget-object v4, Lcom/instagram/android/model/User$PrivacyStatus;->PrivacyStatusPrivate:Lcom/instagram/android/model/User$PrivacyStatus;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 229
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    new-instance v1, Lcom/instagram/android/fragment/EditProfileFragment$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/EditProfileFragment$7;-><init>(Lcom/instagram/android/fragment/EditProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, v2}, Lcom/instagram/android/fragment/EditProfileFragment;->setFieldsVisibility(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_1
    move v0, v2

    .line 226
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 271
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mHandler:Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;->removeMessages(I)V

    .line 273
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mRootView:Landroid/view/View;

    .line 274
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mNameField:Landroid/widget/EditText;

    .line 275
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    .line 276
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mWebsiteField:Landroid/widget/EditText;

    .line 277
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mBioField:Landroid/widget/EditText;

    .line 278
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mEmailField:Landroid/widget/EditText;

    .line 279
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPhoneField:Landroid/widget/EditText;

    .line 280
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mGenderField:Landroid/widget/Spinner;

    .line 281
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mSaveButton:Landroid/widget/Button;

    .line 282
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mChangePasswordButton:Landroid/widget/Button;

    .line 283
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameSpinner:Lcom/instagram/android/widget/IgSmallLoadingSpinner;

    .line 284
    iput-object v2, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mPrivacyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 285
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 319
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 320
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 322
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 325
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/EditProfileFragment;->setStickyTabVisibility(I)V

    .line 330
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 332
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 333
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 289
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 291
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mOldOrientation:I

    .line 292
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 295
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 297
    invoke-direct {p0, v4}, Lcom/instagram/android/fragment/EditProfileFragment;->setStickyTabVisibility(I)V

    .line 299
    invoke-virtual {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 306
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 307
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUsernameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0, v4}, Lcom/instagram/android/fragment/EditProfileFragment;->setFieldsVisibility(I)V

    .line 311
    invoke-direct {p0}, Lcom/instagram/android/fragment/EditProfileFragment;->loadUserForEditing()V

    .line 313
    :cond_0
    return-void
.end method
