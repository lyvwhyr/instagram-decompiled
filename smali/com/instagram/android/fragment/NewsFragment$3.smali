.class Lcom/instagram/android/fragment/NewsFragment$3;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/instagram/android/widget/EnhancedWebView$OnLoadingChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/instagram/android/fragment/NewsFragment$3;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChange(Lcom/instagram/android/widget/EnhancedWebView;Z)V
    .locals 1
    .parameter "webView"
    .parameter "isLoading"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$3;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    #getter for: Lcom/instagram/android/fragment/NewsFragment;->mCurrentWebView:Lcom/instagram/android/widget/EnhancedWebView;
    invoke-static {v0}, Lcom/instagram/android/fragment/NewsFragment;->access$000(Lcom/instagram/android/fragment/NewsFragment;)Lcom/instagram/android/widget/EnhancedWebView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/widget/EnhancedWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$3;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/service/ActionBarService;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/ActionBarService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/service/ActionBarService;->setIsLoading(Z)V

    .line 137
    :cond_0
    return-void
.end method
