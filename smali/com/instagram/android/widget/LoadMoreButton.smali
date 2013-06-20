.class public Lcom/instagram/android/widget/LoadMoreButton;
.super Landroid/widget/ViewAnimator;
.source "LoadMoreButton.java"


# static fields
.field private static final INDEX_ALL_ITEMS_LOADED:I = 0x0

.field private static final INDEX_LOADING:I = 0x1

.field private static final INDEX_LOAD_MORE:I = 0x2

.field private static final INDEX_PRIVATE:I = 0x3

.field private static final INDEX_RETRY:I = 0x4


# instance fields
.field mLoadMoreInterface:Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/instagram/android/widget/LoadMoreButton;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/instagram/android/widget/LoadMoreButton;->init()V

    .line 35
    return-void
.end method

.method private bindInternal(Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)V
    .locals 1
    .parameter "loadMoreInterface"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/instagram/android/widget/LoadMoreButton;->wouldShow(Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LoadMoreButton;->setVisibility(I)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LoadMoreButton;->setVisibility(I)V

    .line 75
    invoke-interface {p1}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {p1}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-interface {p1}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0

    .line 81
    :cond_4
    invoke-interface {p1}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->hasMoreItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method private createAllItemsLoadedButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/widget/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    return-object v0
.end method

.method private createLoadMoreButton()Landroid/view/View;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/widget/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Lcom/instagram/android/widget/LoadMoreButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->feedstate_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v1, Lcom/instagram/android/widget/LoadMoreButton$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/LoadMoreButton$1;-><init>(Lcom/instagram/android/widget/LoadMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-object v0
.end method

.method private createLoadingButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/instagram/android/widget/IgLoadingSpinner;

    invoke-virtual {p0}, Lcom/instagram/android/widget/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgLoadingSpinner;-><init>(Landroid/content/Context;)V

    .line 95
    return-object v0
.end method

.method private createPrivateUserState()Landroid/view/View;
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/instagram/android/widget/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->load_more_private_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createRetryState()Landroid/view/View;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/widget/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0}, Lcom/instagram/android/widget/LoadMoreButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->feedstate_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    new-instance v1, Lcom/instagram/android/widget/LoadMoreButton$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/LoadMoreButton$2;-><init>(Lcom/instagram/android/widget/LoadMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 38
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 39
    invoke-direct {p0}, Lcom/instagram/android/widget/LoadMoreButton;->createAllItemsLoadedButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/widget/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-direct {p0}, Lcom/instagram/android/widget/LoadMoreButton;->createLoadingButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/widget/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-direct {p0}, Lcom/instagram/android/widget/LoadMoreButton;->createLoadMoreButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/widget/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-direct {p0}, Lcom/instagram/android/widget/LoadMoreButton;->createPrivateUserState()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/widget/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-direct {p0}, Lcom/instagram/android/widget/LoadMoreButton;->createRetryState()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/widget/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method

.method private static wouldShow(Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)Z
    .locals 1
    .parameter "loadMoreInterface"

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->isLoadMoreVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->isFailed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;->hasMoreItems()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)V
    .locals 0
    .parameter "loadMoreInterface"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/android/widget/LoadMoreButton;->mLoadMoreInterface:Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;

    .line 49
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/LoadMoreButton;->bindInternal(Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)V

    .line 50
    return-void
.end method
