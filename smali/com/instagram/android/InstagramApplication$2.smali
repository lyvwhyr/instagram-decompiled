.class Lcom/instagram/android/InstagramApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "InstagramApplication.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/InstagramApplication;


# direct methods
.method constructor <init>(Lcom/instagram/android/InstagramApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/instagram/android/InstagramApplication$2;->this$0:Lcom/instagram/android/InstagramApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    const-string v0, "loggedin"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication$2;->this$0:Lcom/instagram/android/InstagramApplication;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instagram/android/service/AutoCompleteUserService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication$2;->this$0:Lcom/instagram/android/InstagramApplication;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instagram/android/service/AutoCompleteHashtagService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication$2;->this$0:Lcom/instagram/android/InstagramApplication;

    #getter for: Lcom/instagram/android/InstagramApplication;->mAutoCompleteUpdateReceiver:Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;
    invoke-static {v1}, Lcom/instagram/android/InstagramApplication;->access$100(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/android/model/User;->getUserFollowUpdateBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication$2;->this$0:Lcom/instagram/android/InstagramApplication;

    #getter for: Lcom/instagram/android/InstagramApplication;->mAutoCompleteUpdateReceiver:Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;
    invoke-static {v1}, Lcom/instagram/android/InstagramApplication;->access$100(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/android/service/AutoCompleteUserService$AutoCompleteUpdateReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
