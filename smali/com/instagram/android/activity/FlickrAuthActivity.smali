.class public Lcom/instagram/android/activity/FlickrAuthActivity;
.super Lcom/instagram/android/fragment/IgFragmentActivity;
.source "FlickrAuthActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "FlickrAuthActivity"

.field private static final sVerifierFragment:Ljava/lang/String; = "oauth_verifier"


# instance fields
.field private mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private mHandler:Landroid/os/Handler;

.field private mProvider:Loauth/signpost/OAuthProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragmentActivity;-><init>()V

    .line 180
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/activity/FlickrAuthActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/activity/FlickrAuthActivity;)Loauth/signpost/OAuthProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mProvider:Loauth/signpost/OAuthProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/activity/FlickrAuthActivity;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/activity/FlickrAuthActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/activity/FlickrAuthActivity;->showErrorDialog()V

    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 2
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 224
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;I)V
    .locals 3
    .parameter "fragment"
    .parameter "requestCode"

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/activity/FlickrAuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 71
    sget v1, Lcom/facebook/k;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 73
    sget v1, Lcom/facebook/k;->ok:I

    new-instance v2, Lcom/instagram/android/activity/FlickrAuthActivity$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/activity/FlickrAuthActivity$1;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    .line 81
    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mHandler:Landroid/os/Handler;

    .line 49
    sget v0, Lcom/facebook/h;->foursquare_auth:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->setContentView(I)V

    .line 51
    sget v0, Lcom/facebook/g;->webView:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 52
    new-instance v1, Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;Lcom/instagram/android/activity/FlickrAuthActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    new-instance v1, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-static {}, Lcom/instagram/flickr/FlickrConstants;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/flickr/FlickrConstants;->getConsumerSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 57
    new-instance v1, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string v2, "http://www.flickr.com/services/oauth/request_token"

    const-string v3, "http://www.flickr.com/services/oauth/access_token"

    const-string v4, "http://www.flickr.com/services/oauth/authorize"

    invoke-direct {v1, v2, v3, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mProvider:Loauth/signpost/OAuthProvider;

    .line 61
    iget-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mProvider:Loauth/signpost/OAuthProvider;

    invoke-interface {v1, v5}, Loauth/signpost/OAuthProvider;->setOAuth10a(Z)V

    .line 63
    new-instance v1, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;

    iget-object v2, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v3, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/instagram/android/activity/FlickrAuthActivity$RequestTokenTask;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;Landroid/webkit/WebView;Loauth/signpost/OAuthProvider;Loauth/signpost/OAuthConsumer;)V

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method
