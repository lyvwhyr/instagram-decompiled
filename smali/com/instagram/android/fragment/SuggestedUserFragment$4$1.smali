.class Lcom/instagram/android/fragment/SuggestedUserFragment$4$1;
.super Ljava/lang/Object;
.source "SuggestedUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/SuggestedUserFragment$4;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4$1;->this$1:Lcom/instagram/android/fragment/SuggestedUserFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->setHasFinishedRegistrationFlow(Z)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4$1;->this$1:Lcom/instagram/android/fragment/SuggestedUserFragment$4;

    iget-object v1, v1, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4$1;->this$1:Lcom/instagram/android/fragment/SuggestedUserFragment$4;

    iget-object v1, v1, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v1, v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$4$1;->this$1:Lcom/instagram/android/fragment/SuggestedUserFragment$4;

    iget-object v0, v0, Lcom/instagram/android/fragment/SuggestedUserFragment$4;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 226
    return-void
.end method
