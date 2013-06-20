.class Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;
.super Ljava/lang/Object;
.source "ActivityInTab.java"

# interfaces
.implements Lcom/facebook/content/b;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/ActivityInTab;


# direct methods
.method private constructor <init>(Lcom/instagram/android/activity/ActivityInTab;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;->this$0:Lcom/instagram/android/activity/ActivityInTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/activity/ActivityInTab;Lcom/instagram/android/activity/ActivityInTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;-><init>(Lcom/instagram/android/activity/ActivityInTab;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.EXTRA_TAB_TAG_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;->this$0:Lcom/instagram/android/activity/ActivityInTab;

    invoke-virtual {v1}, Lcom/instagram/android/activity/ActivityInTab;->getTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;->this$0:Lcom/instagram/android/activity/ActivityInTab;

    invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {v0}, Landroid/support/v4/app/p;->f()I

    move-result v1

    if-lez v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;->this$0:Lcom/instagram/android/activity/ActivityInTab;

    invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->popToRoot()V

    goto :goto_0

    .line 191
    :cond_2
    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 194
    instance-of v0, v1, Lcom/instagram/android/fragment/ScrollToTopFragment/ScrollToTopFragment;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 195
    check-cast v0, Lcom/instagram/android/fragment/ScrollToTopFragment/ScrollToTopFragment;

    invoke-interface {v0}, Lcom/instagram/android/fragment/ScrollToTopFragment/ScrollToTopFragment;->scrollToTop()V

    .line 198
    :cond_3
    instance-of v0, v1, Lcom/instagram/android/fragment/UserDetailFragment;

    if-eqz v0, :cond_0

    .line 199
    check-cast v1, Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserDetailFragment;->executeRequest()V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab$PopToRootActionReceiver;->this$0:Lcom/instagram/android/activity/ActivityInTab;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/activity/ActivityInTab;->mPopToRootOnResume:Z
    invoke-static {v0, v1}, Lcom/instagram/android/activity/ActivityInTab;->access$102(Lcom/instagram/android/activity/ActivityInTab;Z)Z

    goto :goto_0
.end method
