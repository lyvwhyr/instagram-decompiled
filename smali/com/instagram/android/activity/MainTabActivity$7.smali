.class Lcom/instagram/android/activity/MainTabActivity$7;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$7;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$7;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    .line 798
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.fragment.NewsFragment.BROADCAST_SWITCH_TO_INBOX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 802
    if-eqz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$7;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    const-string v1, "news"

    #calls: Lcom/instagram/android/activity/MainTabActivity;->popToRoot(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1200(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$7;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->isCurrentTab(Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1100(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/MainTabActivity$TabTag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$7;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    const-string v1, "news"

    #calls: Lcom/instagram/android/activity/MainTabActivity;->setTabStartupInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1500(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
