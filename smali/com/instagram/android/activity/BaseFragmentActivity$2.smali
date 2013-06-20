.class Lcom/instagram/android/activity/BaseFragmentActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/instagram/android/activity/BaseFragmentActivity$2;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-static {p1}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/BaseFragmentActivity$2;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    sget v2, Lcom/facebook/g;->action_bar:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/activity/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->configureActionBar(Landroid/view/View;)V

    .line 44
    return-void
.end method
