.class Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1$1;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1$1;->this$2:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1$1;->this$2:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;

    iget-object v0, v0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;

    iget-object v0, v0, Lcom/instagram/android/fragment/FindFriendsFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/a/b;->c()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/instagram/android/fragment/FindFriendsFragment;->showFacebookList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$200(Lcom/instagram/android/fragment/FindFriendsFragment;Ljava/lang/String;)V

    .line 171
    return-void
.end method
