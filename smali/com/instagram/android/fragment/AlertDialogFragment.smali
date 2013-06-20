.class public Lcom/instagram/android/fragment/AlertDialogFragment;
.super Lcom/instagram/android/fragment/IgDialogFragment;
.source "AlertDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/instagram/android/fragment/AlertDialogFragment;
    .locals 1
    .parameter "message"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/instagram/android/fragment/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/android/fragment/AlertDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/android/fragment/AlertDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/android/fragment/AlertDialogFragment;

    invoke-direct {v0}, Lcom/instagram/android/fragment/AlertDialogFragment;-><init>()V

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/instagram/android/fragment/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 31
    const-string v0, "message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    const/4 v0, 0x0

    .line 34
    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/AlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    .line 39
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 43
    :cond_1
    sget v0, Lcom/facebook/k;->dismiss:I

    new-instance v2, Lcom/instagram/android/fragment/AlertDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/AlertDialogFragment$1;-><init>(Lcom/instagram/android/fragment/AlertDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
