.class Lcom/instagram/android/fragment/SimpleWebViewFragment$2;
.super Landroid/webkit/WebViewClient;
.source "SimpleWebViewFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

.field final synthetic val$finalHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SimpleWebViewFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    iput-object p2, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->val$finalHost:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 111
    const-string v0, "file:///android_asset/webview_error.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "javascript:document.getElementById(\"main\").innerHTML=\"<h3>%s</h3>\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/k;->request_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "file:///android_asset/webview_error.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->val$finalHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->val$finalHost:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    const-string v1, "instagram://checkpoint/dismiss"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "instagram://browser/dismiss?action=tag-removed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SimpleWebViewFragment.ARGUMENT_MEDIA_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia()V

    .line 93
    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
