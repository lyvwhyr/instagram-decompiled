.class public Lcom/instagram/android/fragment/ProgressDialogFragment;
.super Lcom/instagram/android/fragment/IgDialogFragment;
.source "ProgressDialogFragment.java"


# instance fields
.field private final mBackButtonListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgDialogFragment;-><init>()V

    .line 16
    new-instance v0, Lcom/instagram/android/fragment/ProgressDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ProgressDialogFragment$1;-><init>(Lcom/instagram/android/fragment/ProgressDialogFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ProgressDialogFragment;->mBackButtonListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private getProgressDialog()Lcom/instagram/android/widget/IgProgressDialog;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static newInstance()Lcom/instagram/android/fragment/ProgressDialogFragment;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/instagram/android/fragment/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/ProgressDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getProgressMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/facebook/k;->loading:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/ProgressDialogFragment;->getProgressDialog()Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ProgressDialogFragment;->getProgressMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setCancelable(Z)V

    .line 34
    iget-object v1, p0, Lcom/instagram/android/fragment/ProgressDialogFragment;->mBackButtonListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 36
    return-object v0
.end method
