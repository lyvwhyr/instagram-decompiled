.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$1;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$1;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "innerDialog"
    .parameter "which"

    .prologue
    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$1;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    iget-object v0, v0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 194
    return-void
.end method
