.class Lcom/instagram/android/fragment/UserListFragment$2$1;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserListFragment$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment$2;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$2$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$2;

    iput-object p2, p0, Lcom/instagram/android/fragment/UserListFragment$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$2$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$2;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$2;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$2$1;->val$view:Landroid/view/View;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->followAllFriends(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/UserListFragment;->access$1000(Lcom/instagram/android/fragment/UserListFragment;Landroid/view/View;)V

    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    return-void
.end method
