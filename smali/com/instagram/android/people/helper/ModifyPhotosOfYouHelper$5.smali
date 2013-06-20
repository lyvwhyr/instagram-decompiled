.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$media:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    iput-object p2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 176
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->are_you_sure:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->people_tagging_remove_me_confirm:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->yes_im_sure:I

    new-instance v2, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->cancel:I

    new-instance v2, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$1;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 197
    return-void
.end method
