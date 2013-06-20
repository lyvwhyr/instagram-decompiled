.class public Lcom/instagram/android/login/PasswordValidator;
.super Ljava/lang/Object;
.source "PasswordValidator.java"


# instance fields
.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private final mErrorDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordConfirmHasError:Z

.field private mPasswordConfirmationField:Landroid/widget/EditText;

.field private mPasswordField:Landroid/widget/EditText;

.field private mPasswordHasError:Z

.field private mTextChangedListener:Lcom/instagram/android/login/PasswordValidator$TextChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1
    .parameter "resources"
    .parameter "passwordField"
    .parameter "passwordConfirmationField"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    .line 40
    iput-object p3, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    .line 42
    sget v0, Lcom/facebook/f;->accounts_glyph_password_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    sget v0, Lcom/facebook/f;->accounts_glyph_password_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-direct {p0}, Lcom/instagram/android/login/PasswordValidator;->setupListeners()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/login/PasswordValidator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/instagram/android/login/PasswordValidator;->setPasswordHasError(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/instagram/android/login/PasswordValidator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordHasError:Z

    return v0
.end method

.method static synthetic access$400(Lcom/instagram/android/login/PasswordValidator;)Lcom/instagram/android/login/PasswordValidator$TextChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mTextChangedListener:Lcom/instagram/android/login/PasswordValidator$TextChangedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/login/PasswordValidator;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/login/PasswordValidator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/instagram/android/login/PasswordValidator;->setPasswordConfirmHasError(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/login/PasswordValidator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmHasError:Z

    return v0
.end method

.method private setLeftDrawable(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "editText"
    .parameter "drawable"

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method

.method private setPasswordConfirmHasError(Z)V
    .locals 2
    .parameter "hasError"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmHasError:Z

    .line 166
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/instagram/android/login/PasswordValidator;->setLeftDrawable(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setPasswordHasError(Z)V
    .locals 2
    .parameter "hasError"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordHasError:Z

    .line 161
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/instagram/android/login/PasswordValidator;->setLeftDrawable(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V

    .line 162
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/PasswordValidator$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/PasswordValidator$1;-><init>(Lcom/instagram/android/login/PasswordValidator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/PasswordValidator$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/PasswordValidator$2;-><init>(Lcom/instagram/android/login/PasswordValidator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/PasswordValidator$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/PasswordValidator$3;-><init>(Lcom/instagram/android/login/PasswordValidator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/PasswordValidator$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/PasswordValidator$4;-><init>(Lcom/instagram/android/login/PasswordValidator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 70
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 75
    :cond_0
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->password_must_be_six_characters:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->passwords_do_not_match:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextChangedListener(Lcom/instagram/android/login/PasswordValidator$TextChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/instagram/android/login/PasswordValidator;->mTextChangedListener:Lcom/instagram/android/login/PasswordValidator$TextChangedListener;

    .line 50
    return-void
.end method

.method public shouldEnableSaveButton()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/instagram/android/login/PasswordValidator;->mPasswordConfirmationField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
