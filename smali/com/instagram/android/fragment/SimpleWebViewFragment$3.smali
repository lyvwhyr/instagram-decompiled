.class Lcom/instagram/android/fragment/SimpleWebViewFragment$3;
.super Ljava/lang/Object;
.source "SimpleWebViewFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SimpleWebViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$3;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$3;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleWebViewFragment.ARGUMENT_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/instagram/android/fragment/SimpleWebViewFragment$3;->this$0:Lcom/instagram/android/fragment/SimpleWebViewFragment;

    #calls: Lcom/instagram/android/fragment/SimpleWebViewFragment;->isRefreshEnabled()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/SimpleWebViewFragment;->access$000(Lcom/instagram/android/fragment/SimpleWebViewFragment;)Z

    move-result v0

    return v0
.end method
