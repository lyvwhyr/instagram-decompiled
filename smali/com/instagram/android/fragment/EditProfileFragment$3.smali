.class Lcom/instagram/android/fragment/EditProfileFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "EditProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$3;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$3;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->loadUserForEditing()V
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$500(Lcom/instagram/android/fragment/EditProfileFragment;)V

    .line 144
    :cond_0
    return-void
.end method
