.class Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$3;
.super Ljava/lang/Object;
.source "FacebookPostingOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$3;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$3;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    sget v1, Lcom/facebook/k;->share_photos_to:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
