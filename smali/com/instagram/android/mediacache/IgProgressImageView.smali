.class public Lcom/instagram/android/mediacache/IgProgressImageView;
.super Landroid/widget/ViewAnimator;
.source "IgProgressImageView.java"


# static fields
.field public static final INDEX_IMAGE:I = 0x0

.field public static final INDEX_PROGRESS_BAR:I = 0x1

.field public static final INDEX_TEXT_VIEW:I = 0x2

.field public static final PROGRESS_BAR_HEIGHT_DIP:I = 0xa


# instance fields
.field private mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

.field private mOnLoadListener:Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/mediacache/IgProgressImageView;)Lcom/instagram/android/mediacache/IgImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getIgImageView()Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/mediacache/IgProgressImageView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/mediacache/IgProgressImageView;)Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mOnLoadListener:Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;

    return-object v0
.end method

.method private getIgImageView()Lcom/instagram/android/mediacache/IgImageView;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

    .line 71
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

    new-instance v1, Lcom/instagram/android/mediacache/IgProgressImageView$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/mediacache/IgProgressImageView$2;-><init>(Lcom/instagram/android/mediacache/IgProgressImageView;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setProgressListener(Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;)V

    .line 82
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setReportProgress(Z)V

    .line 83
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

    new-instance v1, Lcom/instagram/android/mediacache/IgProgressImageView$3;

    invoke-direct {v1, p0}, Lcom/instagram/android/mediacache/IgProgressImageView$3;-><init>(Lcom/instagram/android/mediacache/IgProgressImageView;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setOnLoadListener(Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mIgImageView:Lcom/instagram/android/mediacache/IgImageView;

    return-object v0
.end method

.method private getProgressBar()Landroid/widget/ProgressBar;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 103
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 104
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mTextView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->tap_to_reload:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/mediacache/IgProgressImageView$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/mediacache/IgProgressImageView$1;-><init>(Lcom/instagram/android/mediacache/IgProgressImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getIgImageView()Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgImageView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/16 v4, 0x11

    const/4 v3, -0x1

    .line 42
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->removeAllViews()V

    .line 44
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getIgImageView()Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/mediacache/IgProgressImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/mediacache/IgProgressImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/mediacache/IgProgressImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getIgImageView()Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgImageView;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public loadBitmap(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getIgImageView()Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/mediacache/IgImageView;->loadBitmap(Ljava/io/InputStream;)V

    .line 115
    return-void
.end method

.method public setOnLoadListener(Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;)V
    .locals 0
    .parameter "onLoadListener"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgProgressImageView;->mOnLoadListener:Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;

    .line 127
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "urlForRow"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/instagram/android/mediacache/IgProgressImageView;->getIgImageView()Lcom/instagram/android/mediacache/IgImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 111
    return-void
.end method
