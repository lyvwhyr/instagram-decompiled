.class Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;
.super Landroid/os/Handler;
.source "UserListAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/adapter/UserListAdapter;


# direct methods
.method private constructor <init>(Lcom/instagram/android/adapter/UserListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/adapter/UserListAdapter;Lcom/instagram/android/adapter/UserListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;-><init>(Lcom/instagram/android/adapter/UserListAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/adapter/UserListAdapter$ReceivedStatusUpdateHandler;->this$0:Lcom/instagram/android/adapter/UserListAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/UserListAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method
