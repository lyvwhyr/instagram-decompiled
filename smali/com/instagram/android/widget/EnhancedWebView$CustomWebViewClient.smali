.class Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "EnhancedWebView.java"


# instance fields
.field private mCurrentPageUrl:Ljava/lang/String;

.field private mHasAddedMargin:Z

.field final synthetic this$0:Lcom/instagram/android/widget/EnhancedWebView;


# direct methods
.method private constructor <init>(Lcom/instagram/android/widget/EnhancedWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/widget/EnhancedWebView;Lcom/instagram/android/widget/EnhancedWebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;-><init>(Lcom/instagram/android/widget/EnhancedWebView;)V

    return-void
.end method

.method private displayMedia(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    const-string v2, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mMediaIdsSeen:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/instagram/android/widget/EnhancedWebView;->access$100(Lcom/instagram/android/widget/EnhancedWebView;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const-string v2, "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    iget-object v2, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mMediaIdsSeen:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/instagram/android/widget/EnhancedWebView;->access$100(Lcom/instagram/android/widget/EnhancedWebView;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/SingleMediaFeedFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/SingleMediaFeedFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 312
    :cond_1
    return-void
.end method

.method private displayPhotoMap(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v1}, Lcom/instagram/android/widget/EnhancedWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/android/maps/util/MapsUtils;->launchPhotoMapForUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method private displayTag(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    const-string v2, "com.instagram.android.fragment.HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/HashtagFeedFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/HashtagFeedFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 295
    :cond_0
    return-void
.end method

.method private displayUserDetail(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_1

    .line 321
    const-string v1, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_ID"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Lcom/instagram/android/widget/EnhancedWebView;->access$600(Lcom/instagram/android/widget/EnhancedWebView;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/UserDetailFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/UserDetailFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 332
    :cond_0
    return-void

    .line 323
    :cond_1
    const-string v2, "com.instagram.android.fragment.UserDetailFragment.EXTRA_USER_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private maybeDisplayToast(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 342
    const-string v0, "EnhancedWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received toast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    .line 351
    const-string v1, "counts"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v1}, Lcom/instagram/android/widget/EnhancedWebView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    const-string v1, "likes"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    .line 360
    const-string v2, "comments"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    .line 361
    const-string v3, "relationships"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v3

    .line 362
    const-string v4, "usertags"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v4

    .line 366
    add-int v5, v1, v2

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    if-lez v5, :cond_0

    .line 367
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.instagram.android.activity.MainTabActivity.BROADCAST_TOAST"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v6, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_LIKES"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string v1, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_COMMENTS"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const-string v1, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_RELATIONSHIPS"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string v1, "com.instagram.android.activity.MainTabActivity.EXTRA_BROADCAST_TOAST_USERTAGS"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v1}, Lcom/instagram/android/widget/EnhancedWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 378
    :cond_0
    :goto_0
    const-string v1, "photos_of_you"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    .line 380
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.fragment.SelfFragment.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    const-string v2, "com.instagram.android.fragment.SelfFragment.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 383
    :goto_1
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    const-string v0, "EnhancedWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing json from url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    :cond_1
    const-string v1, "EnhancedWebView"

    const-string v2, "Webview is visible, not showing toast"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 229
    const-string v0, "EnhancedWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$200(Lcom/instagram/android/widget/EnhancedWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->mHasAddedMargin:Z

    if-nez v0, :cond_1

    const-string v0, "css"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->addTopMargin()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->mHasAddedMargin:Z

    .line 248
    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 191
    const-string v0, "EnhancedWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->scrollToTop()V

    .line 193
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mMediaIdsSeen:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$100(Lcom/instagram/android/widget/EnhancedWebView;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 194
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/widget/EnhancedWebView;->access$202(Lcom/instagram/android/widget/EnhancedWebView;Z)Z

    .line 198
    iget-boolean v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->mHasAddedMargin:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->addTopMargin()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mOnLoadingChangeListener:Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$300(Lcom/instagram/android/widget/EnhancedWebView;)Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mOnLoadingChangeListener:Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$300(Lcom/instagram/android/widget/EnhancedWebView;)Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    iget-object v2, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z
    invoke-static {v2}, Lcom/instagram/android/widget/EnhancedWebView;->access$200(Lcom/instagram/android/widget/EnhancedWebView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;->onLoadingChange(Lcom/instagram/android/widget/EnhancedWebView;Z)V

    .line 205
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 209
    const-string v0, "EnhancedWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/instagram/android/widget/EnhancedWebView;->access$202(Lcom/instagram/android/widget/EnhancedWebView;Z)Z

    .line 212
    iput-object p2, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->mCurrentPageUrl:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->mHasAddedMargin:Z

    .line 216
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mType:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$400(Lcom/instagram/android/widget/EnhancedWebView;)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_INBOX:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/instagram/android/activity/NewsActivityInTab;->takeLoadInboxFlag()Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mOnLoadingChangeListener:Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$300(Lcom/instagram/android/widget/EnhancedWebView;)Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mOnLoadingChangeListener:Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;
    invoke-static {v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$300(Lcom/instagram/android/widget/EnhancedWebView;)Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    iget-object v2, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #getter for: Lcom/instagram/android/widget/EnhancedWebView;->mIsLoading:Z
    invoke-static {v2}, Lcom/instagram/android/widget/EnhancedWebView;->access$200(Lcom/instagram/android/widget/EnhancedWebView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;->onLoadingChange(Lcom/instagram/android/widget/EnhancedWebView;Z)V

    .line 224
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 225
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 173
    const/16 v0, 0x1f7

    if-eq p2, v0, :cond_0

    .line 175
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :goto_1
    const-string v0, ""

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->could_not_refresh_feed:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 252
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "instagram"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 256
    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-direct {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->displayMedia(Landroid/net/Uri;)V

    .line 285
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_1
    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    invoke-direct {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->displayUserDetail(Landroid/net/Uri;)V

    goto :goto_0

    .line 260
    :cond_2
    const-string v2, "photomap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "photomap_review"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 261
    :cond_3
    invoke-direct {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->displayPhotoMap(Landroid/net/Uri;)V

    goto :goto_0

    .line 262
    :cond_4
    const-string v2, "toast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 263
    invoke-direct {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->maybeDisplayToast(Landroid/net/Uri;)V

    goto :goto_0

    .line 264
    :cond_5
    const-string v2, "tag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 265
    invoke-direct {p0, v0}, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->displayTag(Landroid/net/Uri;)V

    goto :goto_0

    .line 266
    :cond_6
    const-string v2, "browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/instagram/android/constants/InstagramURLConstants;->isUrlInstagram(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/instagram/android/widget/EnhancedWebView;->viewWithExternalBrowser(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/instagram/android/widget/EnhancedWebView;->access$500(Lcom/instagram/android/widget/EnhancedWebView;Landroid/net/Uri;)V

    goto :goto_0

    .line 274
    :cond_7
    const-string v1, "EnhancedWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL received, sending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {p2}, Lcom/instagram/android/constants/InstagramURLConstants;->isUrlInstagram(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/instagram/android/widget/EnhancedWebView$CustomWebViewClient;->this$0:Lcom/instagram/android/widget/EnhancedWebView;

    #calls: Lcom/instagram/android/widget/EnhancedWebView;->viewWithExternalBrowser(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/instagram/android/widget/EnhancedWebView;->access$500(Lcom/instagram/android/widget/EnhancedWebView;Landroid/net/Uri;)V

    goto :goto_0
.end method
