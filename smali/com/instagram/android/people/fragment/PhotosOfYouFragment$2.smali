.class Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "PhotosOfYouFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    #getter for: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mIsCurrentUser:Z
    invoke-static {v1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$200(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    .line 165
    :cond_0
    sget v1, Lcom/facebook/h;->action_bar_overflow:I

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 167
    sget v2, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2$1;

    invoke-direct {v3, p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2$1;-><init>(Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    sget v2, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    #getter for: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mFirstRequestFinished:Z
    invoke-static {v3}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$300(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 182
    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    #getter for: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mIsCurrentUser:Z
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$200(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    sget v1, Lcom/facebook/k;->photos_of_you:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    sget v1, Lcom/facebook/k;->photos_of_user:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/android/people/fragment/PhotosOfYouFragment$2;->this$0:Lcom/instagram/android/people/fragment/PhotosOfYouFragment;

    #getter for: Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->mUsername:Ljava/lang/String;
    invoke-static {v4}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->access$400(Lcom/instagram/android/people/fragment/PhotosOfYouFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/people/fragment/PhotosOfYouFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method
