.class public Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "FacebookPostingOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookPostingOptionsFragment"


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Lcom/instagram/api/AbstractApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChoosePageTextView:Landroid/widget/TextView;

.field private mDefaultRadioButton:Landroid/widget/RadioButton;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mProgressBar:Lcom/instagram/android/widget/InterceptTouchFrameLayout;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;-><init>(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)Lcom/instagram/android/widget/InterceptTouchFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mProgressBar:Lcom/instagram/android/widget/InterceptTouchFrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method private createRadioButton(II)Landroid/widget/RadioButton;
    .locals 3
    .parameter "buttonIndex"
    .parameter "numButtons"

    .prologue
    .line 135
    sget v0, Lcom/facebook/h;->template_radiobutton_middle:I

    .line 136
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 137
    sget v0, Lcom/facebook/h;->template_radiobutton_single:I

    .line 143
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0

    .line 138
    :cond_1
    if-nez p1, :cond_2

    .line 139
    sget v0, Lcom/facebook/h;->template_radiobutton_top:I

    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v1, p2, -0x1

    if-ne p1, v1, :cond_0

    .line 141
    sget v0, Lcom/facebook/h;->template_radiobutton_bottom:I

    goto :goto_0
.end method


# virtual methods
.method public createButtonForEachAccount(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/FacebookPostingAccount;>;"
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getPageAccount()Lcom/instagram/android/model/FacebookPostingAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/FacebookPostingAccount;->getId()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/FacebookPostingAccount;

    .line 117
    invoke-direct {p0, v1, v3}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->createRadioButton(II)Landroid/widget/RadioButton;

    move-result-object v4

    .line 118
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 119
    invoke-virtual {v0}, Lcom/instagram/android/model/FacebookPostingAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0}, Lcom/instagram/android/model/FacebookPostingAccount;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    add-int/lit8 v5, v1, 0x2

    new-instance v6, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$3;-><init>(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 64
    sget v0, Lcom/facebook/h;->fragment_facebook_posting_options:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    sget v0, Lcom/facebook/g;->listview_progressbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/InterceptTouchFrameLayout;

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mProgressBar:Lcom/instagram/android/widget/InterceptTouchFrameLayout;

    .line 66
    sget v0, Lcom/facebook/g;->fragment_facebook_posting_options_choose_page:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mChoosePageTextView:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/facebook/g;->fragment_facebook_posting_options_default_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mDefaultRadioButton:Landroid/widget/RadioButton;

    .line 70
    sget v0, Lcom/facebook/g;->fragment_facebook_posting_options_radiogroup:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 72
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    new-instance v0, Lcom/instagram/facebook/FacebookAccountsGraphRequest;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->getLoaderManager()Landroid/support/v4/app/af;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/instagram/facebook/FacebookAccountsGraphRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractApiCallbacks;)V

    .line 78
    invoke-virtual {v0}, Lcom/instagram/facebook/FacebookAccountsGraphRequest;->perform()V

    .line 80
    return-object v1
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/FacebookPostingAccount;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mAccounts:Ljava/util/List;

    .line 148
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->updateViews(Ljava/util/List;)V

    .line 149
    return-void
.end method

.method public updateViews(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/FacebookPostingAccount;>;"
    invoke-virtual {p0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->createButtonForEachAccount(Ljava/util/List;)V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mChoosePageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$2;-><init>(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 105
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->hasPageToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mDefaultRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 109
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
