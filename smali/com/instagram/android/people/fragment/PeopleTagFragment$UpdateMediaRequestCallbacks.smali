.class Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "PeopleTagFragment.java"


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
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;Lcom/instagram/android/people/fragment/PeopleTagFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;-><init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

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
    .line 265
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/Media;>;"
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 266
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 250
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$500(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/widget/PeopleTagsSaveButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/PeopleTagsSaveButton;->setDisplayedChild(I)V

    .line 251
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 244
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mDoneButton:Lcom/instagram/android/widget/PeopleTagsSaveButton;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$500(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/widget/PeopleTagsSaveButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/PeopleTagsSaveButton;->setDisplayedChild(I)V

    .line 245
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/Media;)V
    .locals 2
    .parameter "responseObject"

    .prologue
    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks$1;-><init>(Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    check-cast p1, Lcom/instagram/android/model/Media;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/fragment/PeopleTagFragment$UpdateMediaRequestCallbacks;->onSuccess(Lcom/instagram/android/model/Media;)V

    return-void
.end method
