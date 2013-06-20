.class public Lcom/instagram/android/fragment/ServerOptionsFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "ServerOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    return-void
.end method

.method private hideKeyboard()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ServerOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ServerOptionsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ServerOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/instagram/android/fragment/ServerOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ServerOptionsFragment$1;-><init>(Lcom/instagram/android/fragment/ServerOptionsFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    sget v0, Lcom/facebook/h;->fragment_dev_options:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    sget v0, Lcom/facebook/d;->metadata_background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    sget v0, Lcom/facebook/g;->fragment_dev_options_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 64
    invoke-static {}, Lcom/instagram/android/prefs/DevPreferences;->getInstance()Lcom/instagram/android/prefs/DevPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/prefs/DevPreferences;->getDevServerName()Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string v3, ".instagram.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, ".instagram.com"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    new-instance v2, Lcom/instagram/android/fragment/ServerOptionsFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/fragment/ServerOptionsFragment$2;-><init>(Lcom/instagram/android/fragment/ServerOptionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    sget v0, Lcom/facebook/g;->fragment_dev_options_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 87
    invoke-static {}, Lcom/instagram/android/prefs/DevPreferences;->getInstance()Lcom/instagram/android/prefs/DevPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/prefs/DevPreferences;->isUsingDevServer()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    new-instance v2, Lcom/instagram/android/fragment/ServerOptionsFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ServerOptionsFragment$3;-><init>(Lcom/instagram/android/fragment/ServerOptionsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    return-object v1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/instagram/android/fragment/ServerOptionsFragment;->hideKeyboard()V

    .line 101
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 102
    return-void
.end method
