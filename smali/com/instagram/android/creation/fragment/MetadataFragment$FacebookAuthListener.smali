.class final Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Lcom/facebook/a/e;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;Lcom/instagram/android/creation/fragment/MetadataFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 747
    const-string v0, "MetadataFragment"

    const-string v1, "Facebook onCancel"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookButton:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$1200(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 726
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->saveCredentials()V

    .line 727
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #getter for: Lcom/instagram/android/creation/fragment/MetadataFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$1300(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener$1;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    return-void
.end method

.method public onError(Lcom/facebook/a/a;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 742
    const-string v0, "MetadataFragment"

    const-string v1, "Facebook onError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method public onFacebookError(Lcom/facebook/a/i;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 737
    const-string v0, "MetadataFragment"

    const-string v1, "Facebook onFacebookError"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method
