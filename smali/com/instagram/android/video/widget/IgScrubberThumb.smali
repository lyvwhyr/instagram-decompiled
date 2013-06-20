.class public Lcom/instagram/android/video/widget/IgScrubberThumb;
.super Landroid/graphics/drawable/Drawable;
.source "IgScrubberThumb.java"


# static fields
.field private static final HORIZONTAL_PADDING_DP:I = 0x6

.field private static final TAG:Ljava/lang/String; = "IgScrubberThumb"

.field private static final VERTICAL_PADDING_DP:I = 0x1a


# instance fields
.field private innerBitmap:Landroid/graphics/Bitmap;

.field private innerBounds:Landroid/graphics/Rect;

.field private mTranslateX:I

.field private mTranslateYBottom:I

.field private mTranslateYTop:I

.field private outerBitmap:Landroid/graphics/Bitmap;

.field private outerBounds:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    const/16 v1, 0x1a

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->mTranslateX:I

    .line 34
    invoke-static {p1, v1}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->mTranslateYTop:I

    .line 35
    invoke-static {p1, v1}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->mTranslateYBottom:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBitmap:Landroid/graphics/Bitmap;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->paint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBounds:Landroid/graphics/Rect;

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/video/widget/IgScrubberThumb;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBounds:Landroid/graphics/Rect;

    .line 46
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->mTranslateX:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 47
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->mTranslateX:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 48
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->mTranslateYTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 49
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->mTranslateYBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 51
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->outerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0xff

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setAlpha not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .parameter "colorFilter"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setColorFilter not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInnerBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "innerBitmap"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/android/video/widget/IgScrubberThumb;->innerBitmap:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/video/widget/IgScrubberThumb;->invalidateSelf()V

    .line 60
    return-void
.end method
