.class Lcom/instagram/android/fragment/CommentThreadFragment$15;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$15;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 462
    sget v0, Lcom/facebook/h;->action_bar_comment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 463
    sget v0, Lcom/facebook/g;->action_bar_overflow_imageview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 464
    new-instance v0, Lcom/instagram/android/fragment/CommentThreadFragment$15$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/CommentThreadFragment$15$1;-><init>(Lcom/instagram/android/fragment/CommentThreadFragment$15;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$15;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->canEdit()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$800(Lcom/instagram/android/fragment/CommentThreadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 471
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/CommentThreadFragment$15;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    sget v0, Lcom/facebook/g;->action_bar_textview_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    return-object v2

    .line 470
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$15;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    sget v1, Lcom/facebook/k;->comments:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/CommentThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method
