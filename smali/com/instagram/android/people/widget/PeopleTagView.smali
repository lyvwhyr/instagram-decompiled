.class public Lcom/instagram/android/people/widget/PeopleTagView;
.super Landroid/view/ViewGroup;
.source "PeopleTagView.java"


# static fields
.field protected static final BUBBLE_EXTERNAL_PADDING:I

.field protected static final BUBBLE_INTERNAL_PADDING:I

.field protected static final BUBBLE_SIDE_PADDING:I

.field protected static final BUBBLE_TOP_OFFSET:I

.field protected static final DOWN_ARROW_BOTTOM_OFFSET:I

.field protected static final LIMIT_LEFT_RIGHT:I

.field protected static final LIMIT_TOP_BOTTOM:I

.field protected static final MINIMUM_LABEL_WIDTH:I

.field protected static final REMOVE_BUTTON_LABEL_OFFSET:I

.field protected static final UP_ARROW_TOP_OFFSET:I


# instance fields
.field private currentDimension:I

.field protected mBubbleText:Landroid/widget/TextView;

.field protected mDownArrow:Landroid/widget/ImageView;

.field private mDrawBounds:Landroid/graphics/Rect;

.field private mHasOnClickListener:Z

.field private mIsMotionEventOwner:Z

.field private mIsVisible:Z

.field private mMaxBounds:Landroid/graphics/Rect;

.field private mNormalizedPosition:Landroid/graphics/PointF;

.field private mRealBounds:Landroid/graphics/Rect;

.field protected mRemoveButton:Landroid/widget/ImageView;

.field private mTagPosition:Landroid/graphics/PointF;

.field protected mUpArrow:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x5

    .line 32
    invoke-static {v2}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_TOP_OFFSET:I

    .line 33
    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->UP_ARROW_TOP_OFFSET:I

    .line 34
    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->DOWN_ARROW_BOTTOM_OFFSET:I

    .line 35
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    .line 36
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->MINIMUM_LABEL_WIDTH:I

    .line 38
    invoke-static {v2}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    .line 39
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_INTERNAL_PADDING:I

    .line 40
    sget v0, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_INTERNAL_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_SIDE_PADDING:I

    .line 44
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    .line 45
    invoke-static {v2}, Lcom/instagram/android/people/widget/PeopleTagView;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_TOP_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsVisible:Z

    .line 48
    iput v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    .line 59
    iput-boolean v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsMotionEventOwner:Z

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    .line 79
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsVisible:Z

    .line 48
    iput v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    .line 59
    iput-boolean v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsMotionEventOwner:Z

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    .line 74
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsVisible:Z

    .line 48
    iput v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    .line 59
    iput-boolean v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsMotionEventOwner:Z

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    .line 69
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->init()V

    .line 70
    return-void
.end method

