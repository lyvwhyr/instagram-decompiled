.class public Lcom/instagram/android/widget/LargeGrayButton;
.super Landroid/widget/Button;
.source "LargeGrayButton.java"


# static fields
.field public static final DX:F = 0.0f

.field public static final DY:F = 1.0f

.field public static final RADIUS:F = 0.1f


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/instagram/android/widget/LargeGrayButton;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/instagram/android/widget/LargeGrayButton;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/instagram/android/widget/LargeGrayButton;->init()V

    .line 31
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/widget/LargeGrayButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    sget v1, Lcom/facebook/f;->button_large_gray_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instagram/android/widget/LargeGrayButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    const v1, 0x3dcccccd

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    sget v4, Lcom/facebook/d;->white:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/instagram/android/widget/LargeGrayButton;->setShadowLayer(FFFI)V

    .line 37
    sget v1, Lcom/facebook/d;->dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LargeGrayButton;->setTextColor(I)V

    .line 38
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/instagram/android/widget/LargeGrayButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    sget v1, Lcom/facebook/d;->dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LargeGrayButton;->setTextColor(I)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    sget v1, Lcom/facebook/d;->light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/LargeGrayButton;->setTextColor(I)V

    goto :goto_0
.end method
