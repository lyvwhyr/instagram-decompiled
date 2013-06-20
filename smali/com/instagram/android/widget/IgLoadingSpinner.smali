.class public Lcom/instagram/android/widget/IgLoadingSpinner;
.super Lcom/instagram/android/widget/IgAutoAnimationView;
.source "IgLoadingSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgAutoAnimationView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/instagram/android/widget/IgLoadingSpinner;->init()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/IgAutoAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/instagram/android/widget/IgLoadingSpinner;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/widget/IgAutoAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lcom/instagram/android/widget/IgLoadingSpinner;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgLoadingSpinner;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgLoadingSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgLoadingSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/f;->feedstate_spinner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgLoadingSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/widget/IgLoadingSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/widget/IgLoadingSpinner;->setMeasuredDimension(II)V

    .line 40
    return-void
.end method
