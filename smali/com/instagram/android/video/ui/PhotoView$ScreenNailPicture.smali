.class Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/instagram/android/video/ui/PhotoView$Picture;


# instance fields
.field private mRotation:I

.field private mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

.field private mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/instagram/android/video/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/instagram/android/video/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/instagram/android/video/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/instagram/android/video/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/instagram/android/video/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    .line 166
    return-void
.end method

.method private updateSize()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/instagram/android/video/ui/PhotoView;

    #calls: Lcom/instagram/android/video/ui/PhotoView;->getCameraRotation()I
    invoke-static {v0}, Lcom/instagram/android/video/ui/PhotoView;->access$200(Lcom/instagram/android/video/ui/PhotoView;)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mRotation:I

    .line 215
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    invoke-interface {v1}, Lcom/instagram/android/video/ui/ScreenNail;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/instagram/android/video/ui/PhotoView$Size;->width:I

    .line 217
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    invoke-interface {v1}, Lcom/instagram/android/video/ui/ScreenNail;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/instagram/android/video/ui/PhotoView$Size;->height:I

    .line 219
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    iget v0, v0, Lcom/instagram/android/video/ui/PhotoView$Size;->width:I

    .line 220
    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    iget v1, v1, Lcom/instagram/android/video/ui/PhotoView$Size;->height:I

    .line 221
    iget-object v2, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    iget v3, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/instagram/android/video/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/instagram/android/video/ui/PhotoView;->access$100(III)I

    move-result v3

    iput v3, v2, Lcom/instagram/android/video/ui/PhotoView$Size;->width:I

    .line 222
    iget-object v2, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    iget v3, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/instagram/android/video/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/instagram/android/video/ui/PhotoView;->access$100(III)I

    move-result v0

    iput v0, v2, Lcom/instagram/android/video/ui/PhotoView$Size;->height:I

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/instagram/android/video/ui/PhotoView;

    #calls: Lcom/instagram/android/video/ui/PhotoView;->drawPlaceHolder(Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v0, p1, p2}, Lcom/instagram/android/video/ui/PhotoView;->access$000(Lcom/instagram/android/video/ui/PhotoView;Lcom/instagram/android/video/gl/GLCanvas;Landroid/graphics/Rect;)V

    .line 200
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/instagram/android/video/ui/PhotoView;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/PhotoView;->getWidth()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/instagram/android/video/ui/PhotoView;

    invoke-virtual {v1}, Lcom/instagram/android/video/ui/PhotoView;->getHeight()I

    move-result v1

    .line 183
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_2

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    invoke-interface {v0}, Lcom/instagram/android/video/ui/ScreenNail;->noDraw()V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 189
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 190
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/instagram/android/video/gl/GLCanvas;->save(I)V

    .line 191
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    .line 192
    iget v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v0, :cond_3

    .line 193
    iget v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mRotation:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v3, v3, v1}, Lcom/instagram/android/video/gl/GLCanvas;->rotate(FFFF)V

    .line 195
    :cond_3
    iget v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    #calls: Lcom/instagram/android/video/ui/PhotoView;->getRotated(III)I
    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/ui/PhotoView;->access$100(III)I

    move-result v4

    .line 196
    iget v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    #calls: Lcom/instagram/android/video/ui/PhotoView;->getRotated(III)I
    invoke-static {v0, v1, v2}, Lcom/instagram/android/video/ui/PhotoView;->access$100(III)I

    move-result v5

    .line 197
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v5

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/instagram/android/video/ui/ScreenNail;->draw(Lcom/instagram/android/video/gl/GLCanvas;IIII)V

    .line 198
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 199
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->restore()V

    goto :goto_0
.end method

.method public forceSize()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 210
    return-void
.end method

.method public getSize()Lcom/instagram/android/video/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/instagram/android/video/ui/PhotoView$Size;

    return-object v0
.end method

.method public setScreenNail(Lcom/instagram/android/video/ui/ScreenNail;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/instagram/android/video/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/instagram/android/video/ui/ScreenNail;

    .line 205
    return-void
.end method
