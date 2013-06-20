.class Lcom/instagram/android/fragment/NewsFragment$6;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/instagram/android/fragment/NewsFragment$6;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/k;->News:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$6;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/EnhancedWebView;->isLoading()Z

    move-result v0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method
