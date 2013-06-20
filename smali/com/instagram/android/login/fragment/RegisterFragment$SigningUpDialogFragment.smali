.class public Lcom/instagram/android/login/fragment/RegisterFragment$SigningUpDialogFragment;
.super Lcom/instagram/android/fragment/ProgressDialogFragment;
.source "RegisterFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/instagram/android/fragment/ProgressDialogFragment;-><init>()V

    .line 743
    return-void
.end method


# virtual methods
.method protected getProgressMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    sget v0, Lcom/facebook/k;->registering:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/RegisterFragment$SigningUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
