.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "ModifyPhotosOfYouHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/model/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private mDialog:Lcom/instagram/android/widget/IgProgressDialog;

.field final synthetic this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/Media;>;"
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    return-void
.end method

.method public onRequestFinished()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->hide()V

    .line 242
    return-void
.end method

.method public onRequestStart()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    .line 247
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->removing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    .line 249
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter "responseObject"

    .prologue
    .line 254
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, Lcom/instagram/android/model/Media;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$RemovePeopleTagCallbacks;->onSuccess(Lcom/instagram/android/model/Media;)V

    return-void
.end method
