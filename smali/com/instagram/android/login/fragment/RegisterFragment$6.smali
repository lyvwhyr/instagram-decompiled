.class Lcom/instagram/android/login/fragment/RegisterFragment$6;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$6;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$6;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->setFillOutWithFacebookEnabled(Z)V
    invoke-static {v1, v6}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$900(Lcom/instagram/android/login/fragment/RegisterFragment;Z)V

    .line 302
    invoke-virtual {v0}, Lcom/facebook/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$6;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0, v6}, Lcom/instagram/android/login/fragment/RegisterFragment;->performFacebookAuthorization(Z)V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$6;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$6;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    sget v2, Lcom/facebook/k;->connecting_to_x:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/login/fragment/RegisterFragment$6;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    sget v5, Lcom/facebook/k;->facebook:I

    invoke-virtual {v4, v5}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$6;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0, v6}, Lcom/instagram/android/login/fragment/RegisterFragment;->performFacebookAuthorization(Z)V

    goto :goto_0
.end method
