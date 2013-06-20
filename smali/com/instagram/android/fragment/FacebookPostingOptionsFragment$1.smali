.class Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "FacebookPostingOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/android/model/FacebookPostingAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

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
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/util/List<Lcom/instagram/android/model/FacebookPostingAccount;>;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/api/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    return-void
.end method

.method public onRequestFinished()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mProgressBar:Lcom/instagram/android/widget/InterceptTouchFrameLayout;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->access$000(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)Lcom/instagram/android/widget/InterceptTouchFrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/InterceptTouchFrameLayout;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mProgressBar:Lcom/instagram/android/widget/InterceptTouchFrameLayout;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->access$000(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)Lcom/instagram/android/widget/InterceptTouchFrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/InterceptTouchFrameLayout;->setVisibility(I)V

    .line 44
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/FacebookPostingAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, responseObject:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/FacebookPostingAccount;>;"
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->setAccounts(Ljava/util/List;)V

    .line 49
    return-void
.end method
