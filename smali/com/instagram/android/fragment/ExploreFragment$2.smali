.class Lcom/instagram/android/fragment/ExploreFragment$2;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "ExploreFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ExploreFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ExploreFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/fragment/ExploreFragment$2;->this$0:Lcom/instagram/android/fragment/ExploreFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v3, 0x0

    .line 66
    sget v0, Lcom/facebook/h;->action_bar_explore:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    sget v1, Lcom/facebook/g;->action_bar_overflow_imageview_search:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    sget v1, Lcom/facebook/g;->action_bar_overflow_imageview_search:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/ExploreFragment$2$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ExploreFragment$2$1;-><init>(Lcom/instagram/android/fragment/ExploreFragment$2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v1, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ExploreFragment$2;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget v1, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/instagram/android/fragment/ExploreFragment$2;->this$0:Lcom/instagram/android/fragment/ExploreFragment;

    sget v1, Lcom/facebook/k;->explore:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ExploreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/fragment/ExploreFragment$2;->this$0:Lcom/instagram/android/fragment/ExploreFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ExploreFragment;->isLoading()Z

    move-result v0

    return v0
.end method
