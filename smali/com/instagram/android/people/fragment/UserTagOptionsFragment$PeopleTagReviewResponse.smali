.class Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "UserTagOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;Lcom/instagram/android/people/fragment/UserTagOptionsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;-><init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V

    return-void
.end method


# virtual methods
.method public onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    sget v0, Lcom/facebook/k;->people_tagging_settings_change_fail:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 168
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    #getter for: Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->access$000(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 173
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    #getter for: Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->access$200(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 174
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 3
    .parameter "responseObject"

    .prologue
    .line 160
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->isPeopleTagReviewEnabled()Z

    move-result v1

    .line 161
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    #getter for: Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddAutomaticallyCheckBox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->access$000(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 162
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$PeopleTagReviewResponse;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    #getter for: Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->access$200(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    .line 163
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
