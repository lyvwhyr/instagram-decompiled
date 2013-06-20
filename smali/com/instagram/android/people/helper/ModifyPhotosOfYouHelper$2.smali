.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

.field final synthetic val$media:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    iput-object p2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->isPhotoOfCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mLoaderManager:Landroid/support/v4/app/af;
    invoke-static {v2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$400(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/support/v4/app/af;

    move-result-object v2

    const-string v3, "approve"

    iget-object v4, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;->val$media:Lcom/instagram/android/model/Media;

    new-instance v5, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;

    iget-object v6, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$2;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    const-string v7, "approve"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Ljava/lang/String;Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Ljava/lang/String;Lcom/instagram/android/model/Media;Lcom/instagram/api/AbstractApiCallbacks;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/ModifyPhotosOfYouRequest;->perform()V

    goto :goto_0
.end method
