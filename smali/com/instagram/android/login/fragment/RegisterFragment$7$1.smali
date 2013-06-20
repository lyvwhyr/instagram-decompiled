.class Lcom/instagram/android/login/fragment/RegisterFragment$7$1;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/login/fragment/RegisterFragment$7;

.field final synthetic val$responseObject:Lcom/instagram/android/model/CheckUsernameResponse;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment$7;Lcom/instagram/android/model/CheckUsernameResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$7;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->val$responseObject:Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 319
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$7;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->username:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->val$responseObject:Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-virtual {v1}, Lcom/instagram/android/model/CheckUsernameResponse;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->val$responseObject:Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-virtual {v0}, Lcom/instagram/android/model/CheckUsernameResponse;->isIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$7;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setUsernameHasAvailable()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1000(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$7;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setUsernameHasError(Z)V
    invoke-static {v0, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1100(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 326
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$7;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/RegisterFragment$7;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    sget v1, Lcom/facebook/k;->username_x_is_not_available:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/android/login/fragment/RegisterFragment$7$1;->val$responseObject:Lcom/instagram/android/model/CheckUsernameResponse;

    invoke-virtual {v4}, Lcom/instagram/android/model/CheckUsernameResponse;->getUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
