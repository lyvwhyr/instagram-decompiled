.class public Lcom/instagram/android/people/widget/PeopleTagsLayout;
.super Landroid/view/ViewGroup;
.source "PeopleTagsLayout.java"


# static fields
.field private static final COVER_LIMIT:I


# instance fields
.field protected mFixOverlaps:Z

.field private mTagsLayoutListener:Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->COVER_LIMIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->mFixOverlaps:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->mFixOverlaps:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->mFixOverlaps:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setTagsLayoutListener(Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;)V

    return-void
.end method

.method private fixOverlaps()V
    .locals 11

    .prologue
    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getOverlaps()Ljava/util/List;

    move-result-object v0

    .line 201
    new-array v5, v1, [I

    .line 202
    new-array v6, v1, [I

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    new-instance v1, Lcom/instagram/android/people/widget/PeopleTagsLayout$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout$2;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    const/4 v1, -0x1

    aput v1, v6, v2

    move v1, v2

    .line 217
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 218
    invoke-direct {p0, v0, v1, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->spaceSubCluster(Ljava/util/List;II)[I

    move-result-object v3

    move-object v4, v3

    move v3, v1

    .line 221
    :goto_1
    aget v8, v4, v2

    aget v9, v6, v3

    if-ge v8, v9, :cond_1

    .line 222
    add-int/lit8 v3, v3, -0x1

    aget v3, v5, v3

    .line 223
    invoke-direct {p0, v0, v3, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->spaceSubCluster(Ljava/util/List;II)[I

    move-result-object v4

    goto :goto_1

    .line 226
    :cond_1
    add-int/lit8 v8, v1, 0x1

    aget v9, v4, v2

    const/4 v10, 0x1

    aget v4, v4, v10

    add-int/2addr v4, v9

    aput v4, v6, v8

    .line 227
    aput v3, v5, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_2
    return-void
.end method

.method private getOverlaps()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/widget/PeopleTagView;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 236
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 241
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v4

    .line 242
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v5, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 254
    add-int/lit8 v0, v1, 0x1

    :goto_1
    if-ge v0, v4, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/people/widget/PeopleTagView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/people/widget/PeopleTagView;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/people/widget/PeopleTagView;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_3
    return-object v2
.end method

.method private setTagsLayoutListener(Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->mTagsLayoutListener:Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;

    .line 362
    return-void
.end method

.method private spaceSubCluster(Ljava/util/List;II)[I
    .locals 9
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/widget/PeopleTagView;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, clutter:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/people/widget/PeopleTagView;>;"
    const/4 v4, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getMeasuredWidth()I

    move-result v2

    .line 271
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0, v4, v2}, Lcom/instagram/android/people/widget/PeopleTagView;->getMinXStart(II)I

    move-result v1

    .line 273
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagView;->getMaxXStart(I)I

    move-result v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getBubbleWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 276
    sub-int v3, v0, v1

    move v5, p2

    move v2, v4

    .line 278
    :goto_0
    if-gt v5, p3, :cond_0

    .line 279
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getBubbleWidth()I

    move-result v0

    add-int/2addr v2, v0

    .line 278
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 285
    :cond_0
    if-gt v2, v3, :cond_2

    .line 287
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getPreferredBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v1, v0, v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getPreferredBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 289
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getPreferredBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    move v1, v2

    .line 293
    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v4

    .line 298
    .end local p2
    :goto_2
    if-gt p2, p3, :cond_1

    .line 299
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagView;->getBubbleWidth()I

    move-result v0

    mul-int/2addr v0, v1

    div-int v6, v0, v2

    .line 300
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    add-int v7, v5, v3

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/instagram/android/people/widget/PeopleTagView;->centerOnX(I)V

    .line 301
    add-int v0, v3, v6

    .line 298
    add-int/lit8 p2, p2, 0x1

    move v3, v0

    goto :goto_2

    .line 304
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v5, v0, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0

    .restart local p2
    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method protected addPeopleTagView(Lcom/instagram/android/people/model/PeopleTag;Landroid/view/View$OnClickListener;)Lcom/instagram/android/people/widget/PeopleTagView;
    .locals 2
    .parameter "tag"
    .parameter "onClickTagListener"

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/instagram/android/people/model/PeopleTag;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/people/model/PeopleTag;->getPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->createTagView(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/PeopleTagView;->setTag(Ljava/lang/Object;)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {v0, p2}, Lcom/instagram/android/people/widget/PeopleTagView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->addView(Landroid/view/View;)V

    .line 70
    return-object v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagView;->setClickable(Z)V

    goto :goto_0
.end method

.method public animateOutAllViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 310
    :goto_0
    if-ge v0, v2, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->animateViewOut(Lcom/instagram/android/people/widget/PeopleTagView;)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 315
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 317
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 318
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 321
    :cond_1
    return-void
.end method

.method protected animateViewIn(Lcom/instagram/android/people/widget/PeopleTagView;Z)V
    .locals 7
    .parameter "view"
    .parameter "overshoot"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 345
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagView;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v3

    .line 346
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 347
    if-eqz p2, :cond_0

    .line 348
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 352
    :goto_0
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 353
    invoke-virtual {p1, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    return-void

    .line 350
    :cond_0
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method protected animateViewOut(Lcom/instagram/android/people/widget/PeopleTagView;)V
    .locals 7
    .parameter "view"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagView;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v3

    .line 326
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 327
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 328
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 330
    new-instance v1, Lcom/instagram/android/people/widget/PeopleTagsLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout$3;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/PeopleTagView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 341
    invoke-virtual {p1, v0}, Lcom/instagram/android/people/widget/PeopleTagView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 342
    return-void
.end method

.method protected createTagView(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/PeopleTagView;
    .locals 2
    .parameter "tagUsername"
    .parameter "normalizedPosition"

    .prologue
    .line 55
    new-instance v0, Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/PeopleTagView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0, p2}, Lcom/instagram/android/people/widget/PeopleTagView;->setNormalizedPosition(Landroid/graphics/PointF;)V

    .line 58
    return-object v0
.end method

.method protected getAbsolutePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5
    .parameter "normalizedPoint"

    .prologue
    const/4 v4, 0x1

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;
    .locals 1
    .parameter "index"

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    return-object v0
.end method

.method isObscured(Lcom/instagram/android/people/widget/PeopleTagView;)Z
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    move v1, v0

    .line 128
    :goto_0
    if-ge v1, v2, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 134
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagView;->getDrawingBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 135
    sget v4, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sget v5, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 136
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 137
    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v2, :cond_1

    .line 138
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/people/widget/PeopleTagView;->getDrawingBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    sget v5, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    sget v6, Lcom/instagram/android/people/widget/PeopleTagView;->BUBBLE_EXTERNAL_PADDING:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 141
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    sget v6, Lcom/instagram/android/people/widget/PeopleTagsLayout;->COVER_LIMIT:I

    if-lt v5, v6, :cond_3

    .line 143
    const/4 v0, 0x1

    .line 148
    :cond_1
    return v0

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 184
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->tagsUpdated()V

    .line 192
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->mTagsLayoutListener:Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->mTagsLayoutListener:Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;->onTagsLayout()V

    .line 195
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 159
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 161
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setMeasuredDimension(II)V

    .line 170
    return-void
.end method

.method public setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;)V
    .locals 2
    .parameter "tags"

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;Landroid/view/View$OnClickListener;Z)V

    .line 81
    return-void
.end method

.method public setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "tags"
    .parameter "onClickTagListener"

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;Landroid/view/View$OnClickListener;Z)V

    .line 85
    return-void
.end method

.method public setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;Landroid/view/View$OnClickListener;Z)V
    .locals 6
    .parameter "tags"
    .parameter "onClickTagListener"
    .parameter "animateTags"

    .prologue
    .line 91
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 93
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v4

    .line 94
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/instagram/android/people/model/PeopleTagCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/model/PeopleTag;

    .line 97
    invoke-virtual {p0, v0, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->addPeopleTagView(Lcom/instagram/android/people/model/PeopleTag;Landroid/view/View$OnClickListener;)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v1

    .line 98
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTag;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_1
    move-object v2, v0

    .line 103
    goto :goto_0

    .line 106
    :cond_0
    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v2}, Lcom/instagram/android/people/widget/PeopleTagView;->bringToFront()V

    .line 110
    :cond_1
    if-eqz p3, :cond_2

    .line 111
    new-instance v0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Ljava/util/LinkedList;Lcom/instagram/android/people/model/PeopleTagCollection;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setTagsLayoutListener(Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;)V

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->requestLayout()V

    .line 123
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method protected tagsUpdated()V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->mFixOverlaps:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->fixOverlaps()V

    .line 177
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getTagViewAt(I)Lcom/instagram/android/people/widget/PeopleTagView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagView;->layoutBubble()V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method
