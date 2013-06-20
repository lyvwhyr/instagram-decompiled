.class Lcom/instagram/android/service/AuthHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AuthHelper.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/AuthHelper;


# direct methods
.method constructor <init>(Lcom/instagram/android/service/AuthHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/instagram/android/service/AuthHelper$1;->this$0:Lcom/instagram/android/service/AuthHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/service/AuthHelper$1;->this$0:Lcom/instagram/android/service/AuthHelper;

    #calls: Lcom/instagram/android/service/AuthHelper;->onUserNeedsFetch()V
    invoke-static {v0}, Lcom/instagram/android/service/AuthHelper;->access$000(Lcom/instagram/android/service/AuthHelper;)V

    .line 32
    return-void
.end method
