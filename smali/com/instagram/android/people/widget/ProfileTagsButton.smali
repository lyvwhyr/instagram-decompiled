.class public Lcom/instagram/android/people/widget/ProfileTagsButton;
.super Landroid/widget/FrameLayout;
.source "ProfileTagsButton.java"


# instance fields
.field private mBadgeView:Landroid/widget/TextView;

.field private mOverlay:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/people/widget/ProfileTagsButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/people/widget/ProfileTagsButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->layout_button_profile_tags:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget v0, Lcom/facebook/g;->button_profile_tags_textview:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mBadgeView:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/facebook/g;->button_profile_tags_overlay:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mOverlay:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 69
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    iget-object v1, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v3, v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 76
    return-void
.end method

.method public setPhotosOfYouCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 52
    if-lez p1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mBadgeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mBadgeView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mBadgeView:Landroid/widget/TextView;

    const-string v1, "\u2022\u2022\u2022"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mBadgeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUser(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "user"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/User;->isSelf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->canView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPeopleTagsCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getPeopleTagsCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/ProfileTagsButton;->invalidate()V

    .line 49
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/ProfileTagsButton;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setClickable(Z)V

    goto :goto_0
.end method
