.class Lcom/instagram/android/fragment/EditProfileFragment$1;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$1;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$1;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #getter for: Lcom/instagram/android/fragment/EditProfileFragment;->mHandler:Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$000(Lcom/instagram/android/fragment/EditProfileFragment;)Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/EditProfileFragment$EditProfileHandler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$1;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->performUsernameCheck()V
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$100(Lcom/instagram/android/fragment/EditProfileFragment;)V

    .line 104
    :cond_0
    return-void
.end method
