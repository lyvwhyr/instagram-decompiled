.class Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2$1;
.super Ljava/lang/Object;
.source "PhotosOfYouFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2$1;->this$1:Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v1, "UserTagOptionsFragment.ARG_REVIEW_ENABLED"

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->isPeopleTagReviewEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2$1;->this$1:Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;

    iget-object v1, v1, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-virtual {v1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    invoke-direct {v2}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 175
    return-void
.end method
