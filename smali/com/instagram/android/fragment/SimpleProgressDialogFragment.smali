.class public Lcom/instagram/android/fragment/SimpleProgressDialogFragment;
.super Lcom/instagram/android/fragment/IgDialogFragment;
.source "SimpleProgressDialogFragment.java"


# instance fields
.field private final mBackButtonListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgDialogFragment;-><init>()V

    .line 14
    new-instance v0, Lcom/instagram/android/fragment/SimpleProgressDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment$1;-><init>(Lcom/instagram/android/fragment/SimpleProgressDialogFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;->mBackButtonListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 23
    return-void
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/instagram/android/widget/IgSimpleProgressDialog;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgSimpleProgressDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static newInstance()Lcom/instagram/android/fragment/SimpleProgressDialogFragment;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleProgressDialogFragment;->mBackButtonListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 36
    return-object v0
.end method
