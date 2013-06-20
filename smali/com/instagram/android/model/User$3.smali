.class Lcom/instagram/android/model/User$3;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "User.java"


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
.field final synthetic this$0:Lcom/instagram/android/model/User;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/User;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/instagram/android/model/User$3;->this$0:Lcom/instagram/android/model/User;

    iput-object p2, p0, Lcom/instagram/android/model/User$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 7
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
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 684
    iget-object v0, p0, Lcom/instagram/android/model/User$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/android/model/User$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/k;->x_problems:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/model/User$3;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/k;->instagram:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 687
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 672
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/model/User$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 3
    .parameter "responseObject"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/instagram/android/model/User$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/instagram/android/model/User$3;->this$0:Lcom/instagram/android/model/User;

    #getter for: Lcom/instagram/android/model/User;->mBlocking:Z
    invoke-static {v0}, Lcom/instagram/android/model/User;->access$100(Lcom/instagram/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/k;->user_blocked:I

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 679
    return-void

    .line 676
    :cond_0
    sget v0, Lcom/facebook/k;->user_unblocked:I

    goto :goto_0
.end method
