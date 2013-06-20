.class Lcom/instagram/android/fragment/UserListFragment$4;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$4;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$4;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->gotoNextStepInSignupFlow()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$1100(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 226
    return-void
.end method
