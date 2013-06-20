.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "PhotoMapsEditHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestStart()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mEditType:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
    invoke-static {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$300(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$400(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->preparing_your_map:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setCancelable(Z)V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    .line 87
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 88
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #getter for: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$400(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/k;->saving_your_updates:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "ticket"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #setter for: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mTicket:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$102(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #calls: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->performPollRequest()V
    invoke-static {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$000(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V

    .line 69
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2$1;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    return-void
.end method
