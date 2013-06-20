.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;
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
    .line 200
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    iput-object p2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$6;->val$media:Lcom/instagram/android/model/Media;

    invoke-static {v0, v1}, Lcom/instagram/android/activity/SimpleWebViewActivity;->showReportInappropriate(Landroid/content/Context;Lcom/instagram/android/model/Media;)V

    .line 205
    return-void
.end method
