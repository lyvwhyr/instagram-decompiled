.class Lcom/instagram/android/adapter/UserListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "UserListAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/adapter/UserListAdapter;


# direct methods
.method constructor <init>(Lcom/instagram/android/adapter/UserListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/android/adapter/UserListAdapter$2;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private registerUser(Lcom/instagram/android/model/User;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 93
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/UserListAdapter$2;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    #getter for: Lcom/instagram/android/adapter/UserListAdapter;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/instagram/android/adapter/UserListAdapter;->access$200(Lcom/instagram/android/adapter/UserListAdapter;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/android/model/User;->getUserFollowUpdateBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/adapter/UserListAdapter$2;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    #getter for: Lcom/instagram/android/adapter/UserListAdapter;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/instagram/android/adapter/UserListAdapter;->access$200(Lcom/instagram/android/adapter/UserListAdapter;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 87
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter$2;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 88
    check-cast v0, Lcom/instagram/android/model/User;

    invoke-direct {p0, v0}, Lcom/instagram/android/adapter/UserListAdapter$2;->registerUser(Lcom/instagram/android/model/User;)V

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
