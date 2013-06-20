.class Lcom/instagram/android/fragment/NewsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    iget-object v2, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mMode:I
    invoke-static {v2}, Lcom/instagram/android/fragment/NewsFragment;->access$100(Lcom/instagram/android/fragment/NewsFragment;)I

    move-result v2

    #calls: Lcom/instagram/android/fragment/NewsFragment;->getWebViewUrl(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/instagram/android/fragment/NewsFragment;->access$200(Lcom/instagram/android/fragment/NewsFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/EnhancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.NewsFragment.BROADCAST_SWITCH_TO_INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/instagram/android/fragment/NewsFragment;->access$300(Lcom/instagram/android/fragment/NewsFragment;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$1;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/instagram/android/fragment/NewsFragment;->switchToMode(I)V
    invoke-static {v0, v1}, Lcom/instagram/android/fragment/NewsFragment;->access$400(Lcom/instagram/android/fragment/NewsFragment;I)V

    goto :goto_0
.end method
