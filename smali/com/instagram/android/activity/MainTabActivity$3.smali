.class Lcom/instagram/android/activity/MainTabActivity$3;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;

.field final synthetic val$tag:Lcom/instagram/android/activity/MainTabActivity$TabTag;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$3;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iput-object p2, p0, Lcom/instagram/android/activity/MainTabActivity$3;->val$tag:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$3;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$3;->val$tag:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->isCurrentTab(Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1100(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$3;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$3;->val$tag:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/instagram/android/activity/MainTabActivity;->popToRoot(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1200(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$3;->val$tag:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$3;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarNewsNotification:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$300(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$3;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.fragment.NewsFragment.BROADCAST_SWITCH_TO_INBOX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 507
    :cond_0
    return-void
.end method
