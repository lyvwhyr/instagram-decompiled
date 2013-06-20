.class public Lcom/instagram/android/video/gl/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# static fields
.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final VISIBLE:I


# instance fields
.field private mBackgroundColor:[F

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/video/gl/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/instagram/android/video/gl/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/instagram/android/video/gl/GLView;

.field private mRoot:Lcom/instagram/android/video/gl/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 69
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    .line 71
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mMeasuredWidth:I

    .line 72
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mMeasuredHeight:I

    .line 74
    iput v2, p0, Lcom/instagram/android/video/gl/GLView;->mLastWidthSpec:I

    .line 75
    iput v2, p0, Lcom/instagram/android/video/gl/GLView;->mLastHeightSpec:I

    .line 77
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mScrollY:I

    .line 78
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mScrollX:I

    .line 79
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mScrollHeight:I

    .line 80
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mScrollWidth:I

    return-void
.end method

.method private removeOneComponent(Lcom/instagram/android/video/gl/GLView;)V
    .locals 8
    .parameter "component"

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mMotionTarget:Lcom/instagram/android/video/gl/GLView;

    if-ne v0, p1, :cond_0

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 166
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/GLView;->onDetachFromRoot()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    .line 173
    return-void
.end method

.method private setBounds(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 318
    sub-int v0, p3, p1

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    sub-int v0, p4, p2

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    return v0

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/instagram/android/video/gl/GLView;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 130
    iget-object v0, p1, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object p0, p1, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    .line 140
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    invoke-virtual {p1, v0}, Lcom/instagram/android/video/gl/GLView;->onAttachToRoot(Lcom/instagram/android/video/gl/GLRoot;)V

    .line 143
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/instagram/android/video/gl/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/GLView;->onAttachToRoot(Lcom/instagram/android/video/gl/GLRoot;)V

    .line 106
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->onDetachFromRoot()V

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 274
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mMotionTarget:Lcom/instagram/android/video/gl/GLView;

    if-eqz v0, :cond_0

    .line 275
    if-nez v7, :cond_2

    .line 276
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 278
    iget-object v4, p0, Lcom/instagram/android/video/gl/GLView;->mMotionTarget:Lcom/instagram/android/video/gl/GLView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/instagram/android/video/gl/GLView;Z)Z

    .line 279
    iput-object v9, p0, Lcom/instagram/android/video/gl/GLView;->mMotionTarget:Lcom/instagram/android/video/gl/GLView;

    .line 289
    :cond_0
    if-nez v7, :cond_6

    .line 291
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_6

    .line 292
    invoke-virtual {p0, v7}, Lcom/instagram/android/video/gl/GLView;->getComponent(I)Lcom/instagram/android/video/gl/GLView;

    move-result-object v4

    .line 293
    invoke-virtual {v4}, Lcom/instagram/android/video/gl/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 281
    :cond_2
    iget-object v4, p0, Lcom/instagram/android/video/gl/GLView;->mMotionTarget:Lcom/instagram/android/video/gl/GLView;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/instagram/android/video/gl/GLView;Z)Z

    .line 282
    if-eq v7, v8, :cond_3

    if-ne v7, v6, :cond_4

    .line 284
    :cond_3
    iput-object v9, p0, Lcom/instagram/android/video/gl/GLView;->mMotionTarget:Lcom/instagram/android/video/gl/GLView;

    :cond_4
    move v0, v6

    .line 300
    :goto_1
    return v0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v5, v6

    .line 294
    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/instagram/android/video/gl/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iput-object v4, p0, Lcom/instagram/android/video/gl/GLView;->mMotionTarget:Lcom/instagram/android/video/gl/GLView;

    move v0, v6

    .line 296
    goto :goto_1

    .line 300
    :cond_6
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/instagram/android/video/gl/GLView;Z)Z
    .locals 4
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "component"
    .parameter "checkBounds"

    .prologue
    .line 256
    iget-object v0, p4, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    .line 257
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 258
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 259
    if-eqz p5, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    :cond_0
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 261
    invoke-virtual {p4, p1}, Lcom/instagram/android/video/gl/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 263
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    .line 265
    :cond_1
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 267
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dumpTree(Ljava/lang/String;)V
    .locals 5
    .parameter "prefix"

    .prologue
    .line 419
    const-string v0, "GLView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 421
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLView;->getComponent(I)Lcom/instagram/android/video/gl/GLView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/android/video/gl/GLView;->dumpTree(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method

.method public getBackgroundColor()[F
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mBackgroundColor:[F

    return-object v0
.end method

.method public getBoundsOf(Lcom/instagram/android/video/gl/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "descendant"
    .parameter "out"

    .prologue
    const/4 v0, 0x0

    .line 366
    move-object v1, p1

    move v2, v0

    move v3, v0

    .line 369
    :goto_0
    if-eq v1, p0, :cond_1

    .line 370
    if-nez v1, :cond_0

    .line 378
    :goto_1
    return v0

    .line 371
    :cond_0
    iget-object v4, v1, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    .line 372
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 373
    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 374
    iget-object v1, v1, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/android/video/gl/GLView;->getWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/instagram/android/video/gl/GLView;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v3, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 378
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/instagram/android/video/gl/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/instagram/android/video/gl/GLRoot;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getGLRoot()Lcom/instagram/android/video/gl/GLRoot;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLRoot;->requestRender()V

    .line 196
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/video/gl/GLView;->setBounds(IIII)Z

    move-result v1

    .line 309
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 314
    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/video/gl/GLView;->onLayout(ZIIII)V

    .line 315
    return-void
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLRoot;->lockRenderThread()V

    .line 408
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 325
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 339
    :cond_0
    return-void

    .line 330
    :cond_1
    iput p1, p0, Lcom/instagram/android/video/gl/GLView;->mLastWidthSpec:I

    .line 331
    iput p2, p0, Lcom/instagram/android/video/gl/GLView;->mLastHeightSpec:I

    .line 333
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/video/gl/GLView;->onMeasure(II)V

    .line 335
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/instagram/android/video/gl/GLRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLView;->getComponent(I)Lcom/instagram/android/video/gl/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/instagram/android/video/gl/GLView;->onAttachToRoot(Lcom/instagram/android/video/gl/GLRoot;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 399
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLView;->getComponent(I)Lcom/instagram/android/video/gl/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/video/gl/GLView;->onDetachFromRoot()V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    .line 402
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 360
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 342
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 383
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLView;->getComponent(I)Lcom/instagram/android/video/gl/GLView;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Lcom/instagram/android/video/gl/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 385
    invoke-virtual {v2, p1}, Lcom/instagram/android/video/gl/GLView;->onVisibilityChanged(I)V

    .line 382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    return-void
.end method

.method public removeAllComponents()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/GLView;

    invoke-direct {p0, v0}, Lcom/instagram/android/video/gl/GLView;->removeOneComponent(Lcom/instagram/android/video/gl/GLView;)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    return-void
.end method

.method public removeComponent(Lcom/instagram/android/video/gl/GLView;)Z
    .locals 2
    .parameter "component"

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLView;->removeOneComponent(Lcom/instagram/android/video/gl/GLView;)V

    .line 150
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected render(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/GLView;->renderBackground(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 215
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->save()V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/GLView;->getComponent(I)Lcom/instagram/android/video/gl/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/instagram/android/video/gl/GLView;->renderChild(Lcom/instagram/android/video/gl/GLCanvas;Lcom/instagram/android/video/gl/GLView;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->restore()V

    .line 220
    return-void
.end method

.method protected renderBackground(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mBackgroundColor:[F

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mBackgroundColor:[F

    invoke-interface {p1, v0}, Lcom/instagram/android/video/gl/GLCanvas;->clearBuffer([F)V

    .line 234
    :cond_0
    return-void
.end method

.method protected renderChild(Lcom/instagram/android/video/gl/GLCanvas;Lcom/instagram/android/video/gl/GLView;)V
    .locals 4
    .parameter "canvas"
    .parameter "component"

    .prologue
    .line 237
    invoke-virtual {p2}, Lcom/instagram/android/video/gl/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p2, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/instagram/android/video/gl/GLView;->mScrollX:I

    sub-int/2addr v0, v1

    .line 242
    iget-object v1, p2, Lcom/instagram/android/video/gl/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/instagram/android/video/gl/GLView;->mScrollY:I

    sub-int/2addr v1, v2

    .line 244
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p1, v2, v3}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    .line 245
    invoke-virtual {p2, p1}, Lcom/instagram/android/video/gl/GLView;->render(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 247
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/android/video/gl/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 200
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    .line 201
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mLastHeightSpec:I

    .line 202
    iput v1, p0, Lcom/instagram/android/video/gl/GLView;->mLastWidthSpec:I

    .line 203
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mParent:Lcom/instagram/android/video/gl/GLView;

    invoke-virtual {v0}, Lcom/instagram/android/video/gl/GLView;->requestLayout()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getGLRoot()Lcom/instagram/android/video/gl/GLRoot;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setBackgroundColor([F)V
    .locals 0
    .parameter "color"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLView;->mBackgroundColor:[F

    .line 228
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 345
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    .line 346
    iput p1, p0, Lcom/instagram/android/video/gl/GLView;->mMeasuredWidth:I

    .line 347
    iput p2, p0, Lcom/instagram/android/video/gl/GLView;->mMeasuredHeight:I

    .line 348
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    .line 93
    :goto_1
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/GLView;->onVisibilityChanged(I)V

    .line 94
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLView;->invalidate()V

    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/video/gl/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLView;->mRoot:Lcom/instagram/android/video/gl/GLRoot;

    invoke-interface {v0}, Lcom/instagram/android/video/gl/GLRoot;->unlockRenderThread()V

    .line 414
    :cond_0
    return-void
.end method
