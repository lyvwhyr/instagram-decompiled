.class Lcom/instagram/android/fragment/FindFriendsFragment$3;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FindFriendsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FindFriendsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/instagram/android/fragment/FindFriendsFragment$3;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    iget-object v0, p0, Lcom/instagram/android/fragment/FindFriendsFragment$3;->this$0:Lcom/instagram/android/fragment/FindFriendsFragment;

    #calls: Lcom/instagram/android/fragment/FindFriendsFragment;->showContactList()V
    invoke-static {v0}, Lcom/instagram/android/fragment/FindFriendsFragment;->access$600(Lcom/instagram/android/fragment/FindFriendsFragment;)V

    .line 203
    return-void
.end method
