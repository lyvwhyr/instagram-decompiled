.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #setter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$002(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 57
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #setter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0, v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$102(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Lcom/instagram/android/widget/IndeterminateCheckBox;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    .line 58
    return-void
.end method
