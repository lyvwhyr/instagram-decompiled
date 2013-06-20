.class Lcom/instagram/android/fragment/UserListFragment$1$2;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserListFragment$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$1$2;->this$1:Lcom/instagram/android/fragment/UserListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$1$2;->this$1:Lcom/instagram/android/fragment/UserListFragment$1;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$1;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->promptIfNecessaryAndGoToNextStepInSignupFlow()V
    invoke-static {v0}, Lcom/instagram/android/fragment/UserListFragment;->access$300(Lcom/instagram/android/fragment/UserListFragment;)V

    .line 116
    return-void
.end method
