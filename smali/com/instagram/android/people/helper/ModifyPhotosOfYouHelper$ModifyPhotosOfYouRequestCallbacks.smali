.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "ModifyPhotosOfYouHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "action"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->mAction:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Ljava/lang/String;Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;-><init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Ljava/lang/String;)V

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 113
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$300(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->people_tagging_modify_photos_of_you_failure:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method

.method public onRequestFinished()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$000(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$100(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$200(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->mAction:Ljava/lang/String;

    const-string v1, "approve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$100(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$200(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method public onRequestStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$100(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$200(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->mAction:Ljava/lang/String;

    const-string v1, "approve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$100(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$200(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 3
    .parameter "responseObject"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$000(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mShowInPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$100(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->mAction:Ljava/lang/String;

    const-string v2, "approve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 107
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    #getter for: Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->mHideFromPhotosOfYouButton:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->access$200(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$ModifyPhotosOfYouRequestCallbacks;->mAction:Ljava/lang/String;

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
