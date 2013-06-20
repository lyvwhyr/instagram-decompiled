.class public Lcom/instagram/android/widget/EnhancedWebView;
.super Landroid/webkit/WebView;
.source "EnhancedWebView.java"


# static fields
.field public static final BROADCAST_INBOX_SHOWN:Ljava/lang/String; = "com.instagram.android.fragment.NewsFragment.BROADCAST_INBOX_SHOWN"

.field public static final TAG:Ljava/lang/String; = "EnhancedWebView"


# instance fields
.field private final mFragment:Landroid/support/v4/app/Fragment;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeightDp:I

.field private mIsLoading:Z

.field private final mMediaIdsSeen:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLoadingChangeListener:Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;

.field private final mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Integer;)V
    .locals 2
    .parameter "fragment"
    .parameter "type"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mMediaIdsSeen:Ljava/util/HashSet;

    .line 67
    iput-object p1, p0, Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;

    .line 68
    iput-object p2, p0, Lcom/instagram/android/widget/EnhancedWebView;->mType:Ljava/lang/Integer;

    .line 69
    new-instance v0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;-><init>(Lcom/instagram/android/widget/EnhancedWebView;Lcom/instagram/android/widget/EnhancedWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    invoke-direct {p0}, Lcom/instagram/android/widget/EnhancedWebView;->setOverscrollNever()V

    .line 71
    invoke-virtual {p0}, Lcom/instagram/android/widget/EnhancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcom/instagram/api/InstagramUserAgent;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/widget/EnhancedWebView;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mMediaIdsSeen:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/widget/EnhancedWebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/instagram/android/widget/EnhancedWebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/instagram/android/widget/EnhancedWebView;)Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mOnLoadingChangeListener:Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/widget/EnhancedWebView;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mType:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/widget/EnhancedWebView;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/EnhancedWebView;->viewWithExternalBrowser(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private sendViewVisibleBroadcast()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mType:Ljava/lang/Integer;

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/instagram/android/widget/EnhancedWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.fragment.NewsFragment.BROADCAST_INBOX_SHOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 153
    :cond_0
    return-void
.end method

.method private setOverscrollNever()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 159
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView;->setOverScrollMode(I)V

    .line 161
    :cond_0
    return-void
.end method

.method private viewWithExternalBrowser(Landroid/net/Uri;)V
    .locals 3
    .parameter "externalUri"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method


# virtual methods
.method protected addTopMargin()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:document.body.style.marginTop=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderViewHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 111
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 117
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/instagram/android/widget/EnhancedWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderViewHeightDp:I

    .line 124
    invoke-virtual {p0}, Lcom/instagram/android/widget/EnhancedWebView;->addTopMargin()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/instagram/android/widget/EnhancedWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/instagram/android/widget/EnhancedWebView;->sendViewVisibleBroadcast()V

    .line 143
    invoke-virtual {p0}, Lcom/instagram/android/widget/EnhancedWebView;->addTopMargin()V

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 146
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/instagram/android/widget/EnhancedWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/instagram/android/widget/EnhancedWebView;->sendViewVisibleBroadcast()V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 134
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "javascript:window.scrollTo(0, 0)"

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "headerView"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView;->removeView(Landroid/view/View;)V

    .line 94
    :cond_1
    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/EnhancedWebView;->addView(Landroid/view/View;)V

    .line 97
    :cond_2
    iput-object p1, p0, Lcom/instagram/android/widget/EnhancedWebView;->mHeaderView:Landroid/view/View;

    goto :goto_0
.end method

.method public setOnLoadingChangeListener(Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;)V
    .locals 0
    .parameter "onLoadingChangeListener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/instagram/android/widget/EnhancedWebView;->mOnLoadingChangeListener:Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;

    .line 76
    return-void
.end method
