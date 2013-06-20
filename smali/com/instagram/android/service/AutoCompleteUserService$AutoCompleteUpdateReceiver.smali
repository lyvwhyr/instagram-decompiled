.class public Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoCompleteUserService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {p1}, Lcom/instagram/android/service/UserStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/UserStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/UserStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 174
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getLastFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getLastFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getLastFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getLastFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getLastFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v1, v2, :cond_1

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v1, v2, :cond_2

    .line 184
    invoke-static {v0}, Lcom/instagram/android/service/AutoCompleteUserService;->addUser(Lcom/instagram/android/model/User;)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v1, v2, :cond_1

    .line 186
    invoke-static {v0}, Lcom/instagram/android/service/AutoCompleteUserService;->removeUser(Lcom/instagram/android/model/User;)V

    goto :goto_0
.end method