.method private calculateNaiveBounds()V
    .locals 8

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getArrowXPosition()I

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getArrowYPosition()I

    move-result v1

    .line 251
    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sub-int/2addr v2, v3

    .line 252
    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 254
    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->UP_ARROW_TOP_OFFSET:I

    sub-int v4, v1, v4

    sget v5, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_TOP_OFFSET:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    if-le v4, v5, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->showDownArrowOnly()V

    .line 257
    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    sub-int v5, v0, v3

    sget v6, Lcom/instagram/android/people/widget/PeopleTagView;->DOWN_ARROW_BOTTOM_OFFSET:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v3, v0

    sget v7, Lcom/instagram/android/people/widget/PeopleTagView;->DOWN_ARROW_BOTTOM_OFFSET:I

    add-int/2addr v1, v7

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 264
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sget v5, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_TOP_OFFSET:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v0, v2

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sget v6, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_TOP_OFFSET:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    add-int/2addr v1, v3

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    sub-int/2addr v2, v4

    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 287
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->showUpArrowOnly()V

    .line 271
    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    sub-int v5, v0, v3

    sget v6, Lcom/instagram/android/people/widget/PeopleTagView;->UP_ARROW_TOP_OFFSET:I

    sub-int v6, v1, v6

    add-int/2addr v3, v0

    sget v7, Lcom/instagram/android/people/widget/PeopleTagView;->UP_ARROW_TOP_OFFSET:I

    sub-int/2addr v1, v7

    iget-object v7, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 277
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sget v5, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_TOP_OFFSET:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v2

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sget v6, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_TOP_OFFSET:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected static dpToPx(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 373
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private updateSize(I)V
    .locals 3
    .parameter "newSize"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mNormalizedPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    iput p1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    .line 201
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mNormalizedPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 203
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mNormalizedPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 204
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->setPosition(Landroid/graphics/PointF;)V

    goto :goto_0
.end method


# virtual methods
.method protected adjustPositionForScreenBounds(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .parameter "point"

    .prologue
    .line 459
    iget v0, p1, Landroid/graphics/PointF;->x:F

    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 460
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getMeasuredWidth()I

    move-result v1

    sget v2, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 461
    iget v0, p1, Landroid/graphics/PointF;->y:F

    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_TOP_BOTTOM:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 462
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getMeasuredHeight()I

    move-result v1

    sget v2, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_TOP_BOTTOM:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 463
    return-object p1
.end method

.method centerOnX(I)V
    .locals 5
    .parameter "center"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 413
    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getArrowXPosition()I

    move-result v2

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    add-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    sget v2, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    return-void
.end method

.method protected getAbsoluteTagPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected getArrowXPosition()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    return v0
.end method

.method protected getArrowYPosition()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    return v0
.end method

.method getBubbleWidth()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method getDrawingBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getMaxBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getMaxXStart(I)I
    .locals 3
    .parameter "maxWidth"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getArrowXPosition()I

    move-result v1

    sget v2, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_INTERNAL_PADDING:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method getMinXStart(II)I
    .locals 2
    .parameter "minStart"
    .parameter "maxWidth"

    .prologue
    .line 403
    invoke-virtual {p0, p2}, Lcom/instagram/android/people/widget/PeopleTagView;->getMaxXStart(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getNormalizedPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mNormalizedPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method getPreferredBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTaggedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/model/PeopleTag;

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTag;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method hide(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsVisible:Z

    .line 339
    return-void
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 83
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->initBubbleText()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->initUpArrow()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->initDownArrow()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->initRemoveButton()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    .line 93
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method protected initBubbleText()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    sget v1, Lcom/facebook/f;->tag_bubble_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 103
    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_SIDE_PADDING:I

    sget v2, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_SIDE_PADDING:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 105
    const/4 v1, 0x2

    const/high16 v2, 0x4160

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->MINIMUM_LABEL_WIDTH:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 107
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    return-object v0
.end method

.method protected initDownArrow()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 120
    sget v1, Lcom/facebook/f;->carrot_down_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    return-object v0
.end method

.method protected initRemoveButton()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    sget v1, Lcom/facebook/f;->tag_close_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    return-object v0
.end method

.method protected initUpArrow()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    sget v1, Lcom/facebook/f;->carrot_up_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    return-object v0
.end method

.method public isInHitRect(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 348
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move v0, v1

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 352
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 353
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    const/4 v1, 0x1

    .line 358
    :cond_0
    return v1

    .line 349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isRemoveButtonVisible()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsVisible:Z

    return v0
.end method

.method public layoutBubble()V
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 304
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->isRemoveButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getMeasuredWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDrawBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/instagram/android/people/widget/PeopleTagView;->REMOVE_BUTTON_LABEL_OFFSET:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 291
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 174
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 175
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagView;->setMeasuredDimension(II)V

    .line 183
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getMeasuredWidth()I

    move-result v0

    .line 184
    iget v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    if-eq v1, v0, :cond_1

    .line 185
    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->updateSize(I)V

    .line 187
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 134
    iget-boolean v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mHasOnClickListener:Z

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/instagram/android/people/widget/PeopleTagView;->isInHitRect(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 137
    iput-boolean v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsMotionEventOwner:Z

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0, p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->isObscured(Lcom/instagram/android/people/widget/PeopleTagView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->bringToFront()V

    .line 145
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->invalidate()V

    :cond_1
    :goto_1
    move v0, v1

    .line 162
    :cond_2
    :goto_2
    return v0

    .line 138
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 139
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsMotionEventOwner:Z

    .line 140
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->setPressed(Z)V

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 149
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagView;->setPressed(Z)V

    goto :goto_1

    .line 150
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 151
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    goto :goto_1

    .line 155
    :cond_6
    iget-boolean v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsMotionEventOwner:Z

    if-eqz v2, :cond_2

    .line 156
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->setPressed(Z)V

    .line 158
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsMotionEventOwner:Z

    move v0, v1

    .line 159
    goto :goto_2
.end method

.method public setNormalizedPosition(Landroid/graphics/PointF;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mNormalizedPosition:Landroid/graphics/PointF;

    .line 191
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mHasOnClickListener:Z

    .line 169
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagView;->adjustPositionForScreenBounds(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 234
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mNormalizedPosition:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->currentDimension:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 238
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->calculateNaiveBounds()V

    .line 239
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->getArrowXPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->centerOnX(I)V

    .line 240
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 211
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sub-int/2addr v0, v1

    .line 212
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mTagPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 213
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mBubbleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 214
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    add-int/2addr v2, v3

    sget v3, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->LIMIT_LEFT_RIGHT:I

    sub-int/2addr v0, v4

    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRealBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 218
    return-void
.end method

.method show(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mIsVisible:Z

    .line 344
    return-void
.end method

.method protected showDownArrowOnly()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    return-void
.end method

.method protected showUpArrowOnly()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mUpArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mDownArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    return-void
.end method

.method public toggleRemoveButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 325
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected wasRemoveButtonClicked(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagView;->isRemoveButtonVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    .line 365
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagView;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 367
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method
