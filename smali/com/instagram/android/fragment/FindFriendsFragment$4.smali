.class Lcom/instagram/android/fragment/FindFriendsFragment$4;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindFriendsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$4;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$4;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    #calls: Lcom/instagram/android/fragment/FindFriendsFragment;->showTwitterList()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$700(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    .line 240
    return-void
.end method
