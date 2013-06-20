.class Lcom/instagram/android/login/fragment/LookupFragment$4;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LookupFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LookupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LookupFragment$4;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$4;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    sget v1, Lcom/facebook/k;->forgot_password:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/LookupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method
