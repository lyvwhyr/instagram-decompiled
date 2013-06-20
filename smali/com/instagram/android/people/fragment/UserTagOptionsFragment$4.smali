.class Lcom/instagram/android/people/fragment/UserTagOptionsFragment$4;
.super Ljava/lang/Object;
.source "UserTagOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$4;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$4;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    sget v1, Lcom/facebook/k;->options:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method
