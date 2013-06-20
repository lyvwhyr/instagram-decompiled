.class Lcom/instagram/android/fragment/UserListFragment$6$3;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserListFragment$6;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$6$3;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 374
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6$3;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->promptIfNecessaryAndGoToNextStepInSignupFlow()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$300(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 375
    return-void
.end method
