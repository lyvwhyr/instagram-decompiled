.class public Lcom/instagram/android/fragment/SimpleWebViewFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "SimpleWebViewFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;


# static fields
.field public static final ARGUMENT_LOAD_SAME_HOST:Ljava/lang/String; = "SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST"

.field public static final ARGUMENT_MEDIA_ID:Ljava/lang/String; = "SimpleWebViewFragment.ARGUMENT_MEDIA_ID"

.field public static final ARGUMENT_SHOW_REFRESH:Ljava/lang/String; = "SimpleWebViewFragment.ARGUMENT_SHOW_REFRESH"

.field public static final ARGUMENT_TITLE:Ljava/lang/String; = "SimpleWebViewFragment.ARGUMENT_TITLE"

.field public static final ARGUMENT_URL:Ljava/lang/String; = "SimpleWebViewFragment.ARGUMENT_URL"

.field private static final CHECKPOINT_DISMISS_URL:Ljava/lang/String; = "instagram://checkpoint/dismiss"

.field public static final ERROR_PAGE_URL:Ljava/lang/String; = "file:///android_asset/webview_error.html"

.field private static final TAG_REMOVED_URL:Ljava/lang/String; = "instagram://browser/dismiss?action=tag-removed"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/instagram/android/fragment/SimpleWebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment$1;-><init>(Lcom/instagram/android/fragment/SimpleWebViewFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/SimpleWebViewFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->isRefreshEnabled()Z

    move-result v0

    return v0
.end method

.method private isRefreshEnabled()Z
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleWebViewFragment.ARGUMENT_SHOW_REFRESH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/instagram/android/fragment/SimpleWebViewFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment$3;-><init>(Lcom/instagram/android/fragment/SimpleWebViewFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleWebViewFragment.ARGUMENT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 65
    iget-object v2, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 67
    iget-object v2, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 68
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    invoke-static {v1}, Lcom/instagram/android/constants/InstagramURLConstants;->isUrlInstagram(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-static {}, Lcom/instagram/api/InstagramUserAgent;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/instagram/android/fragment/SimpleWebViewFragment$2;-><init>(Lcom/instagram/android/fragment/SimpleWebViewFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 121
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 167
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 168
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 139
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 140
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 156
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 150
    return-void
.end method
