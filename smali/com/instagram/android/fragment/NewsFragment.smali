.class public Lcom/instagram/android/fragment/NewsFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "NewsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer$ActionBarConfigurerFactory;
.implements Lcom/instagram/android/fragment/ScrollToTopFragment/ScrollToTopFragment;


# static fields
.field public static final BROADCAST_SWITCH_TO_INBOX:Ljava/lang/String; = "com.instagram.android.fragment.NewsFragment.BROADCAST_SWITCH_TO_INBOX"

.field public static final LOG_TAG:Ljava/lang/String; = "NewsFragment"

.field public static final MODE_INBOX:Ljava/lang/Integer; = null

.field public static final MODE_NEWS:Ljava/lang/Integer; = null

.field private static final STATE_CURRENT_MODE:Ljava/lang/String; = "com.instagram.android.fragment.NewsFragment.STATE_CURRENT_MODE"

.field private static switchToInboxOnResume:Z


# instance fields
.field private mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

.field private mMode:I

.field private mWebViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/android/widget/EnhancedWebView;",
            ">;"
        }
    .end annotation
.end field

.field private pushReceiver:Landroid/content/BroadcastReceiver;

.field private resumedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/fragment/NewsFragment;->MODE_NEWS:Ljava/lang/Integer;

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    .line 53
    sput-boolean v1, Lcom/instagram/android/fragment/NewsFragment;->switchToInboxOnResume:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    .line 62
    new-instance v0, Lcom/instagram/android/fragment/NewsFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/NewsFragment$1;-><init>(Lcom/instagram/android/fragment/NewsFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->resumedReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Lcom/instagram/android/fragment/NewsFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/NewsFragment$2;-><init>(Lcom/instagram/android/fragment/NewsFragment;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->pushReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/fragment/NewsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/instagram/android/fragment/NewsFragment;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/NewsFragment;->getWebViewUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/fragment/NewsFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/fragment/NewsFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/NewsFragment;->switchToMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/instagram/android/fragment/NewsFragment;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/NewsFragment;->switchToMode(IZ)V

    return-void
.end method

.method private createWebView(Ljava/lang/Integer;)Lcom/instagram/android/widget/EnhancedWebView;
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v1, Lcom/instagram/android/widget/EnhancedWebView;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/widget/EnhancedWebView;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/Integer;)V

    .line 119
    invoke-virtual {v1}, Lcom/instagram/android/widget/EnhancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 121
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/d;->news_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/EnhancedWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 127
    invoke-virtual {v1, v4}, Lcom/instagram/android/widget/EnhancedWebView;->setLongClickable(Z)V

    .line 130
    :cond_0
    invoke-virtual {v1, v4}, Lcom/instagram/android/widget/EnhancedWebView;->setVerticalScrollBarEnabled(Z)V

    .line 131
    new-instance v0, Lcom/instagram/android/fragment/NewsFragment$3;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/NewsFragment$3;-><init>(Lcom/instagram/android/fragment/NewsFragment;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/EnhancedWebView;->setOnLoadingChangeListener(Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/facebook/h;->fragment_news_title:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/EnhancedWebView;->setHeaderView(Landroid/view/View;)V

    .line 146
    sget v0, Lcom/facebook/g;->layout_button_group_news_view_switcher_button_following:I

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/EnhancedWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 149
    new-instance v2, Lcom/instagram/android/fragment/NewsFragment$4;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/NewsFragment$4;-><init>(Lcom/instagram/android/fragment/NewsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lcom/facebook/g;->layout_button_group_news_view_switcher_button_you:I

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/EnhancedWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 159
    new-instance v2, Lcom/instagram/android/fragment/NewsFragment$5;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/NewsFragment$5;-><init>(Lcom/instagram/android/fragment/NewsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-object v1
.end method

.method private getWebViewUrl(I)Ljava/lang/String;
    .locals 3
    .parameter "mode"

    .prologue
    .line 220
    new-instance v0, Lcom/instagram/api/RequestParams;

    invoke-direct {v0}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 221
    const-string v1, "user_id"

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/instagram/android/fragment/NewsFragment;->isGingerbreadOrLower()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "lofi"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/api/RequestParams;->sign()V

    .line 228
    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "news/inbox/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/api/RequestParams;->toQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "news/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/api/RequestParams;->toQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeWebView(ILandroid/os/Bundle;)Lcom/instagram/android/widget/EnhancedWebView;
    .locals 2
    .parameter "mode"
    .parameter "savedInstanceState"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/EnhancedWebView;

    .line 205
    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Lcom/instagram/android/widget/EnhancedWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 209
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/NewsFragment;->getWebViewUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/EnhancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 213
    :cond_1
    return-object v0
.end method

.method private isGingerbreadOrLower()Z
    .locals 2

    .prologue
    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSwitchToInboxFlag()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/fragment/NewsFragment;->switchToInboxOnResume:Z

    .line 59
    return-void
.end method

.method private switchToMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/fragment/NewsFragment;->switchToMode(IZ)V

    .line 312
    return-void
.end method

.method private switchToMode(IZ)V
    .locals 4
    .parameter "mode"
    .parameter "reloadIfModeIsUnchanged"

    .prologue
    .line 282
    iput p1, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    .line 283
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    if-eqz p2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    iget v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    invoke-direct {p0, v1}, Lcom/instagram/android/fragment/NewsFragment;->getWebViewUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/EnhancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    .line 289
    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 290
    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/widget/EnhancedWebView;

    iput-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    .line 291
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 292
    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/fragment/NewsFragment;->initializeWebView(ILandroid/os/Bundle;)Lcom/instagram/android/widget/EnhancedWebView;

    .line 294
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/NewsFragment;->updateViewState(I)V

    .line 297
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ActionBarService;->forceUpdate()V

    goto :goto_0
.end method

.method private updateViewState(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 303
    sget v1, Lcom/facebook/g;->layout_button_group_news_view_switcher_button_following:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_NEWS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 305
    sget v1, Lcom/facebook/g;->layout_button_group_news_view_switcher_button_you:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 303
    goto :goto_1

    :cond_1
    move v0, v3

    .line 305
    goto :goto_2

    .line 308
    :cond_2
    return-void
.end method


# virtual methods
.method public getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/instagram/android/fragment/NewsFragment$6;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/NewsFragment$6;-><init>(Lcom/instagram/android/fragment/NewsFragment;)V

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_NEWS:Ljava/lang/Integer;

    sget-object v2, Lcom/instagram/android/fragment/NewsFragment;->MODE_NEWS:Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/instagram/android/fragment/NewsFragment;->createWebView(Ljava/lang/Integer;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    sget-object v2, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/instagram/android/fragment/NewsFragment;->createWebView(Ljava/lang/Integer;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActionBarConfigurer()Lcom/instagram/android/fragment/ActionBarConfigurer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/ActionBarService;->attach(Lcom/instagram/android/fragment/ActionBarConfigurer;)V

    .line 112
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->pushReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.receiver.C2DMReceiver.NOTIFICATION_RECEIVED_BROADCAST_PROXY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 175
    sget v0, Lcom/facebook/h;->fragment_news:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    if-eqz p3, :cond_0

    .line 178
    const-string v1, "com.instagram.android.fragment.NewsFragment.STATE_CURRENT_MODE"

    sget-object v2, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    if-nez v1, :cond_1

    .line 186
    invoke-static {}, Lcom/instagram/android/activity/NewsActivityInTab;->takeLoadInboxFlag()Z

    .line 188
    iget v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    invoke-direct {p0, v1, p3}, Lcom/instagram/android/fragment/NewsFragment;->initializeWebView(ILandroid/os/Bundle;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    iget v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    invoke-direct {p0, v1}, Lcom/instagram/android/fragment/NewsFragment;->updateViewState(I)V

    .line 194
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->pushReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 384
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    .line 391
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 392
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 362
    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    .line 363
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 364
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 365
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 326
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->resumedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 327
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 334
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 339
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/NewsActivityInTab;

    invoke-virtual {v0}, Lcom/instagram/android/activity/NewsActivityInTab;->configureActionBar()V

    .line 347
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->resumedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.service.action_bar_refresh_clicked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 348
    invoke-virtual {p0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->resumedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.fragment.NewsFragment.BROADCAST_SWITCH_TO_INBOX"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 351
    sget-boolean v0, Lcom/instagram/android/fragment/NewsFragment;->switchToInboxOnResume:Z

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/fragment/NewsFragment;->switchToInboxOnResume:Z

    .line 353
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    iget-object v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    sget-object v2, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 354
    sget-object v0, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/NewsFragment;->switchToMode(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mWebViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 242
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0

    .line 244
    :cond_0
    const-string v0, "com.instagram.android.fragment.NewsFragment.STATE_CURRENT_MODE"

    iget v1, p0, Lcom/instagram/android/fragment/NewsFragment;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 375
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 370
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->scrollToTop()V

    .line 399
    :cond_0
    return-void
.end method
