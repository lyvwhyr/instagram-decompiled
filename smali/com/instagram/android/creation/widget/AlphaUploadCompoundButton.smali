.class public Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;
.super Lcom/instagram/android/creation/widget/UploadCompoundButton;
.source "AlphaUploadCompoundButton.java"


# instance fields
.field private mAlpha:I

.field private mManualAlphaSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/widget/UploadCompoundButton;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0xff

    iput v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mAlpha:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mManualAlphaSet:Z

    .line 20
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/widget/UploadCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/16 v0, 0xff

    iput v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mAlpha:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mManualAlphaSet:Z

    .line 25
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/creation/widget/UploadCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/16 v0, 0xff

    iput v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mAlpha:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mManualAlphaSet:Z

    .line 30
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setWillNotDraw(Z)V

    .line 35
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->initAlpha()V

    .line 36
    return-void
.end method

.method private initAlpha()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setDrawableStateAlpha(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setDrawableStateAlpha(I)V

    goto :goto_0
.end method

.method private setDrawableStateAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 50
    iput p1, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mAlpha:I

    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->invalidate()V

    .line 52
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/instagram/android/creation/widget/UploadCompoundButton;->drawableStateChanged()V

    .line 58
    iget-boolean v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mManualAlphaSet:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->initAlpha()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mAlpha:I

    const/4 v6, 0x4

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 75
    invoke-super {p0, p1}, Lcom/instagram/android/creation/widget/UploadCompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->mManualAlphaSet:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setDrawableStateAlpha(I)V

    .line 41
    return-void
.end method
