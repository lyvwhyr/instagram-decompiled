.class Lcom/instagram/android/activity/MainTabActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainTabActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.BROADCAST_BACK_PUSHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.EXTRA_TAB_TAG_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$000(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$000(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    const/4 v2, 0x1

    #setter for: Lcom/instagram/android/activity/MainTabActivity;->removingLink:Z
    invoke-static {v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->access$102(Lcom/instagram/android/activity/MainTabActivity;Z)Z

    .line 170
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #setter for: Lcom/instagram/android/activity/MainTabActivity;->removingLink:Z
    invoke-static {v0, v3}, Lcom/instagram/android/activity/MainTabActivity;->access$102(Lcom/instagram/android/activity/MainTabActivity;Z)Z

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.BROADCAST_LOGOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    const-class v2, Lcom/instagram/android/login/activity/SignedOutFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1, v0}, Lcom/instagram/android/activity/MainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.MainTabActivity.BROADCAST_TOAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_COMMENTS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_LIKES"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_RELATIONSHIPS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_USERTAGS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 187
    iget-object v4, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->showToast(IIII)V
    invoke-static {v4, v0, v1, v2, v3}, Lcom/instagram/android/activity/MainTabActivity;->access$200(Lcom/instagram/android/activity/MainTabActivity;IIII)V

    .line 189
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarNewsNotification:Landroid/view/View;
    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->access$300(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->maybeShowNotificationLED(Landroid/view/View;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->access$400(Lcom/instagram/android/activity/MainTabActivity;Landroid/view/View;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V

    .line 190
    invoke-static {}, Lcom/instagram/android/fragment/NewsFragment;->setSwitchToInboxFlag()V

    goto/16 :goto_0

    .line 192
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.NewsFragment.BROADCAST_INBOX_SHOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->getCustomToastPopupWindow()Lcom/instagram/android/news/widget/CustomToastPopupWindow;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$500(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->dismiss()V

    .line 194
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarNewsNotification:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$300(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 195
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.SelfFragment.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    const-string v1, "com.instagram.android.fragment.SelfFragment.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/instagram/android/activity/MainTabActivity;->mPhotosOfYouCount:I
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$602(Lcom/instagram/android/activity/MainTabActivity;I)I

    .line 200
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mPhotosOfYouCount:I
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$600(Lcom/instagram/android/activity/MainTabActivity;)I

    move-result v0

    if-lez v0, :cond_6

    .line 201
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarProfileNotification:Landroid/view/View;
    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->access$700(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/activity/MainTabActivity$TabTag;->PROFILE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    #calls: Lcom/instagram/android/activity/MainTabActivity;->maybeShowNotificationLED(Landroid/view/View;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->access$400(Lcom/instagram/android/activity/MainTabActivity;Landroid/view/View;Lcom/instagram/android/activity/MainTabActivity$TabTag;)V

    goto/16 :goto_0

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarProfileNotification:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$700(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 205
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$1;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarProfileNotification:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$700(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
