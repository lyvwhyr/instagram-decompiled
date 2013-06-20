.class public Lcom/instagram/android/widget/IgRotateAnimationView;
.super Landroid/widget/ImageView;
.source "IgRotateAnimationView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 30
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgRotateAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/b;->rotate_spinner:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 32
    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgRotateAnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 33
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 38
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgRotateAnimationView;->clearAnimation()V

    .line 39
    return-void
.end method
