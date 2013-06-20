.class Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    iget-object v0, v0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    #getter for: Lcom/instagram/android/fragment/FindFriendsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$500(Lcom/instagram/android/fragment/FindFriendsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1$1;-><init>(Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method
