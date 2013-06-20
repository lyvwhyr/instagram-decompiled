.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;
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
    .line 179
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "innerDialog"
    .parameter "which"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    iget-object v0, v0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 183
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 184
    new-instance v0, Lcom/instagram/api/loaderrequest/RemovePeopleTagRequest;

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    iget-object v1, v1, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    iget-object v2, v2, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mLoaderManager:Landroid/support/v4/app/af;
    invoke-static {v2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$400(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    iget-object v3, v3, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->val$media:Lcom/instagram/android/model/Media;

    new-instance v4, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;

    iget-object v5, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5$2;->this$1:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;

    iget-object v5, v5, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$5;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/RemovePeopleTagRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/Media;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/RemovePeopleTagRequest;->perform()V

    .line 187
    return-void
.end method
