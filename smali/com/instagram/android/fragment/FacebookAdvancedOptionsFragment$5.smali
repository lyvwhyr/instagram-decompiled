.class Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$5;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$5;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$5;->this$0:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;

    sget v1, Lcom/facebook/k;->x_options:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Facebook"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method
