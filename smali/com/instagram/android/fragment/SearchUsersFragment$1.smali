.class Lcom/instagram/android/fragment/SearchUsersFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchUsersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SearchUsersFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SearchUsersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/android/fragment/SearchUsersFragment$1;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    const-string v0, "com.instagram.android.service.BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/instagram/android/fragment/SearchUsersFragment$1;->this$0:Lcom/instagram/android/fragment/SearchUsersFragment;

    #getter for: Lcom/instagram/android/fragment/SearchUsersFragment;->mUserListSearchRequest:Lcom/instagram/api/loaderrequest/UserSearchRequest;
    invoke-static {v1}, Lcom/instagram/android/fragment/SearchUsersFragment;->access$000(Lcom/instagram/android/fragment/SearchUsersFragment;)Lcom/instagram/api/loaderrequest/UserSearchRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/loaderrequest/UserSearchRequest;->getSearchHistory()Lcom/instagram/util/SearchSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/util/SearchSession;->reportUserSearchSuccess(Lcom/instagram/android/model/User;)V

    .line 93
    :cond_0
    return-void
.end method
