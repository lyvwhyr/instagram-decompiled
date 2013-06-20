.class public Lcom/instagram/android/widget/IgSimpleProgressDialog;
.super Landroid/app/Dialog;
.source "IgSimpleProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    sget v0, Lcom/facebook/l;->IgDialogSimple:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    sget v0, Lcom/facebook/h;->progress_dialog_simple:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgSimpleProgressDialog;->setContentView(I)V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgSimpleProgressDialog;->setCancelable(Z)V

    .line 16
    return-void
.end method
