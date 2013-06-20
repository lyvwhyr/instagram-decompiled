.class public Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;
.super Ljava/lang/Object;
.source "PhotoMapEditDoneListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivivity:Landroid/app/Activity;

.field private mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

.field private mHandlerConfirmAction:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;)V
    .locals 2
    .parameter "activity"
    .parameter "editType"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$ConfirmPhotoDeletionClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$ConfirmPhotoDeletionClickListener;-><init>(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener$1;)V

    iput-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mHandlerConfirmAction:Landroid/content/DialogInterface$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mActivivity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    .line 25
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mActivivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;)Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    return-object v0
.end method

.method private createFinalDialogString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getNumToBeRemoved()I

    move-result v2

    .line 53
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getNumToBeAdded()I

    move-result v3

    .line 57
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    sget-object v1, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    if-ne v0, v1, :cond_4

    .line 59
    if-ne v3, v7, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->popup_review_confirm_add_photo_single:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    if-ne v2, v7, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/facebook/k;->popup_review_confirm_remove_photo_single:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_1
    if-lez v2, :cond_0

    .line 74
    if-nez v3, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->popup_review_confirm_remove_photo_all:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    :goto_2
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->popup_review_confirm_add_photo_plural:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/facebook/k;->popup_review_confirm_remove_photo_plural:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 79
    :cond_3
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 87
    :cond_4
    if-ne v2, v7, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->popup_edit_confirm_remove_photo_single:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->popup_edit_confirm_remove_photo_plural:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private createFinalDialogTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 98
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    sget-object v1, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->popup_review_confirm_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getNumToBeRemoved()I

    move-result v0

    .line 102
    if-ne v0, v3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->popup_edit_confirm_title_remove_photo_single:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/k;->popup_edit_confirm_title_remove_photo_plural:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mActivivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 29
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mActivivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->createFinalDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->createFinalDialogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->confirm:I

    iget-object v2, p0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->mHandlerConfirmAction:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 36
    return-void
.end method
