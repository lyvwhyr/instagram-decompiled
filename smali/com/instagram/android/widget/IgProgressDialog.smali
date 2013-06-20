.class public Lcom/instagram/android/widget/IgProgressDialog;
.super Landroid/app/Dialog;
.source "IgProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    sget v0, Lcom/facebook/l;->IgDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    sget v0, Lcom/facebook/h;->progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgProgressDialog;->setContentView(I)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgProgressDialog;->setCancelable(Z)V

    .line 18
    return-void
.end method

.method private setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 27
    sget v0, Lcom/facebook/g;->message:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/instagram/android/widget/IgProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"

    .prologue
    .line 39
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/widget/IgProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"

    .prologue
    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/widget/IgProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/instagram/android/widget/IgProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 50
    new-instance v0, Lcom/instagram/android/widget/IgProgressDialog;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {v0, p2}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, p4}, Lcom/instagram/android/widget/IgProgressDialog;->setCancelable(Z)V

    .line 55
    invoke-virtual {v0, p5}, Lcom/instagram/android/widget/IgProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    .line 57
    return-object v0
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "progressMessage"

    .prologue
    .line 21
    sget v0, Lcom/facebook/g;->message:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method
