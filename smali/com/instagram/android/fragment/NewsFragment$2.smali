.class Lcom/instagram/android/fragment/NewsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/android/fragment/NewsFragment$2;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    const-string v0, "NewsFragment"

    const-string v1, "Received push."

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$2;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    const-string v0, "NewsFragment"

    const-string v1, "Currently initializing web view, omitting"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$2;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment$2;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/instagram/android/fragment/NewsFragment;->access$300(Lcom/instagram/android/fragment/NewsFragment;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$2;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "NewsFragment"

    const-string v1, "Currently visible when push received, omitting"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$2;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$300(Lcom/instagram/android/fragment/NewsFragment;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "NewsFragment"

    const-string v2, "Currently have a receiver for the inbox fragment, running reload"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment$2;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    sget-object v2, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Lcom/instagram/android/fragment/NewsFragment;->getWebViewUrl(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/instagram/android/fragment/NewsFragment;->access$200(Lcom/instagram/android/fragment/NewsFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
