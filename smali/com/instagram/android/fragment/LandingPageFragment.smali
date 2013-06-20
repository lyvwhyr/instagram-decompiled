.class public Lcom/instagram/android/fragment/LandingPageFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "LandingPageFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "LandingPageFragment"


# instance fields
.field private mOldOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/instagram/android/fragment/LandingPageFragment$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/LandingPageFragment$6;-><init>(Lcom/instagram/android/fragment/LandingPageFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/instagram/android/InstagramApplication;->detectWriteableFileSystem()V

    .line 61
    invoke-static {}, Lcom/instagram/android/InstagramApplication;->getFailedToLoadLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "failed_to_load_library"

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->report(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->incompatible_device:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->unsupported_device_message:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "http://bit.ly/igdevices"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/fragment/LandingPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->ok:I

    new-instance v2, Lcom/instagram/android/fragment/LandingPageFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/LandingPageFragment$1;-><init>(Lcom/instagram/android/fragment/LandingPageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 76
    :cond_0
    invoke-static {}, Lcom/instagram/android/InstagramApplication;->getFailedToLoadFilesystem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "failed_to_write_to_fs"

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->report(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->read_only_filesystem_message:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "http://bit.ly/igfilesystem"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/fragment/LandingPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/android/fragment/LandingPageFragment$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/LandingPageFragment$2;-><init>(Lcom/instagram/android/fragment/LandingPageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 89
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 94
    sget v0, Lcom/facebook/h;->layout_landing:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    sget v1, Lcom/facebook/g;->toolbar_button_login:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 97
    new-instance v2, Lcom/instagram/android/fragment/LandingPageFragment$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/LandingPageFragment$3;-><init>(Lcom/instagram/android/fragment/LandingPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget v1, Lcom/facebook/g;->toolbar_button_sign_up:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 105
    new-instance v2, Lcom/instagram/android/fragment/LandingPageFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/LandingPageFragment$4;-><init>(Lcom/instagram/android/fragment/LandingPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->isProdBuild()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    sget v1, Lcom/facebook/h;->button_developer_options:I

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 115
    new-instance v2, Lcom/instagram/android/fragment/LandingPageFragment$5;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/LandingPageFragment$5;-><init>(Lcom/instagram/android/fragment/LandingPageFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/LandingPageFragment;->mOldOrientation:I

    .line 33
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 34
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 35
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/LandingPageFragment;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/instagram/android/fragment/LandingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 44
    return-void
.end method
