.class final Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;
.super Ljava/lang/Object;
.source "UserHeaderRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$fragmentManager:Landroid/support/v4/app/p;

.field final synthetic val$user:Lcom/instagram/android/model/User;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/User;Landroid/support/v4/app/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;->val$user:Lcom/instagram/android/model/User;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 184
    new-instance v0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-direct {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;-><init>()V

    .line 185
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 186
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;->val$user:Lcom/instagram/android/model/User;

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "username"

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;->val$user:Lcom/instagram/android/model/User;

    invoke-virtual {v3}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$7;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-static {v2, v0, v1}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 189
    return-void
.end method
