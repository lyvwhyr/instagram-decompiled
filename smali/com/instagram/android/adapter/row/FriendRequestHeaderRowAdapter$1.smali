.class final Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;
.super Ljava/lang/Object;
.source "FriendRequestHeaderRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$holder:Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;

.field final synthetic val$loaderManager:Landroid/support/v4/app/af;

.field final synthetic val$user:Lcom/instagram/android/model/User;


# direct methods
.method constructor <init>(Landroid/support/v4/app/af;Lcom/instagram/android/model/User;Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;->val$loaderManager:Landroid/support/v4/app/af;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;->val$user:Lcom/instagram/android/model/User;

    iput-object p3, p0, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;->val$holder:Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 36
    new-instance v0, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;->val$loaderManager:Landroid/support/v4/app/af;

    sget-object v3, Lcom/instagram/android/model/User$UserAction;->UserActionApprove:Lcom/instagram/android/model/User$UserAction;

    iget-object v4, p0, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;->val$user:Lcom/instagram/android/model/User;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/User$UserAction;Lcom/instagram/android/model/User;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FollowStatusUpdateRequest;->perform()V

    .line 37
    iget-object v0, p0, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;->val$holder:Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;

    #getter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->self:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$300(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
.end method
