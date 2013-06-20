.class public Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;
.super Lcom/instagram/android/fragment/ProgressDialogFragment;
.source "MediaOptionsButton.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mWasCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "PermalinkProgressnDialogFragment"

    sput-object v0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/instagram/android/fragment/ProgressDialogFragment;-><init>()V

    .line 188
    return-void
.end method


# virtual methods
.method protected getProgressMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    sget v0, Lcom/facebook/k;->loading:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWasCanceled()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->mWasCanceled:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialogInterface"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ProgressDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->mWasCanceled:Z

    .line 203
    return-void
.end method

.method public show(Landroid/support/v4/app/p;)V
    .locals 1
    .parameter "fragmentManager"

    .prologue
    .line 191
    sget-object v0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkProgressnDialogFragment;->TAG:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lcom/instagram/android/fragment/ProgressDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 192
    return-void
.end method
