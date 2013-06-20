.class Lcom/instagram/android/fragment/EditProfileFragment$8;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Lcom/instagram/android/model/UserForEditing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

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
            "Lcom/instagram/android/model/UserForEditing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/model/UserForEditing;>;"
    invoke-super {p0, p1}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 369
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->request_error:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestFinished()V

    .line 353
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1102(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z

    .line 354
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 355
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 345
    invoke-super {p0}, Lcom/instagram/api/AbstractApiCallbacks;->onRequestStart()V

    .line 346
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1102(Lcom/instagram/android/fragment/EditProfileFragment;Z)Z

    .line 347
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 348
    return-void
.end method

.method protected onSuccess(Lcom/instagram/android/model/UserForEditing;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #setter for: Lcom/instagram/android/fragment/EditProfileFragment;->mUser:Lcom/instagram/android/model/UserForEditing;
    invoke-static {v0, p1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1202(Lcom/instagram/android/fragment/EditProfileFragment;Lcom/instagram/android/model/UserForEditing;)Lcom/instagram/android/model/UserForEditing;

    .line 360
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->setFieldsVisibility(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1300(Lcom/instagram/android/fragment/EditProfileFragment;I)V

    .line 361
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->maybePopulateFields()V
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$1400(Lcom/instagram/android/fragment/EditProfileFragment;)V

    .line 363
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$8;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    .line 364
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 341
    check-cast p1, Lcom/instagram/android/model/UserForEditing;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/EditProfileFragment$8;->onSuccess(Lcom/instagram/android/model/UserForEditing;)V

    return-void
.end method
