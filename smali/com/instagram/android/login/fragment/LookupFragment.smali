.class public Lcom/instagram/android/login/fragment/LookupFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "LookupFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final PROGRESS:Ljava/lang/String; = "lookupfragment_progress"


# instance fields
.field public final LookupAction:Landroid/view/View$OnClickListener;

.field public final RequestCallbacks:Lcom/instagram/api/AbstractApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/instagram/android/login/fragment/LookupFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/LookupFragment$1;-><init>(Lcom/instagram/android/login/fragment/LookupFragment;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment;->RequestCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    .line 112
    new-instance v0, Lcom/instagram/android/login/fragment/LookupFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/LookupFragment$2;-><init>(Lcom/instagram/android/login/fragment/LookupFragment;)V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment;->LookupAction:Landroid/view/View$OnClickListener;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/login/fragment/LookupFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getUsernameOrEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/login/fragment/LookupFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/login/fragment/LookupFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->doLookup()V

    return-void
.end method

.method static synthetic access$400(Lcom/instagram/android/login/fragment/LookupFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->validate()V

    return-void
.end method

.method private doLookup()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/instagram/android/login/request/LookupRequest;

    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/LookupFragment;->RequestCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/login/request/LookupRequest;-><init>(Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getUsernameOrEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/request/LookupRequest;->perform(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private getUsernameOrEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_edittext:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 213
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

.method private hideKeyboard()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_edittext:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 163
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 165
    return-void
.end method

.method private showKeyboard()V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_edittext:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 156
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 157
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 159
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_button:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getUsernameOrEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 209
    :cond_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/instagram/android/login/fragment/LookupFragment$4;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/LookupFragment$4;-><init>(Lcom/instagram/android/login/fragment/LookupFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_lookup_edittext:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 132
    sget v0, Lcom/facebook/h;->fragment_lookup:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 133
    sget v0, Lcom/facebook/g;->fragment_lookup_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/login/fragment/LookupFragment;->LookupAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v0, Lcom/facebook/g;->fragment_lookup_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/LookupFragment$FormValidator;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/login/fragment/LookupFragment$FormValidator;-><init>(Lcom/instagram/android/login/fragment/LookupFragment;Lcom/instagram/android/login/fragment/LookupFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    sget v0, Lcom/facebook/g;->fragment_lookup_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lcom/instagram/android/login/fragment/LookupFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/LookupFragment$3;-><init>(Lcom/instagram/android/login/fragment/LookupFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->validate()V

    .line 171
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->showKeyboard()V

    .line 176
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 177
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/LookupFragment;->hideKeyboard()V

    .line 182
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 183
    return-void
.end method
