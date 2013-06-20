.class public Lcom/instagram/android/mediacache/IgImageView;
.super Landroid/widget/ImageView;
.source "IgImageView.java"


# instance fields
.field private callback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

.field private mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

.field protected mLoaded:Z

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

.field private mReportProgress:Z

.field private mUrl:Ljava/lang/String;

.field private onLoadListener:Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    .line 24
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mReportProgress:Z

    .line 33
    new-instance v0, Lcom/instagram/android/mediacache/IgImageView$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgImageView$1;-><init>(Lcom/instagram/android/mediacache/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

    .line 42
    new-instance v0, Lcom/instagram/android/mediacache/IgImageView$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgImageView$2;-><init>(Lcom/instagram/android/mediacache/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->callback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    .line 24
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mReportProgress:Z

    .line 33
    new-instance v0, Lcom/instagram/android/mediacache/IgImageView$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgImageView$1;-><init>(Lcom/instagram/android/mediacache/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

    .line 42
    new-instance v0, Lcom/instagram/android/mediacache/IgImageView$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgImageView$2;-><init>(Lcom/instagram/android/mediacache/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->callback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 86
    invoke-direct {p0, p2}, Lcom/instagram/android/mediacache/IgImageView;->init(Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    .line 24
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mReportProgress:Z

    .line 33
    new-instance v0, Lcom/instagram/android/mediacache/IgImageView$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgImageView$1;-><init>(Lcom/instagram/android/mediacache/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

    .line 42
    new-instance v0, Lcom/instagram/android/mediacache/IgImageView$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/mediacache/IgImageView$2;-><init>(Lcom/instagram/android/mediacache/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->callback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 91
    invoke-direct {p0, p2}, Lcom/instagram/android/mediacache/IgImageView;->init(Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/mediacache/IgImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/mediacache/IgImageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/android/mediacache/IgImageView;Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->onLoadListener:Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/mediacache/IgImageView;)Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

    return-object v0
.end method

.method private fetchBitmap(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "clearCachedItem"

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    .line 119
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgImageView;->mUrl:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setUrl(Ljava/lang/String;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgImageView;->callback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instagram/android/mediacache/IgImageView;->mReportProgress:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setReportProgress(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setQueueAtFront(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->setClearCachedItem(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->queue()V

    .line 128
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/m;->IgImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/instagram/android/mediacache/IgColorDrawable;

    sget v2, Lcom/facebook/m;->IgImageView_placeholder:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/instagram/android/mediacache/IgColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/instagram/android/mediacache/IgImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void
.end method

.method private setUrlInternal(Ljava/lang/String;Z)V
    .locals 0
    .parameter "url"
    .parameter "clearCachedItem"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgImageView;->removeLoadCallback()V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/mediacache/IgImageView;->fetchBitmap(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    return v0
.end method

.method loadBitmap(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoaded:Z

    .line 132
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lcom/instagram/android/mediacache/IgImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgImageView;->removeLoadCallback()V

    .line 148
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 149
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    return-void
.end method

.method public removeLoadCallback()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgImageView;->callback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;->removeCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mLoadTask:Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapTask;

    .line 143
    :cond_0
    return-void
.end method

.method public retryCurrentUrl()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgImageView;->mUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setUrlInternal(Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public setOnLoadListener(Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;)V
    .locals 0
    .parameter "onLoadListener"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgImageView;->onLoadListener:Lcom/instagram/android/mediacache/IgImageView$OnLoadListener;

    .line 161
    return-void
.end method

.method public setProgressListener(Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;)V
    .locals 0
    .parameter "progressListener"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgImageView;->mProgressListener:Lcom/instagram/android/mediacache/IgImageView$OnProgressListener;

    .line 153
    return-void
.end method

.method public setReportProgress(Z)V
    .locals 0
    .parameter "reportProgress"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/instagram/android/mediacache/IgImageView;->mReportProgress:Z

    .line 157
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/mediacache/IgImageView;->setUrlInternal(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method
