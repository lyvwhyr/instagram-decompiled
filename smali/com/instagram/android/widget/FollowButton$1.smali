.class Lcom/instagram/android/widget/FollowButton$1;
.super Ljava/lang/Object;
.source "FollowButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/FollowButton;

.field final synthetic val$loaderManager:Landroid/support/v4/app/af;

.field final synthetic val$user:Lcom/instagram/android/model/User;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/FollowButton;Lcom/instagram/android/model/User;Landroid/support/v4/app/af;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/instagram/android/widget/FollowButton$1;->this$0:Lcom/instagram/android/widget/FollowButton;

    iput-object p2, p0, Lcom/instagram/android/widget/FollowButton$1;->val$user:Lcom/instagram/android/model/User;

    iput-object p3, p0, Lcom/instagram/android/widget/FollowButton$1;->val$loaderManager:Landroid/support/v4/app/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/widget/FollowButton$1;->this$0:Lcom/instagram/android/widget/FollowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/FollowButton;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/instagram/android/widget/FollowButton$1;->val$user:Lcom/instagram/android/model/User;

    iget-object v1, p0, Lcom/instagram/android/widget/FollowButton$1;->this$0:Lcom/instagram/android/widget/FollowButton;

    invoke-virtual {v1}, Lcom/instagram/android/widget/FollowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/widget/FollowButton$1;->val$loaderManager:Landroid/support/v4/app/af;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/User;->toggleFollowStatus(Landroid/content/Context;Landroid/support/v4/app/af;)V

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-string v1, "com.instagram.android.service.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "com.instagram.android.service.BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID"

    iget-object v2, p0, Lcom/instagram/android/widget/FollowButton$1;->val$user:Lcom/instagram/android/model/User;

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 130
    return-void
.end method
